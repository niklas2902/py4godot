from py4godot.classes.cpp_bridge cimport*

cdef class CPPWrapper:
    cdef call_without_return(self, int method_hash, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6)
    cdef call_with_return(self, int method_hash, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6)
    cdef call_new(self, int number, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6)

    @staticmethod
    cdef call_static_method_with_return(int method_hash, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6)
#cdef class CPPVector3Wrapper(CPPWrapper):
#    cdef shared_ptr[Vector3] _ptr