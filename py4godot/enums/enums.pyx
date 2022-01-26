from enum import Enum, auto
class PropertyHint(Enum):
        GODOT_PROPERTY_HINT_NONE = 0 #< no hint provided.
        GODOT_PROPERTY_HINT_RANGE = auto() #< hint_text = "min,max,step,slider; #slider is optional"
        GODOT_PROPERTY_HINT_EXP_RANGE = auto() #< hint_text = "min,max,step", exponential edit
        GODOT_PROPERTY_HINT_ENUM = auto() #< hint_text= "val1,val2,val3,etc"
        GODOT_PROPERTY_HINT_EXP_EASING = auto() # exponential easing function (Math::ease)
        GODOT_PROPERTY_HINT_LENGTH = auto() #< hint_text= "length" (as integer)
        GODOT_PROPERTY_HINT_SPRITE_FRAME = auto() # FIXME: Obsolete: drop whenever we can break compat
        GODOT_PROPERTY_HINT_KEY_ACCEL = auto() #< hint_text= "length" (as integer)
        GODOT_PROPERTY_HINT_FLAGS = auto() #< hint_text= "flag1,flag2,etc" (as bit flags)
        GODOT_PROPERTY_HINT_LAYERS_2D_RENDER = auto()
        GODOT_PROPERTY_HINT_LAYERS_2D_PHYSICS = auto()
        GODOT_PROPERTY_HINT_LAYERS_3D_RENDER = auto()
        GODOT_PROPERTY_HINT_LAYERS_3D_PHYSICS = auto()
        GODOT_PROPERTY_HINT_FILE = auto() #< a file path must be passed, hint_text (optionally) is a filter "*.png,*.wav,*.doc,"
        GODOT_PROPERTY_HINT_DIR = auto() #< a directory path must be passed
        GODOT_PROPERTY_HINT_GLOBAL_FILE = auto() #< a file path must be passed, hint_text (optionally) is a filter "*.png,*.wav,*.doc,"
        GODOT_PROPERTY_HINT_GLOBAL_DIR = auto() #< a directory path must be passed
        GODOT_PROPERTY_HINT_RESOURCE_TYPE = auto() #< a resource object type
        GODOT_PROPERTY_HINT_MULTILINE_TEXT = auto() #< used for string properties that can contain multiple lines
        GODOT_PROPERTY_HINT_PLACEHOLDER_TEXT = auto() #< used to set a placeholder text for string properties
        GODOT_PROPERTY_HINT_COLOR_NO_ALPHA = auto() #< used for ignoring alpha component when editing a color
        GODOT_PROPERTY_HINT_IMAGE_COMPRESS_LOSSY = auto()
        GODOT_PROPERTY_HINT_IMAGE_COMPRESS_LOSSLESS = auto()
        GODOT_PROPERTY_HINT_OBJECT_ID = auto()
        GODOT_PROPERTY_HINT_TYPE_STRING = auto() #< a type string, the hint is the base type to choose
        GODOT_PROPERTY_HINT_NODE_PATH_TO_EDITED_NODE = auto() #< so something else can provide this (used in scripts)
        GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE = auto() #< a method of a type
        GODOT_PROPERTY_HINT_METHOD_OF_BASE_TYPE = auto() #< a method of a base type
        GODOT_PROPERTY_HINT_METHOD_OF_INSTANCE = auto() #< a method of an instance
        GODOT_PROPERTY_HINT_METHOD_OF_SCRIPT = auto() #< a method of a script & base
        GODOT_PROPERTY_HINT_PROPERTY_OF_VARIANT_TYPE = auto() #< a property of a type
        GODOT_PROPERTY_HINT_PROPERTY_OF_BASE_TYPE = auto() #< a property of a base type
        GODOT_PROPERTY_HINT_PROPERTY_OF_INSTANCE = auto() #< a property of an instance
        GODOT_PROPERTY_HINT_PROPERTY_OF_SCRIPT = auto() #< a property of a script & base
        GODOT_PROPERTY_HINT_MAX = auto()


class Variant_Type(Enum):
    NIL = 0
    # atomic types
    BOOL = auto()
    INT = auto()
    REAL = auto()
    STRING = auto()

    # math types

    VECTOR2 = auto() # 5
    RECT2 = auto()
    VECTOR3 = auto()
    TRANSFORM2D = auto()
    PLANE = auto()
    QUAT = auto() # 10
    RECT3 = auto() #sorry naming convention fail :( not like it's used often
    BASIS = auto()
    TRANSFORM = auto()

    # misc types
    COLOR = auto()
    NODE_PATH = auto() # 15
    _RID = auto()
    OBJECT = auto()
    DICTIONARY = auto()
    ARRAY = auto()

    # arrays
    POOL_BYTE_ARRAY = auto() # 20
    POOL_INT_ARRAY = auto()
    POOL_REAL_ARRAY = auto()
    POOL_STRING_ARRAY = auto()
    POOL_VECTOR2_ARRAY = auto()
    POOL_VECTOR3_ARRAY = auto() # 25
    POOL_COLOR_ARRAY = auto()

    VARIANT_MAX = auto()

class Vector3_Axis(Enum):
    X = 0
    Y = auto()
    Z = auto()