from godot_api.binding cimport *

cdef extern from "binding.h":

    cdef const godot_gdnative_core_api_struct *api_core;

    void hello(const char *name)
    godot_variant simple_get_data(godot_object *p_instance, void *p_method_data, void *p_user_data, int p_num_args, godot_variant **p_args)

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

    struct godot_gdnative_core_api_struct:
        godot_method_bind *(*godot_method_bind_get_method)(const char *p_classname, const char *p_methodname)
        void (*godot_method_bind_ptrcall)(godot_method_bind *p_method_bind, godot_object *p_instance, const void **p_args, void *p_ret);
        godot_class_constructor (*godot_get_class_constructor)(const char *p_classname)
        godot_bool (*godot_aabb_intersects)(const godot_aabb *p_self, const godot_aabb *p_with)