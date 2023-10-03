import sys,os
import inspect, traceback
from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.pluginscript_api.utils.utils cimport *


from py4godot.pluginscript_api.utils.SignalDescription cimport *
"""from py4godot.pluginscript_api.utils.MethodDescription cimport *
from py4godot.pluginscript_api.utils.SignalArg cimport *
"""
from importlib.machinery import SourceFileLoader

class TransferObject():
    def __init__(self, gd_class, properties,signals, methods):
        self.gd_class = gd_class
        self.properties = properties
        self.signals = signals
        self.methods = methods

cdef api void exec_class(str source_string, str class_name_, GDExtensionInterface* main_interface):
    global  gd_class, properties, signals, methods, interface_ptr
    set_interface_ptr(main_interface)
    interface_ptr = main_interface

    cdef str py_source_string = source_string
    cdef str py_class_name_ = class_name_

    main_interface.print_error("exec_class: start", "test", "test",1,1)
    methods = []
    gd_class = None
    gd_tool_class = None
    properties = []
    signals = []
    methods = []
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
    #return TransferObject(gd_class, properties, signals, methods)

def gdclass(cls):
    global gd_class
    if(gd_class == None):
        gd_class = cls
        #print_error("class:", gd_class)
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
    pass
    #properties.append(PropertyDescription(name = name,
    #            type_=type_,hint = hint,usage = 4096|6|32768,
    #            default_value=defaultval))

def gdmethod(func):
    args = inspect.getfullargspec(func).args
    list_args = []
    #for arg in args:
    #    list_args.append(PropertyDescription(arg, None, BaseHint(),4096|6|32768, None))
    #methods.append(
    #MethodDescription(func.__name__,
    #PropertyDescription(name = "return", type_ = None, hint = BaseHint(),usage = 4096|6|32768, default_value =  None), 0,list_args, []))
    #return func

def signal(name, list args = []):
    interface_ptr.print_error("exec_class: start", "test", "test",1,1)
    description = SignalDescription(name, args)
    interface_ptr.print_error("before exec description", "test", "test",1,1)
    signals.append(description)