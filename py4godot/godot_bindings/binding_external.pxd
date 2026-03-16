# distutils: language=c++
from py4godot.godot_bindings.types cimport *
from cython import *
from cpython.ref cimport PyObject

cdef extern from "Python.h":
    cdef PyObject* PyUnicode_FromWideChar(const wchar_t *w, Py_ssize_t size);
    cdef wchar_t* PyUnicode_AsWideCharString(object, Py_ssize_t *) except NULL


cdef extern from "binding.h":

    cdef const godot_gdnative_core_api_struct *api_core;
    cdef godot_instance_binding_functions binding_funcs;
    cdef int language_index;
    void print_ptr(void* owner);

    struct godot_gdnative_core_api_struct:
        godot_method_bind *(*godot_method_bind_get_method)(const char *p_classname, const char *p_methodname)
        void (*godot_method_bind_ptrcall)(godot_method_bind *p_method_bind, godot_object *p_instance, const void **p_args, void *p_ret) nogil;
        godot_class_constructor (*godot_get_class_constructor)(const char *p_classname)
        godot_bool (*godot_aabb_intersects)(const godot_aabb *p_self, const godot_aabb *p_with)
        void (*godot_array_new)(godot_array *r_dest);
        void (*godot_dictionary_new)(godot_dictionary *r_dest);
        void (*godot_print_error)(const char *p_description, const char *p_function, const char *p_file, int p_line);
        void (*godot_print_warning)(const char *p_description, const char *p_function, const char *p_file, int p_line);
        void (*godot_print)(const godot_string *p_message);
        const wchar_t *(*godot_string_wide_str)(const godot_string *p_self);
        void (*godot_string_name_new)(godot_string_name *r_dest, const godot_string *p_name);
        void (*godot_string_name_new_data)(godot_string_name *r_dest, const char *p_name);
        godot_string (*godot_string_name_get_name)(const godot_string_name *p_self);
        uint32_t (*godot_string_name_get_hash)(const godot_string_name *p_self);
        const void *(*godot_string_name_get_data_unique_pointer)(const godot_string_name *p_self);
        godot_bool (*godot_string_name_operator_equal)(const godot_string_name *p_self, const godot_string_name *p_other);
        godot_bool (*godot_string_name_operator_less)(const godot_string_name *p_self, const godot_string_name *p_other);
        void (*godot_string_name_destroy)(godot_string_name *p_self);
        void (*godot_free)(void *p_ptr);
        godot_object* godot_global_get_singleton(char *p_name)
        godot_variant godot_method_bind_call(godot_method_bind *p_method_bind, godot_object *p_instance, const godot_variant **p_args, const int p_arg_count, godot_variant_call_error *p_call_error);
