import sys,os
import inspect, traceback
from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.pluginscript_api.utils.utils cimport *
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

cdef api TransferObject exec_class(str source_string, str class_name_):
    global  gd_class, properties, signals, methods,default_values, class_name, is_tool

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
        module_spec = importlib.util.spec_from_file_location(module_name, file_to_load)
        module = importlib.util.module_from_spec(module_spec)
        module_spec.loader.exec_module(module)
    except Exception as e:
        print_tools.print_error("exec_class: Exception happened:")
        bytes_class = py_class_name_.encode("utf-8")
        my_str_class = bytes_class
        print_tools.print_error(my_str_class)
        bytes_exception = (f"exec_class: Exception happened: {traceback.format_exc()}").encode("utf-8")
        my_str_exception = bytes_exception
        print_tools.print_error(my_str_exception)

    if gd_class == None:
        gd_class = Object

    for signal in signals:
        transfer_object.signals.push_back((<SignalDescription>signal).get_signal_dict().Dictionary_internal_class_ptr.get()[0])

    cdef GDExtensionPropertyInfo property_info
    for property in properties:
        (<PropertyDescription>property).class_name = py_c_string_to_string_name(class_name.encode("utf-8"))
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
        raise Exception(f"More than one class was marked as gd_class or gd_tool_class in one file ({current_class_name})")
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

def gdproperty(*args, ** kwargs):
    pass

def gdmethod(func):
    args = inspect.getfullargspec(func).args
    list_args = []
    #for arg in args:
    #    list_args.append(PropertyDescription(arg, None, BaseHint(),4096|6|32768, None))
    #methods.append(
    #MethodDescription(func.__name__,
    #PropertyDescription(name = "return", type_ = None, hint = BaseHint(),usage = 4096|6|32768, default_value =  None), 0,list_args, []))
    return func

def signal(name, list args = []):
    return
    description = SignalDescription(name, args)
    signals.append(description)