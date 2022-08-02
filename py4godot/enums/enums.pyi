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



ctypedef enum godot_error :
GODOT_OK = 0
GODOT_FAILED= 1
GODOT_ERR_UNAVAILABLE = 2
GODOT_ERR_UNCONFIGURED = 3
GODOT_ERR_UNAUTHORIZED = 4
GODOT_ERR_PARAMETER_RANGE_ERROR = 5
GODOT_ERR_OUT_OF_MEMORY = 6
GODOT_ERR_FILE_NOT_FOUND = 7
GODOT_ERR_FILE_BAD_DRIVE = 8
GODOT_ERR_FILE_BAD_PATH = 9
GODOT_ERR_FILE_NO_PERMISSION = 10
GODOT_ERR_FILE_ALREADY_IN_USE = 11
GODOT_ERR_FILE_CANT_OPEN = 12
GODOT_ERR_FILE_CANT_WRITE = 13
GODOT_ERR_FILE_CANT_READ = 14
GODOT_ERR_FILE_UNRECOGNIZED = 15
GODOT_ERR_FILE_CORRUPT = 16
GODOT_ERR_FILE_MISSING_DEPENDENCIES = 17
GODOT_ERR_FILE_EOF = 18
GODOT_ERR_CANT_OPEN = 19
GODOT_ERR_CANT_CREATE = 20
GODOT_ERR_QUERY_FAILED = 21
GODOT_ERR_ALREADY_IN_USE = 22
GODOT_ERR_LOCKED = 23
GODOT_ERR_TIMEOUT = 24
GODOT_ERR_CANT_CONNECT = 25
GODOT_ERR_CANT_RESOLVE = 26
GODOT_ERR_CONNECTION_ERROR = 27
GODOT_ERR_CANT_ACQUIRE_RESOURCE = 28
GODOT_ERR_CANT_FORK = 29
GODOT_ERR_INVALID_DATA = 30
GODOT_ERR_INVALID_PARAMETER = 31
GODOT_ERR_ALREADY_EXISTS = 32
GODOT_ERR_DOES_NOT_EXIST = 33
GODOT_ERR_DATABASE_CANT_READ = 34
GODOT_ERR_DATABASE_CANT_WRITE = 35
GODOT_ERR_COMPILATION_FAILED = 36
GODOT_ERR_METHOD_NOT_FOUND = 37
GODOT_ERR_LINK_FAILED = 38
GODOT_ERR_SCRIPT_FAILED = 39
GODOT_ERR_CYCLIC_LINK = 40
GODOT_ERR_INVALID_DECLARATION = 41
GODOT_ERR_DUPLICATE_SYMBOL = 42
GODOT_ERR_PARSE_ERROR = 43
GODOT_ERR_BUSY = 44
GODOT_ERR_SKIP = 45
GODOT_ERR_HELP = 46
GODOT_ERR_BUG = 46
GODOT_ERR_PRINTER_ON_FIRE = 47

###########################enums#######################################
class godot_variant_call_error_error:
GODOT_CALL_ERROR_CALL_OK = 0,
GODOT_CALL_ERROR_CALL_ERROR_INVALID_METHOD = 1,
GODOT_CALL_ERROR_CALL_ERROR_INVALID_ARGUMENT = 2,
GODOT_CALL_ERROR_CALL_ERROR_TOO_MANY_ARGUMENTS = 3,
GODOT_CALL_ERROR_CALL_ERROR_TOO_FEW_ARGUMENTS = 4,
GODOT_CALL_ERROR_CALL_ERROR_INSTANCE_IS_NULL = 5


class godot_method_rpc_mode:
    GODOT_METHOD_RPC_MODE_DISABLED = 0
    GODOT_METHOD_RPC_MODE_REMOTE= 1
    GODOT_METHOD_RPC_MODE_MASTER= 2
    GODOT_METHOD_RPC_MODE_PUPPET= 3
    GODOT_METHOD_RPC_MODE_SLAVE = 3
    GODOT_METHOD_RPC_MODE_REMOTESYNC= 4
    GODOT_METHOD_RPC_MODE_SYNC = 4
    GODOT_METHOD_RPC_MODE_MASTERSYNC = 5
    GODOT_METHOD_RPC_MODE_PUPPETSYNC = 6


