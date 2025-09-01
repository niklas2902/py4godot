# distutils: language=c++

def static_method(class_number: int, hash: int, args:tuple):
    return call_static_method(class_number, hash, args)

def constructor(int class_number, int constructor_number, tuple args):
    return call_constructor(class_number, constructor_number, args)

cdef class CPPWrapper:
    cdef call_without_return(self, int method_hash, tuple args_tuple):
        self._ptr.switch_call(method_hash, args_tuple)
    cdef call_with_return(self, int method_hash, tuple args_tuple):
        return self._ptr.switch_call_return(method_hash, args_tuple)
    cdef set_gdowner(self, void* godot_owner):
        pass
    @staticmethod
    cdef call_new(int class_number, int number, tuple args):
        return call_constructor(class_number, number, args)
    @staticmethod
    cdef call_static_method_with_return(int class_hash, int method_hash, tuple py_objects):
        return call_static_method(class_hash, method_hash, py_objects)
