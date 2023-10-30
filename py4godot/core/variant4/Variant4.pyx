cdef class PyVariant:
    cdef object get_converted_value(self, bint should_return_pystring):
        return <object>self.variant.get_converted_value(should_return_pystring)
    cdef void init_from_py_object(self, object pyobject):
        self.variant.init_from_py_object(<PyObject*>pyobject, str(type(pyobject).__name__).encode("utf-8"))

cdef PyVariant create_variant_from_py_object(object pyobject):
    cdef PyVariant pyvariant = PyVariant()
    pyvariant.variant.construct_inner()
    pyvariant.init_from_py_object(pyobject)
    pyvariant.variant.switch_native_and_inner()
    return pyvariant

cdef object get_object_from_variant(Variant var):
    #var.native_ptr = var.
    return <object>(var.get_converted_value(True))