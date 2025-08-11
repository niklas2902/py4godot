from py4godot.classes.cpp_bridge cimport*

cdef class CPPWrapper:
    cdef call_without_return(self, int method_hash, list py_objects)
    cdef call_with_return(self, int method_hash, list py_objects)


#cdef class CPPVector3Wrapper(CPPWrapper):
#    cdef shared_ptr[Vector3] _ptr