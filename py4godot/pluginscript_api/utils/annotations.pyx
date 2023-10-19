import sys,os
import inspect, traceback
from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.pluginscript_api.utils.utils cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject

from py4godot.pluginscript_api.utils.SignalDescription cimport *
from py4godot.pluginscript_api.utils.PropertyDescription cimport *
"""from py4godot.pluginscript_api.utils.MethodDescription cimport *
from py4godot.pluginscript_api.utils.SignalArg cimport *
"""
from importlib.machinery import SourceFileLoader

cdef api TransferObject exec_class(str source_string, str class_name_, GDExtensionInterface* main_interface):
    global  gd_class, properties, signals, methods,default_values, interface_ptr
    set_interface_ptr(main_interface)
    interface_ptr = main_interface

    cdef str py_source_string = source_string
    cdef str py_class_name_ = class_name_

    cdef TransferObject transfer_object = TransferObject()

    main_interface.print_error("exec_class: start", "test", "test",1,1)
    methods = []
    gd_class = None
    gd_tool_class = None
    properties = []
    signals = []
    methods = []
    default_values = []
    try:

        if py_class_name_.endswith("\\") or py_class_name_.endswith("/"):
            py_class_name_ = py_class_name_[:-1]
        main_interface.print_error("exec_class: try", "test", "test",1,1)
        module_name = py_class_name_.replace("res://", "").replace("/",".").replace(".py", "").replace("\\", ".")
        file_to_load = py_class_name_.replace("res://", "")
        module = SourceFileLoader(module_name,
        file_to_load).load_module()
        main_interface.print_error("exec_class: after load module", "test", "test",1,1)
    except Exception as e:
        main_interface.print_error("exec_class: Exception happened:", "test", "test",1,1)
        main_interface.print_error(py_class_name_.encode("utf-8"), "test", "test",1,1)
        main_interface.print_error(("exec_class: Exception happened:" + traceback.format_exc()).encode("utf-8"), "test", "test",1,1)
    for signal in signals:
        transfer_object.signals.push_back((<SignalDescription>signal).get_signal_dict().Dictionary_internal_class)

    cdef GDExtensionPropertyInfo property_info
    for property in properties:
        property_info = (<PropertyDescription>property).property_info
        transfer_object.properties.push_back(property_info)

    for default_value in default_values:
        Py_INCREF(default_value)
        transfer_object.default_values.push_back(<PyObject*>default_value)

    Py_INCREF(gd_class)
    transfer_object.class_ = <PyObject*>gd_class
    return transfer_object

def gdclass(cls):
    global gd_class
    if(gd_class == None):
        gd_class = cls
    else:
        raise Exception("More than one class was marked as gd_class or gd_tool_class in one file")
    return cls

def gdtool(cls):
        global gd_tool_class

        if(gd_tool_class == None):
            gd_tool_class = cls
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
    #for arg in args:
    #    list_args.append(PropertyDescription(arg, None, BaseHint(),4096|6|32768, None))
    #methods.append(
    #MethodDescription(func.__name__,
    #PropertyDescription(name = "return", type_ = None, hint = BaseHint(),usage = 4096|6|32768, default_value =  None), 0,list_args, []))
    return func

def signal(name, list args = []):
    interface_ptr.print_error("exec_class: start", "test", "test",1,1)
    description = SignalDescription(name, args)
    interface_ptr.print_error("before exec description", "test", "test",1,1)
    signals.append(description)