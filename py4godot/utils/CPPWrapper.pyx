cdef class CPPWrapper:
    cdef call_without_return(self, int method_hash, list py_objects):
        self._ptr.switch_call(method_hash, py_objects)
    cdef call_with_return(self, int method_hash, list py_objects):
        return self._ptr.switch_call_return(method_hash, py_objects)


#cdef class CPPVector3Wrapper(CPPWrapper):
#    pass