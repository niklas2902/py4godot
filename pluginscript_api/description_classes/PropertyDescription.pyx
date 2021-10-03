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
from core.variant.Variant cimport godot_variant_type
from core.color.Color cimport Color
from core.vector3.Vector3 cimport Vector3
from godot_api.binding_external cimport *
from classes.generated import *

type_hint_map = {int: GODOT_PROPERTY_HINT_RANGE, SpriteFrames:GODOT_PROPERTY_HINT_SPRITE_FRAME,
TextFile:GODOT_PROPERTY_HINT_FILE, Resource:GODOT_PROPERTY_HINT_RESOURCE_TYPE,
String: GODOT_PROPERTY_HINT_TYPE_STRING, Vector3:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE}

type_variant_type_map = {int:GODOT_VARIANT_TYPE_INT, Vector3:7}

def transform_type(type_):
    if(type_ in type_variant_type_map):
        return type_variant_type_map[type_]
    return
class PropertyDescription:
    def __init__(self, name,type_, hint, hint_string, usage, default_value, rset_mode):
        self.name = name
        self.type_ = transform_type(type_)
        self.hint = hint
        if(hint == None):
            print("----------------------------check_hint-------------------------------")
            if(type_ in type_hint_map):
                print("----------------------------checked hint_map=True-------------------------------")
                self.hint = type_hint_map[type_]
            else:
                self.hint = GODOT_PROPERTY_HINT_NONE
        self.hint_string = hint_string
        self.usage = usage
        self.default_value = default_value
        self.rset_mode = rset_mode
    def to_dict(self):
        print("----------to_dict:",self.name,"|", self.type_,"|", self.hint)
        d = Dictionary()
        d.set(Variant(String("name")), Variant(String(self.name)))
        d.set(Variant(String("type")), Variant(self.type_))
        d.set(Variant(String("hint")), Variant(self.hint))
        d.set(Variant(String("hint_string")),Variant(self.hint_string))
        d.set(Variant(String("usage")), Variant(self.usage))
        d.set(Variant(String("default_value")), Variant(self.default_value))
        d.set(Variant(String("rset_mode")), Variant(self.rset_mode))
        return d
