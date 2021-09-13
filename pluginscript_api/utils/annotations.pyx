from functools import wraps
from core.variant.Variant cimport *
from godot_api.binding_external cimport *
from pluginscript_api.description_classes.MethodDescription import MethodDescription
from pluginscript_api.description_classes.PropertyDescription import PropertyDescription

methods = []
classes = []
properties = []

#TODO: look for methods to improve behavior (cdef reset?)
def reset():
    global methods, classes, properties
    methods = []
    classes = []
    properties = []

def gdclass(func):
    classes.append(func)

def gdproperty(type, defaultval, hint= None, hint_string = ""):
    class gdprop(property):
        def __init__(self,fget=None, fset=None, fdel=None, doc=None):
            if(not fget == None and fset == None and fdel == None and doc == None):
                properties.append(PropertyDescription(name = fget.__name__,
                type_=godot_variant_type.GODOT_VARIANT_TYPE_INT,
                hint= hint,
                hint_string=hint_string,usage=godot_property_usage_flags. GODOT_PROPERTY_USAGE_DEFAULT,
                default_value=defaultval, rset_mode=godot_method_rpc_mode.GODOT_METHOD_RPC_MODE_DISABLED))
            super().__init__(fget, fset, fdel,doc)
    return gdprop


def gdmethod(func):
    methods.append(MethodDescription(func.__name__, None, None, None, 0,GODOT_METHOD_RPC_MODE_DISABLED))