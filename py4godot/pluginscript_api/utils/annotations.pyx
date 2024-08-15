# distutils: language=c++
import sys,os
import inspect, traceback
from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.pluginscript_api.utils.utils cimport *

from py4godot.pluginscript_api.utils.MethodDescription cimport MethodDescription
from py4godot.utils.utils cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject

from py4godot.pluginscript_api.utils.SignalDescription cimport *
from py4godot.pluginscript_api.utils.PropertyDescription cimport *
import py4godot.utils.print_tools as print_tools
from importlib.machinery import SourceFileLoader
from py4godot.classes.Node3D.Node3D cimport *
from py4godot.classes.Object.Object cimport *
import importlib
import importlib.util

class_name = ""
gd_class = None
is_tool = False
current_class_name = ""

def load_module(module_name, file_to_load):
    # Check if the module is already loaded
    if module_name in sys.modules:
        del sys.modules[module_name]

    module_spec = importlib.util.spec_from_file_location(module_name, file_to_load)
    if module_spec is None:
        raise FileNotFoundError(f"Cannot find the module file: {file_to_load}")
    module = importlib.util.module_from_spec(module_spec)
    module_spec.loader.exec_module(module)
    sys.modules[module_name] = module

    return sys.modules[module_name]

cdef api TransferObject exec_class(str source_string, str class_name_):
    global  gd_class, properties, signals, methods,default_values, class_name, is_tool, methods

    current_class_name = class_name_
    cdef str py_source_string = source_string
    cdef str py_class_name_ = class_name_

    cdef TransferObject transfer_object = TransferObject()

    methods = []
    gd_class = None
    is_tool = False
    properties = []
    signals = []
    methods = []
    default_values = []
    cdef char* my_str_class
    cdef char* my_str_exception
    cdef bytes bytes_class
    cdef bytes bytes_exception
    try:
        class_name = class_name_.split("/")[-1].replace(".py", "")
        if py_class_name_.endswith("\\") or py_class_name_.endswith("/"):
            py_class_name_ = py_class_name_[:-1]
        module_name = py_class_name_.replace("res://", "").replace("/",".").replace(".py", "").replace("\\", ".")
        file_to_load = py_class_name_.replace("res://", "")
        load_module(module_name, file_to_load)
    except Exception as e:
        print_tools.print_error("exec_class: Exception happened:")
        print_tools.print_error(f"class to load:{class_name_}")
        bytes_class = py_class_name_.encode("utf-8")
        my_str_class = bytes_class
        print_tools.print_error(my_str_class)
        print_tools.print_error(f"exec_class: Exception happened: {traceback.format_exc()}")

    for signal in signals:
        transfer_object.signals.push_back((<SignalDescription>signal).get_signal_dict().Dictionary_internal_class_ptr.get()[0])

    cdef GDExtensionMethodInfo method_info
    for method in methods:
        method_info = (<MethodDescription>method).method_info
        transfer_object.methods.push_back(method_info)
    cdef GDExtensionPropertyInfo property_info
    for property in properties:
        (<PropertyDescription>property).to_c()
        property_info = (<PropertyDescription>property).property_info
        transfer_object.properties.push_back(property_info)

    for default_value in default_values:
        Py_INCREF(default_value)
        transfer_object.default_values.push_back(<PyObject*>default_value)

    transfer_object.is_tool = is_tool
    Py_INCREF(gd_class)
    transfer_object.class_ = <PyObject*>gd_class
    return transfer_object

def gdclass(cls):
    global gd_class, is_tool

    cdef str global_class_name = "global class_name:"+ class_name
    cdef str __class__name = "cls.__name__:"+ cls.__name__
    if cls.__name__ != class_name:
        properties.clear()
        default_values.clear()
        return cls
    if(gd_class == None):
        gd_class = cls
        is_tool = False
    else:
        raise Exception(f"More than one class was marked as gd_class or gd_tool_class in one file ({current_class_name}, {gd_class}, {cls})")
    return cls

def gdtool(cls):
    global gd_class, is_tool

    cdef str global_class_name = "global class_name:"+ class_name
    cdef str __class__name = "cls.__name__:"+ cls.__name__
    if cls.__name__ != class_name:
        properties.clear()
        default_values.clear()
        return cls
    if(gd_class == None):
        gd_class = cls
        is_tool = True
    else:
        raise Exception("More than one class was marked as gd_class or gd_tool_class in one file")
    return cls

def prop(name,type_, defaultval, hint = BaseHint(), hint_string = ""):
    default_values.append(defaultval)
    properties.append(PropertyDescription(name = name,
                type_=type_,hint = hint,usage = 4096|6|32768,
                default_value=defaultval))

def gdmethod(func):
    args = inspect.getfullargspec(func).args
    list_args = []
    cdef PropertyDescription property_description
    for arg in args:
        property_description = PropertyDescription(name = arg,
                                                   type_=int,hint = BaseHint(),usage = 4096|6|32768,
                                                   default_value=None)
        property_description.to_c()
        list_args.append(property_description)
    methods.append(MethodDescription(func.__name__,None, 0, list_args,[]))
    return func

def signal(name, list args = []):
    description = SignalDescription(name, args)
    signals.append(description)