class godot_property_hint:
    GODOT_PROPERTY_HINT_NONE = 0, #< no hint provided.
    GODOT_PROPERTY_HINT_RANGE = 1, #< hint_text = "min,max,step,slider; #slider is optional"
    GODOT_PROPERTY_HINT_EXP_RANGE = 2, #< hint_text = "min,max,step", exponential edit
    GODOT_PROPERTY_HINT_ENUM = 3, #< hint_text= "val1,val2,val3,etc"
    GODOT_PROPERTY_HINT_EXP_EASING = 4, # exponential easing function (Math::ease)
    GODOT_PROPERTY_HINT_LENGTH = 5, #< hint_text= "length" (as integer)
    GODOT_PROPERTY_HINT_SPRITE_FRAME = 6, # FIXME: Obsolete: drop whenever we can break compat
    GODOT_PROPERTY_HINT_KEY_ACCEL = 7, #< hint_text= "length" (as integer)
    GODOT_PROPERTY_HINT_FLAGS = 8, #< hint_text= "flag1,flag2,etc" (as bit flags)
    GODOT_PROPERTY_HINT_LAYERS_2D_RENDER = 9,
    GODOT_PROPERTY_HINT_LAYERS_2D_PHYSICS = 10,
    GODOT_PROPERTY_HINT_LAYERS_3D_RENDER = 11,
    GODOT_PROPERTY_HINT_LAYERS_3D_PHYSICS = 12,
    GODOT_PROPERTY_HINT_FILE = 13, #< a file path must be passed, hint_text (optionally) is a filter "*.png,*.wav,*.doc,"
    GODOT_PROPERTY_HINT_DIR = 14, #< a directory path must be passed
    GODOT_PROPERTY_HINT_GLOBAL_FILE = 15, #< a file path must be passed, hint_text (optionally) is a filter "*.png,*.wav,*.doc,"
    GODOT_PROPERTY_HINT_GLOBAL_DIR = 16, #< a directory path must be passed
    GODOT_PROPERTY_HINT_RESOURCE_TYPE = 17, #< a resource object type
    GODOT_PROPERTY_HINT_MULTILINE_TEXT = 18, #< used for string properties that can contain multiple lines
    GODOT_PROPERTY_HINT_PLACEHOLDER_TEXT = 19, #< used to set a placeholder text for string properties
    GODOT_PROPERTY_HINT_COLOR_NO_ALPHA = 20, #< used for ignoring alpha component when editing a color
    GODOT_PROPERTY_HINT_IMAGE_COMPRESS_LOSSY = 21,
    GODOT_PROPERTY_HINT_IMAGE_COMPRESS_LOSSLESS = 22,
    GODOT_PROPERTY_HINT_OBJECT_ID = 23,
    GODOT_PROPERTY_HINT_TYPE_STRING = 24, #< a type string, the hint is the base type to choose
    GODOT_PROPERTY_HINT_NODE_PATH_TO_EDITED_NODE = 25, #< so something else can provide this (used in scripts)
    GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE = 26, #< a method of a type
    GODOT_PROPERTY_HINT_METHOD_OF_BASE_TYPE = 27, #< a method of a base type
    GODOT_PROPERTY_HINT_METHOD_OF_INSTANCE = 28, #< a method of an instance
    GODOT_PROPERTY_HINT_METHOD_OF_SCRIPT = 29, #< a method of a script & base
    GODOT_PROPERTY_HINT_PROPERTY_OF_VARIANT_TYPE = 30, #< a property of a type
    GODOT_PROPERTY_HINT_PROPERTY_OF_BASE_TYPE = 31, #< a property of a base type
    GODOT_PROPERTY_HINT_PROPERTY_OF_INSTANCE = 32, #< a property of an instance
    GODOT_PROPERTY_HINT_PROPERTY_OF_SCRIPT = 33, #< a property of a script & base
    GODOT_PROPERTY_HINT_MAX = 33

class godot_property_usage_flags:

    GODOT_PROPERTY_USAGE_STORAGE = 1,
    GODOT_PROPERTY_USAGE_EDITOR = 2,
    GODOT_PROPERTY_USAGE_NETWORK = 4,
    GODOT_PROPERTY_USAGE_EDITOR_HELPER = 8,
    GODOT_PROPERTY_USAGE_CHECKABLE = 16, #used for editing global variables
    GODOT_PROPERTY_USAGE_CHECKED = 32, #used for editing global variables
    GODOT_PROPERTY_USAGE_INTERNATIONALIZED = 64, #hint for internationalized strings
    GODOT_PROPERTY_USAGE_GROUP = 128, #used for grouping props in the editor
    GODOT_PROPERTY_USAGE_CATEGORY = 256,
    GODOT_PROPERTY_USAGE_STORE_IF_NONZERO = 512, # FIXME: Obsolete: drop whenever we can break compat
    GODOT_PROPERTY_USAGE_STORE_IF_NONONE = 1024, # FIXME: Obsolete: drop whenever we can break compat
    GODOT_PROPERTY_USAGE_NO_INSTANCE_STATE = 2048,
    GODOT_PROPERTY_USAGE_RESTART_IF_CHANGED = 4096,
    GODOT_PROPERTY_USAGE_SCRIPT_VARIABLE = 8192,
    GODOT_PROPERTY_USAGE_STORE_IF_NULL = 16384,
    GODOT_PROPERTY_USAGE_ANIMATE_AS_TRIGGER = 32768,
    GODOT_PROPERTY_USAGE_UPDATE_ALL_IF_MODIFIED = 65536,

    GODOT_PROPERTY_USAGE_DEFAULT = GODOT_PROPERTY_USAGE_STORAGE | GODOT_PROPERTY_USAGE_EDITOR | GODOT_PROPERTY_USAGE_NETWORK,
    GODOT_PROPERTY_USAGE_DEFAULT_INTL = GODOT_PROPERTY_USAGE_STORAGE | GODOT_PROPERTY_USAGE_EDITOR | GODOT_PROPERTY_USAGE_NETWORK | GODOT_PROPERTY_USAGE_INTERNATIONALIZED,
    GODOT_PROPERTY_USAGE_NOEDITOR = GODOT_PROPERTY_USAGE_STORAGE | GODOT_PROPERTY_USAGE_NETWORK,

class godot_vector3_axis:
    GODOT_VECTOR3_AXIS_X = 0
    GODOT_VECTOR3_AXIS_Y = 1
    GODOT_VECTOR3_AXIS_Z = 2
