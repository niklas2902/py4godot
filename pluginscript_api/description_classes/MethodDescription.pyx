from core.dictionary.Dictionary import *
from core.variant.Variant import *

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
        d.set(Variant("name"), Variant(self.name))
        d.set(Variant("args"), Variant(1))
        d.set(Variant("default_args"), Variant([Dictionary()]))
        d.set(Variant("return"),Variant(1))
        d.set(Variant("flags"), Variant(1))
        d.set(Variant("rpc_mode"), Variant(1))
        return d
