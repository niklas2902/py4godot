from libcpp cimport bool
from libc.stddef cimport wchar_t
from cpython.ref cimport PyObject


cdef extern from "Python.h":
    cdef PyObject* PyUnicode_FromWideChar(const wchar_t *w, Py_ssize_t size);
    cdef wchar_t* PyUnicode_AsWideCharString(object, Py_ssize_t *)
    cdef  PyObject* PyObject_Str(PyObject *o);

cdef extern from "binding.h":
    DEF array_size = 4 # Edit

    ################################### types#######################################
    ctypedef signed char        int8_t;
    ctypedef short              int16_t;
    ctypedef int                int32_t;
    ctypedef long long          int64_t;
    ctypedef unsigned char      uint8_t;
    ctypedef unsigned short     uint16_t;
    ctypedef unsigned int       uint32_t;
    ctypedef unsigned long long uint64_t;

    ctypedef signed char        int_least8_t;
    ctypedef short              int_least16_t;
    ctypedef int                int_least32_t;
    ctypedef long long          int_least64_t;
    ctypedef unsigned char      uint_least8_t;
    ctypedef unsigned short     uint_least16_t;
    ctypedef unsigned int       uint_least32_t;
    ctypedef unsigned long long uint_least64_t;

    ctypedef signed char        int_fast8_t;
    ctypedef int                int_fast16_t;
    ctypedef int                int_fast32_t;
    ctypedef long long          int_fast64_t;
    ctypedef unsigned char      uint_fast8_t;
    ctypedef unsigned int       uint_fast16_t;
    ctypedef unsigned int       uint_fast32_t;
    ctypedef unsigned long long uint_fast64_t;

    ctypedef long long          intmax_t;
    ctypedef unsigned long long uintmax_t;


    ctypedef float godot_real
    ctypedef int godot_int
    ctypedef bool godot_bool

    ctypedef void godot_object;
    ##################################c types########################################

    #Todo:Remove [1] arrays

    ctypedef struct godot_array:
        uint8_t _dont_touch_that[array_size]
    ctypedef struct godot_string:
        uint8_t _dont_touch_that[array_size];
    ctypedef struct godot_vector2:
        uint8_t _dont_touch_that[8]
    ctypedef struct godot_rect2:
        uint8_t _dont_touch_that[16];
    ctypedef struct godot_vector3:
        pass
    ctypedef struct godot_transform2d:
        uint8_t _dont_touch_that[24];
    ctypedef struct godot_plane:
        uint8_t _dont_touch_that[16];
    ctypedef struct godot_quat:
        uint8_t _dont_touch_that[16]
    ctypedef struct godot_aabb:
        uint8_t _dont_touch_that[24];
    ctypedef struct godot_basis:
        uint8_t _dont_touch_that[36]
    ctypedef struct godot_transform:
        uint8_t _dont_touch_that[48];
    ctypedef struct godot_color:
        uint8_t _dont_touch_that[16];
    ctypedef struct godot_node_path:
        uint8_t _dont_touch_that[array_size];
    ctypedef struct godot_rid:
        uint8_t _dont_touch_that[array_size];
    ctypedef struct godot_dictionary:
        uint8_t _dont_touch_that[array_size];
    ctypedef struct godot_pool_byte_array:
        uint8_t _dont_touch_that[array_size];
    ctypedef struct godot_pool_int_array:
        uint8_t _dont_touch_that[array_size];
    ctypedef struct godot_pool_real_array:
        uint8_t _dont_touch_that[array_size];
    ctypedef struct godot_pool_string_array:
        uint8_t _dont_touch_that[array_size];
    ctypedef struct godot_pool_color_array:
        uint8_t _dont_touch_that[array_size];
    ctypedef struct godot_pool_vector2_array:
        uint8_t _dont_touch_that[array_size];
    ctypedef struct godot_pool_vector3_array:
        uint8_t _dont_touch_that[array_size];
    ctypedef struct godot_string_name:
        uint8_t _dont_touch_that[1]

    ##############################pluginscript types#####################
    ctypedef void godot_pluginscript_script_data;
    ctypedef void godot_pluginscript_instance_data;
    ctypedef void godot_pluginscript_language_data;
    ctypedef struct godot_pluginscript_script_manifest:
        godot_pluginscript_script_data *data;
        godot_string_name name;
        godot_bool is_tool;
        godot_string_name base;
        godot_dictionary member_lines;
        godot_array methods;
        godot_array signals;
        godot_array properties;


    #############################method binding##########################
    ctypedef struct godot_variant:
        uint8_t _dont_touch_that[array_size+16];

    ctypedef struct godot_method_bind:
        uint8_t _dont_touch_that[1];
    ctypedef godot_object *(*godot_class_constructor)()


    void hello(const char *name)
    void new_variant(const char *test)
    #void new_variant(double test)
    void show_api()
    godot_variant simple_get_data(godot_object *p_instance, void *p_method_data, void *p_user_data, int p_num_args, godot_variant **p_args)


    struct godot_gdnative_ext_nativescript_api_struct:
        void *(*godot_nativescript_get_userdata)(godot_object *p_instance)

    struct godot_gdnative_ext_nativescript_1_1_api_struct:
        void *(*godot_nativescript_get_instance_binding_data)(int p_idx, godot_object *p_object)


    const godot_gdnative_ext_nativescript_api_struct *nativescript_api
    const godot_gdnative_ext_nativescript_1_1_api_struct *nativescript_api_11

    godot_object *_owner

