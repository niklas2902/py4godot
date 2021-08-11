from godot_api.binding cimport *
from cython import *
from cpython.ref cimport PyObject

cdef extern from "Python.h":
    cdef PyObject* PyUnicode_FromWideChar(const wchar_t *w, Py_ssize_t size);
    cdef wchar_t* PyUnicode_AsWideCharString(object, Py_ssize_t *)


cdef extern from "binding.h":

    cdef const godot_gdnative_core_api_struct *api_core;

    ctypedef struct godot_string:
        uint8_t _dont_touch_that[1];

    void hello(const char *name)
    godot_variant simple_get_data(godot_object *p_instance, void *p_method_data, void *p_user_data, int p_num_args, godot_variant **p_args)

    ctypedef unsigned char      uint8_t

    ctypedef struct godot_string_name:
        uint8_t _dont_touch_that[1]


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
    ctypedef enum godot_variant_call_error_error:
        GODOT_CALL_ERROR_CALL_OK,
        GODOT_CALL_ERROR_CALL_ERROR_INVALID_METHOD,
        GODOT_CALL_ERROR_CALL_ERROR_INVALID_ARGUMENT,
        GODOT_CALL_ERROR_CALL_ERROR_TOO_MANY_ARGUMENTS,
        GODOT_CALL_ERROR_CALL_ERROR_TOO_FEW_ARGUMENTS,
        GODOT_CALL_ERROR_CALL_ERROR_INSTANCE_IS_NULL

    ctypedef enum godot_variant_type:
        GODOT_VARIANT_TYPE_NIL,

        # atomic types
        GODOT_VARIANT_TYPE_BOOL,
        GODOT_VARIANT_TYPE_INT,
        GODOT_VARIANT_TYPE_REAL,
        GODOT_VARIANT_TYPE_STRING,

        # math types

        GODOT_VARIANT_TYPE_VECTOR2, # 5
        GODOT_VARIANT_TYPE_RECT2,
        GODOT_VARIANT_TYPE_VECTOR3,
        GODOT_VARIANT_TYPE_TRANSFORM2D,
        GODOT_VARIANT_TYPE_PLANE,
        GODOT_VARIANT_TYPE_QUAT, # 10
        GODOT_VARIANT_TYPE_AABB,
        GODOT_VARIANT_TYPE_BASIS,
        GODOT_VARIANT_TYPE_TRANSFORM,

        # misc types
        GODOT_VARIANT_TYPE_COLOR,
        GODOT_VARIANT_TYPE_NODE_PATH, # 15
        GODOT_VARIANT_TYPE_RID,
        GODOT_VARIANT_TYPE_OBJECT,
        GODOT_VARIANT_TYPE_DICTIONARY,
        GODOT_VARIANT_TYPE_ARRAY, # 20

        # arrays
        GODOT_VARIANT_TYPE_POOL_BYTE_ARRAY,
        GODOT_VARIANT_TYPE_POOL_INT_ARRAY,
        GODOT_VARIANT_TYPE_POOL_REAL_ARRAY,
        GODOT_VARIANT_TYPE_POOL_STRING_ARRAY,
        GODOT_VARIANT_TYPE_POOL_VECTOR2_ARRAY, # 25
        GODOT_VARIANT_TYPE_POOL_VECTOR3_ARRAY,
        GODOT_VARIANT_TYPE_POOL_COLOR_ARRAY

    ctypedef struct godot_variant_call_error:
        godot_variant_call_error_error error
        int argument
        godot_variant_type expected

    struct godot_gdnative_core_api_struct:
        godot_method_bind *(*godot_method_bind_get_method)(const char *p_classname, const char *p_methodname)
        void (*godot_method_bind_ptrcall)(godot_method_bind *p_method_bind, godot_object *p_instance, const void **p_args, void *p_ret);
        godot_class_constructor (*godot_get_class_constructor)(const char *p_classname)
        godot_bool (*godot_aabb_intersects)(const godot_aabb *p_self, const godot_aabb *p_with)
        void (*godot_array_new)(godot_array *r_dest);
        void (*godot_dictionary_new)(godot_dictionary *r_dest);
        void (*godot_string_name_new)(godot_string_name *r_dest, const godot_string *p_name);
        void (*godot_string_name_new_data)(godot_string_name *r_dest, const char *p_name);
        void (*godot_print)(const godot_string *p_message);
        const wchar_t *(*godot_string_wide_str)(const godot_string *p_self);


    ctypedef enum godot_method_rpc_mode:
        GODOT_METHOD_RPC_MODE_DISABLED,
        GODOT_METHOD_RPC_MODE_REMOTE,
        GODOT_METHOD_RPC_MODE_MASTER,
        GODOT_METHOD_RPC_MODE_PUPPET,
        GODOT_METHOD_RPC_MODE_SLAVE = GODOT_METHOD_RPC_MODE_PUPPET,
        GODOT_METHOD_RPC_MODE_REMOTESYNC,
        GODOT_METHOD_RPC_MODE_SYNC = GODOT_METHOD_RPC_MODE_REMOTESYNC,
        GODOT_METHOD_RPC_MODE_MASTERSYNC,
        GODOT_METHOD_RPC_MODE_PUPPETSYNC


    ctypedef enum godot_property_hint:
        GODOT_PROPERTY_HINT_NONE, #< no hint provided.
        GODOT_PROPERTY_HINT_RANGE, #< hint_text = "min,max,step,slider; #slider is optional"
        GODOT_PROPERTY_HINT_EXP_RANGE, #< hint_text = "min,max,step", exponential edit
        GODOT_PROPERTY_HINT_ENUM, #< hint_text= "val1,val2,val3,etc"
        GODOT_PROPERTY_HINT_EXP_EASING, # exponential easing function (Math::ease)
        GODOT_PROPERTY_HINT_LENGTH, #< hint_text= "length" (as integer)
        GODOT_PROPERTY_HINT_SPRITE_FRAME, # FIXME: Obsolete: drop whenever we can break compat
        GODOT_PROPERTY_HINT_KEY_ACCEL, #< hint_text= "length" (as integer)
        GODOT_PROPERTY_HINT_FLAGS, #< hint_text= "flag1,flag2,etc" (as bit flags)
        GODOT_PROPERTY_HINT_LAYERS_2D_RENDER,
        GODOT_PROPERTY_HINT_LAYERS_2D_PHYSICS,
        GODOT_PROPERTY_HINT_LAYERS_3D_RENDER,
        GODOT_PROPERTY_HINT_LAYERS_3D_PHYSICS,
        GODOT_PROPERTY_HINT_FILE, #< a file path must be passed, hint_text (optionally) is a filter "*.png,*.wav,*.doc,"
        GODOT_PROPERTY_HINT_DIR, #< a directory path must be passed
        GODOT_PROPERTY_HINT_GLOBAL_FILE, #< a file path must be passed, hint_text (optionally) is a filter "*.png,*.wav,*.doc,"
        GODOT_PROPERTY_HINT_GLOBAL_DIR, #< a directory path must be passed
        GODOT_PROPERTY_HINT_RESOURCE_TYPE, #< a resource object type
        GODOT_PROPERTY_HINT_MULTILINE_TEXT, #< used for string properties that can contain multiple lines
        GODOT_PROPERTY_HINT_PLACEHOLDER_TEXT, #< used to set a placeholder text for string properties
        GODOT_PROPERTY_HINT_COLOR_NO_ALPHA, #< used for ignoring alpha component when editing a color
        GODOT_PROPERTY_HINT_IMAGE_COMPRESS_LOSSY,
        GODOT_PROPERTY_HINT_IMAGE_COMPRESS_LOSSLESS,
        GODOT_PROPERTY_HINT_OBJECT_ID,
        GODOT_PROPERTY_HINT_TYPE_STRING, #< a type string, the hint is the base type to choose
        GODOT_PROPERTY_HINT_NODE_PATH_TO_EDITED_NODE, #< so something else can provide this (used in scripts)
        GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE, #< a method of a type
        GODOT_PROPERTY_HINT_METHOD_OF_BASE_TYPE, #< a method of a base type
        GODOT_PROPERTY_HINT_METHOD_OF_INSTANCE, #< a method of an instance
        GODOT_PROPERTY_HINT_METHOD_OF_SCRIPT, #< a method of a script & base
        GODOT_PROPERTY_HINT_PROPERTY_OF_VARIANT_TYPE, #< a property of a type
        GODOT_PROPERTY_HINT_PROPERTY_OF_BASE_TYPE, #< a property of a base type
        GODOT_PROPERTY_HINT_PROPERTY_OF_INSTANCE, #< a property of an instance
        GODOT_PROPERTY_HINT_PROPERTY_OF_SCRIPT, #< a property of a script & base
        GODOT_PROPERTY_HINT_MAX

    ctypedef enum godot_property_usage_flags:

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