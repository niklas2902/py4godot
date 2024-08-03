# distutils: language=c++
from cpython.ref cimport PyObject
from py4godot.godot_bindings.types cimport *


cdef extern from "Python.h":
    cdef PyObject* PyUnicode_FromWideChar(const wchar_t *w, Py_ssize_t size);
    cdef wchar_t* PyUnicode_AsWideCharString(object, Py_ssize_t *) except NULL
    cdef  PyObject* PyObject_Str(PyObject *o);

cdef extern from "binding.h":

    struct godot_gdnative_ext_nativescript_api_struct:
        void *(*godot_nativescript_get_userdata)(godot_object *p_instance)

    struct godot_gdnative_ext_nativescript_1_1_api_struct:
        void *(*godot_nativescript_get_instance_binding_data)(int p_idx, godot_object *p_object)
        void godot_nativescript_set_global_type_tag(int p_idx, const char *p_name, const void *p_type_tag);
        void godot_nativescript_register_class(void *p_gdnative_handle, const char *p_name, const char *p_base, godot_instance_create_func p_create_func, godot_instance_destroy_func p_destroy_func);


    const godot_gdnative_ext_nativescript_api_struct *nativescript_api
    const godot_gdnative_ext_nativescript_1_1_api_struct *nativescript_api_11

    godot_object *_owner

