# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *

cdef extern from "py4godot/cppcore/Variant.h" namespace "godot":
    cdef cppclass Variant:
        GDExtensionVariantPtr native_ptr
        PyObject* get_converted_value(bint should_return_pystring)
        PyObject* get_converted_value_native_ptr(bint should_return_pystring)
        void init_from_py_object(PyObject* , const char* type_name)
        void init_from_py_object_native_ptr(PyObject* , const char* type_name)
        void construct_inner();
        void switch_native_and_inner()
cdef class PyVariant:
    cdef Variant variant
    cdef object get_converted_value(self, bint should_return_pystring)
    cdef object get_converted_value_native_ptr(self, bint should_return_pystring)
    cdef void init_from_py_object(self, object pyobject )
    cdef void init_from_py_object_native_ptr(self, object pyobject )

cdef object get_object_from_variant(Variant var)
cdef PyVariant create_variant_from_py_object(object pyobject)

cdef extern from "variant_utils.h":
    void destroy_variant(Variant& variant)
    void destroy_variant_native_ptr(Variant& variant)