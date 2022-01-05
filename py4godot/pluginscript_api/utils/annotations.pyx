from py4godot.core.variant.Variant cimport *
from py4godot.godot_bindings.binding_external cimport *
from py4godot.pluginscript_api.description_classes.MethodDescription import MethodDescription
from py4godot.pluginscript_api.description_classes.PropertyDescription import PropertyDescription
from py4godot.enums.enums cimport *

import sys,os
import inspect

"""annotations used to define all the godot members"""
methods = []
classes_list = []
properties = []
signals = []

def reset():
    global methods, classes_list, properties, signals
    methods.clear()
    classes_list.clear()
    properties.clear()
    signals.clear()

def gdclass(func):
    classes_list.append(func)

def gdproperty(type_, defaultval, hint= None, hint_string = ""):
    class gdprop(property):
        def __init__(self,fget=None, fset=None, fdel=None, doc=None):
            if(not fget == None and fset == None and fdel == None and doc == None):
                properties.append(PropertyDescription(name = fget.__name__,
                type_=type_,
                hint= hint,
                hint_string=hint_string,usage=godot_property_usage_flags. GODOT_PROPERTY_USAGE_DEFAULT,
                default_value=defaultval, rset_mode=godot_method_rpc_mode.GODOT_METHOD_RPC_MODE_DISABLED))
            super().__init__(fget, fset, fdel,doc)
    return gdprop


def gdmethod(func):
    methods.append(MethodDescription(func.__name__, inspect.getfullargspec(func).args, None, None, 0,GODOT_METHOD_RPC_MODE_DISABLED))
    return func

def register_signal(signal_name):
    signals.append(MethodDescription(signal_name, [], None, None, 0,GODOT_METHOD_RPC_MODE_DISABLED))