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
from core.node_path.NodePath cimport NodePath
from core.aabb.AABB cimport AABB
from core.array.Array cimport Array
from core.basis.Basis cimport Basis
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from godot_bindings.binding_external cimport *
from classes.generated import *

type_hint_map = {
int: GODOT_PROPERTY_HINT_RANGE, SpriteFrames:GODOT_PROPERTY_HINT_SPRITE_FRAME,
TextFile:GODOT_PROPERTY_HINT_FILE, Resource:GODOT_PROPERTY_HINT_RESOURCE_TYPE,
String: GODOT_PROPERTY_HINT_TYPE_STRING,
Vector3:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
Vector2:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
NodePath:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
AABB:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
Array:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
Basis:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
Color:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
Plane:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
Quat:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
Rect2:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
RID:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
Transform:GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
}

type_variant_type_map = {
int:GODOT_VARIANT_TYPE_INT,
NodePath:GODOT_VARIANT_TYPE_NODE_PATH,
Vector2 : GODOT_VARIANT_TYPE_VECTOR2,
Vector3:GODOT_VARIANT_TYPE_VECTOR3,
AABB:GODOT_VARIANT_TYPE_AABB,
Array:GODOT_VARIANT_TYPE_ARRAY,
Basis:GODOT_VARIANT_TYPE_BASIS,
Color:GODOT_VARIANT_TYPE_COLOR,
Plane:GODOT_VARIANT_TYPE_PLANE,
Quat:GODOT_VARIANT_TYPE_QUAT,
Rect2:GODOT_VARIANT_TYPE_RECT2,
RID:GODOT_VARIANT_TYPE_RID,
Transform:GODOT_VARIANT_TYPE_TRANSFORM,
}

def transform_type(type_):
    if(type_ in type_variant_type_map):
        return type_variant_type_map[type_]
    return
class PropertyDescription:
    """"Description class for the properties, a gdclass can have and which can be found in the editor"""
    def __init__(self, name,type_, hint, hint_string, usage, default_value, rset_mode):
        self.name = name
        self.type_ = transform_type(type_)
        self.hint = hint
        if(hint == None):
            if(type_ in type_hint_map):
                self.hint = type_hint_map[type_]
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
