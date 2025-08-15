cdef class CPPWrapper:
    cdef call_without_return(self, int method_hash, tuple args_tuple):
        self._ptr.switch_call(method_hash, args_tuple)
    cdef call_with_return(self, int method_hash, tuple args_tuple):
        return self._ptr.switch_call_return(method_hash, args_tuple)


    @staticmethod
    cdef call_static_method_with_return(int class_hash, int method_hash, list py_objects):
        pass #TODO minize: Implement this. Do a c method which switches for everything
