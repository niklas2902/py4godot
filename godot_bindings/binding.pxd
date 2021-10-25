from cpython.ref cimport PyObject
from godot_bindings.types cimport *


cdef extern from "Python.h":
    cdef PyObject* PyUnicode_FromWideChar(const wchar_t *w, Py_ssize_t size);
    cdef wchar_t* PyUnicode_AsWideCharString(object, Py_ssize_t *)
    cdef  PyObject* PyObject_Str(PyObject *o);

cdef extern from "binding.h":
    struct godot_gdnative_ext_nativescript_api_struct:
        void *(*godot_nativescript_get_userdata)(godot_object *p_instance)

    struct godot_gdnative_ext_nativescript_1_1_api_struct:
        void *(*godot_nativescript_get_instance_binding_data)(int p_idx, godot_object *p_object)


    const godot_gdnative_ext_nativescript_api_struct *nativescript_api
    const godot_gdnative_ext_nativescript_1_1_api_struct *nativescript_api_11



    godot_object *_owner

