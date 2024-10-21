# distutils: language=c++
import sys,os
from typing import get_type_hints

import inspect, traceback
from py4godot.hints.BaseHint cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.pluginscript_api.utils.utils cimport *

from py4godot.pluginscript_api.utils.MethodDescription cimport MethodDescription
from py4godot.utils.utils cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject

from py4godot.pluginscript_api.utils.SignalDescription cimport *
from py4godot.pluginscript_api.utils.PropertyDescription cimport *
import py4godot.utils.print_tools as print_tools
from importlib.machinery import SourceFileLoader
from py4godot.classes.Node3D cimport *
from py4godot.classes.Object cimport *
import py4godot.classes.core
import importlib
import importlib.util
from libcpp.string cimport string
from collections import OrderedDict

class_name = ""
gd_class = None
is_tool = False
current_class_name = ""
cdef str class_icon = None
already_registered_property_names = []
already_registered_method_names = []
already_registered_signal_names = []

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

def get_class_attributes(cls):
    # Get type hints
    type_hints = get_type_hints(cls)

    # Get class variables
    class_vars = {key: value for key, value in vars(cls).items()
                  if not key.startswith('__') and not callable(value)}

    # Get the source code of the class
    source = inspect.getsource(cls)

    # Parse the source code to get the order of attributes
    lines = source.split('\n')
    attribute_order = []
    for line in lines:
        line = line.strip()
        if '=' in line and not line.startswith('def'):
            attribute_name = line.split('=')[0].strip()
            if ":" in attribute_name:
                attribute_name = attribute_name.split(":")[0].strip()
            if attribute_name not in attribute_order:
                attribute_order.append(attribute_name)
        elif ':' in line and not line.startswith('def'):
            attribute_name = line.split(':')[0].strip()
            if attribute_name not in attribute_order:
                attribute_order.append(attribute_name)

    # Combine type hints and class variables in the correct order
    attributes = OrderedDict()
    for key in attribute_order:
        if key in class_vars:
            attributes[key] = class_vars[key]
        elif key in type_hints:
            attributes[key] = type_hints[key]

    return attributes


def generate_default_val(type_):
    if type_ == type(0): return 0
    elif type_ == type(1.0): return 0.0
    elif type_ == type(""): return ""
    elif type_ == type(True): return False

    return type_.new0()

def is_class(type_):
    return type(int) == type(type_)

cdef accepted_types = {int, str, float, type(True)}
def type_is_accepted(type_to_accept):
    return type_to_accept in accepted_types or type_to_accept in py4godot.classes.core.core_classes


def collect_properties(cls):
    if cls is None:
        return

    potential_properties = get_class_attributes(cls)
    for potential_property in potential_properties.keys():
        if potential_property.startswith("_"): # We handle _ like private names
            continue
        if potential_property not in already_registered_property_names and potential_property not in already_registered_signal_names:
            if not is_class(potential_properties[potential_property]):
                if type_is_accepted(type(potential_properties[potential_property])):
                    prop(potential_property, type(potential_properties[potential_property]),
                         potential_properties[potential_property])
            else:
                if type_is_accepted(type(potential_properties[potential_property])):
                    prop(potential_property, potential_properties[potential_property],
                         generate_default_val(potential_properties[potential_property]))

def collect_methods(cls):
    if cls is None:
        return

    methods = methods = [func for name, func in inspect.getmembers(cls, predicate=inspect.isfunction)]
    for method in methods:
        if method not in already_registered_method_names:
            gdmethod(method)


cdef api TransferObject exec_class(str source_string, str class_name_):
    global  gd_class, properties, signals, methods,default_values, class_name, is_tool, methods, \
        already_registered_property_names, already_registered_method_names, already_registered_signal_names
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
    already_registered_property_names = []
    already_registered_method_names.clear()
    already_registered_signal_names.clear()
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
        collect_properties(gd_class)
        collect_methods(gd_class)
    except Exception as e:
        print_tools.print_error_detailed('annotations.pyx', 'exec_class', 164, "exec_class: Exception happened:") # !this gets generated print_error
        print_tools.print_error_detailed('annotations.pyx', 'exec_class', 165, f"class to load:{class_name_}") # !this gets generated print_error
        bytes_class = py_class_name_.encode("utf-8")
        my_str_class = bytes_class
        print_tools.print_error_detailed('annotations.pyx', 'exec_class', 168, my_str_class) # !this gets generated print_error
        print_tools.print_error_detailed('annotations.pyx', 'exec_class', 169, f"exec_class: Exception happened: {traceback.format_exc()}") # !this gets generated print_error

    cdef char* c_icon_path
    cdef bytes bytes_icon_path
    cdef string cpp_string
    if class_icon != None:
        bytes_icon_path = class_icon.encode("utf-8")
        c_icon_path = bytes_icon_path
        cpp_string = string(c_icon_path)
        transfer_object.icon_path = cpp_string
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

def gdclass(cls = None, icon=None):
    global gd_class, is_tool, class_icon

    def internal_decorator(cls):
        global gd_class, is_tool, class_icon
        cdef str global_class_name = "global class_name:"+ class_name
        cdef str __class__name = "cls.__name__:"+ cls.__name__
        if cls.__name__ != class_name:
            properties.clear()
            default_values.clear()
            return cls
        if(gd_class == None):
            gd_class = cls
            is_tool = False
            class_icon = icon
        else:
            raise Exception(f"More than one class was marked as gd_class or gd_tool_class in one file ({current_class_name}, {gd_class}, {cls})")
    if cls is not None:
        return internal_decorator(cls)
    return internal_decorator

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

def prop(name,type_, defaultval, hint = BaseHint()):
    already_registered_property_names.append(name)
    default_values.append(defaultval)
    properties.append(PropertyDescription(name = name,
                type_=type_,hint = hint,usage = 4096|6|32768,
                default_value=defaultval))

def gdmethod(func):
    global already_registered_method_names
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
    already_registered_method_names.append(func)
    return func

def private(func):
    already_registered_method_names.append(func)
    return func

def signal(name, list args = []):
    already_registered_signal_names.append(name)
    description = SignalDescription(name, args)
    signals.append(description)