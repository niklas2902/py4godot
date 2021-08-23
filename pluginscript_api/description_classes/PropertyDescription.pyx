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

from core.dictionary.Dictionary cimport Dictionary
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.color.Color cimport Color
from godot_api.binding_external cimport *
from classes.generated import *

type_hint_map = {int: GODOT_PROPERTY_HINT_RANGE, SpriteFrames:GODOT_PROPERTY_HINT_SPRITE_FRAME,
TextFile:GODOT_PROPERTY_HINT_FILE, Resource:GODOT_PROPERTY_HINT_RESOURCE_TYPE,
String: GODOT_PROPERTY_HINT_TYPE_STRING}

class PropertyDescription:
    def __init__(self, name,type_, hint, hint_string, usage, default_value, rset_mode):
        self.name = name
        self.type_ = type_
        self.hint = hint
        if(hint == None):
            if(type_ in type_hint_map):
                self.hint = type_hint_map[hint]
            else:
                self.hint = GODOT_PROPERTY_HINT_NONE
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
