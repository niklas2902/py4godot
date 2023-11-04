cdef class PyVariant:
    cdef object get_converted_value(self, bint should_return_pystring):
        return <object>self.variant.get_converted_value(should_return_pystring)
    cdef object get_converted_value_native_ptr(self, bint should_return_pystring):
        return <object>self.variant.get_converted_value_native_ptr(should_return_pystring)
    cdef void init_from_py_object(self, object pyobject):
        self.variant.init_from_py_object(<PyObject*>pyobject, str(type(pyobject).__name__).encode("utf-8"))
    cdef void init_from_py_object_native_ptr(self, object pyobject):
        self.variant.init_from_py_object_native_ptr(<PyObject*>pyobject, str(type(pyobject).__name__).encode("utf-8"))

cdef PyVariant create_variant_from_py_object(object pyobject):
    cdef PyVariant pyvariant = PyVariant()
    pyvariant.init_from_py_object_native_ptr(pyobject)
    return pyvariant

cdef object get_object_from_variant(Variant var):
    #var.native_ptr = var.
    return <object>(var.get_converted_value(True))