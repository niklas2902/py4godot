from py4godot.godot_bindings.binding4_godot4 cimport *

cdef extern from "py4godot/cppcore/Variant.h" namespace "godot":
    cdef cppclass Variant:
        GDExtensionVariantPtr native_ptr
        PyObject* get_converted_value()
        void init_from_py_object(PyObject* , const char* type_name)

cdef class PyVariant:
    cdef Variant variant