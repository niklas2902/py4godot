	#Property info dictionary format
	#{
	#name: <string>
	#type: <int:godot_variant_type>
	#hint: <int:godot_property_hint>
	#hint_string: <string>
	#usage: <int:godot_property_usage_flags>
	#default_value: <variant>
	#rset_mode: <int:godot_method_rpc_mode>
	#}

from core.dictionary.Dictionary import *
from core.string.String import *
from core.variant.Variant import *
from godot_api.binding_external cimport *

class PropertyDescription:
    def __init__(self, name,type_, hint, hint_string, usage, default_value, rset_mode):
        self.name = name
        self.type_ = type_
        self.hint = hint
        self.hint_string = hint_string
        self.usage = usage
        self.default_value = default_value
        self.rset_mode = rset_mode
    def to_dict(self):
        d = Dictionary()
        d.set(Variant(String("name")), Variant(String(self.name)))
        d.set(Variant(String("type")), Variant(self.type_))
        d.set(Variant(String("hint")), Variant(self.hint))
        d.set(Variant(String("hint_string")),Variant(self.hint_string))
        d.set(Variant(String("usage")), Variant(self.usage))
        d.set(Variant(String("default_value")), Variant(self.default_value))
        d.set(Variant(String("rset_mode")), Variant(self.rset_mode))
        return d
