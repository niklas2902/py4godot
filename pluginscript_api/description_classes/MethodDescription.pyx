from godot_api.binding_external cimport *
from classes.generated import *
from core.dictionary.Dictionary import *
from core.variant.Variant import *
from core.array.Array cimport Array
from core.string.String cimport String
from pluginscript_api.description_classes.PropertyDescription import *

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
    def __init__(self, name, args,return_, flags, rpc_mode, default_args=[]):
        self.name = name
        self.args = args
        self.return_ = return_
        self.flags = flags
        self.rpc_mode = rpc_mode
        self.default_args = default_args

    def to_dict(self):
        d = Dictionary()
        a = Array()
        for i in self.args:
            prop_desc = PropertyDescription("delta", 1.1, 0, "",0, 0,0)
            a.append(Variant(prop_desc.to_dict()))
        #a.append(Variant(Dictionary()))
        d.set(Variant(String("name")), Variant(String(self.name)))
        d.set(Variant(String("args")), Variant(a))
        d.set(Variant(String("default_args")), Variant(Array()))
        d.set(Variant(String("return")),Variant(Dictionary()))
        d.set(Variant(String("flags")), Variant(0))
        d.set(Variant(String("rpc_mode")),Variant(0))
        return d
