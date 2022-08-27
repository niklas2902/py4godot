from py4godot.godot_bindings.binding_external cimport *
from py4godot.classes.generated import *
from py4godot.core.dictionary.Dictionary import *
from py4godot.core.variant.Variant import *
from py4godot.core.array.Array cimport Array
from py4godot.core.string.String cimport String
from py4godot.pluginscript_api.description_classes.PropertyDescription import *
from py4godot.enums.enums cimport *
from py4godot.pluginscript_api.hints.BaseHint cimport *

#Method info dictionary format
#{
#name: <string>
#args: [<dict:property>]
#default_args: [<variant>]
#return: <dict:property>
#flags: <int>
#rpc_mode: <int:godot_method_rpc_mode>
#}

class MethodDescription:
    """"Description class for the methods, a gdclass can have"""
    def __init__(self, name, args,return_, flags, rpc_mode, default_args=[]):
        self.name = name
        self.args = args
        self.return_ = return_
        self.flags = flags
        self.rpc_mode = rpc_mode
        self.default_args = default_args

    def to_dict(self):
        d = Dictionary()
        dictionary_args = Dictionary()
        if(type(self.args) == type({})):
            for key in self.args:
                #Todo: improve this
                prop_desc = PropertyDescription(key, self.args[key], BaseHint(),
                godot_property_usage_flags.GODOT_PROPERTY_USAGE_DEFAULT, 0,0)
                d.set(String(key), prop_desc.to_dict())
        else:
            for element in self.args:
                #Todo: improve this
                prop_desc = PropertyDescription(element, None, BaseHint()
                ,godot_property_usage_flags.GODOT_PROPERTY_USAGE_DEFAULT, 0,0)
                d.set(String(element), prop_desc.to_dict())
        print("register_method:", self.args)

        d.set("name", self.name)
        d.set(String("args"), dictionary_args)
        d.set(String("default_args"), Array())
        d.set(String("return"),Dictionary())
        d.set(String("flags"), self.flags)
        d.set(String("rpc_mode"),self.rpc_mode)
        return d
