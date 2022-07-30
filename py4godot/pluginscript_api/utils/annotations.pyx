from py4godot.core.variant.Variant cimport *
from py4godot.godot_bindings.binding_external cimport *
from py4godot.pluginscript_api.description_classes.MethodDescription import MethodDescription
from py4godot.pluginscript_api.description_classes.PropertyDescription import PropertyDescription
from py4godot.enums.enums cimport *
from py4godot.pluginscript_api.hints.BaseHint cimport *

import sys,os
import inspect

"""annotations used to define all the godot members"""
"""methods = []
gd_class = None
gd_tool_class = None
properties = []
signals = []"""
class_name = ""

class TransferObject():
    def __init__(self, methods, gd_class, gd_tool_class, properties, signals):
        self.methods = methods
        self.gd_class = gd_class
        self.gd_tool_class = gd_tool_class
        self.properties = properties
        self.signals = signals

def exec_class(source_string, class_name_):
    global methods, gd_class, gd_tool_class, properties,signals, class_name
    methods = []
    gd_class = None
    gd_tool_class = None
    properties = []
    signals = []
    class_name = class_name_.split("/")[-1].replace(".py", "")
    exec(source_string, locals())
    return TransferObject(methods, gd_class, gd_tool_class, properties, signals)


def gdclass(cls):
        global gd_class
        if cls.__name__ != class_name:
            return cls

        if(gd_class == None):
            gd_class = cls
        else:
            raise Exception("More than one class was marked as gd_class or gd_tool_class in one file")
        return cls

def gdtool(cls):
        global gd_tool_class
        if cls.__name__ != class_name:
            return cls

        if(gd_tool_class == None):
            gd_tool_class = cls
        else:
            raise Exception("More than one class was marked as gd_class or gd_tool_class in one file")
        return cls

def prop(name,type_, defaultval, hint = BaseHint(), hint_string = ""):
    properties.append(PropertyDescription(name = name,
                type_=type_,hint = hint,usage = godot_property_usage_flags.GODOT_PROPERTY_USAGE_DEFAULT,
                default_value=defaultval, rset_mode=godot_method_rpc_mode.GODOT_METHOD_RPC_MODE_DISABLED))

def gdproperty(type_, defaultval, hint = BaseHint(), hint_string = ""):
    class gdprop(property):
        def __init__(self,fget=None, fset=None, fdel=None, doc=None):
            if(not fget == None and fset == None and fdel == None and doc == None):
                properties.append(PropertyDescription(name = fget.__name__,
                type_=type_,hint = hint,usage = godot_property_usage_flags.GODOT_PROPERTY_USAGE_DEFAULT,
                default_value=defaultval, rset_mode=godot_method_rpc_mode.GODOT_METHOD_RPC_MODE_DISABLED))
            super().__init__(fget, fset, fdel,doc)
    return gdprop


def gdmethod(func):
    methods.append(MethodDescription(func.__name__, inspect.getfullargspec(func).args, None, None, 0,GODOT_METHOD_RPC_MODE_DISABLED))
    return func

def register_signal(signal_name, args = dict()):
    signals.append(MethodDescription(signal_name, args, None, None, 0,GODOT_METHOD_RPC_MODE_DISABLED))