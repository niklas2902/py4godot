# distutils: language=c++
def static_method(class_number: int, hash: int, args:tuple):
    return call_static_method(class_number, hash, args)

def constructor(int class_number, int constructor_number, tuple args):
    return call_constructor(class_number, constructor_number, args)

cdef class CPPWrapper:
    cpdef call_with_return(self, int method_hash, tuple args_tuple):
        raise Exception("call_with_return is not implemented")

    cdef bridge.Wrapper* get_ptr(self):
        raise Exception("get_ptr is not implemented")

    cpdef copy_gdowner(self, CPPWrapper other):
        cdef bridge.Wrapper* bridge_wrapper = (other.get_ptr())
        cdef bridge.Wrapper* self_wrapper = (self.get_ptr())

        self_wrapper.copy_owner(bridge_wrapper)

    cpdef bint is_null(self):
        cdef bridge.Wrapper * bridge_wrapper = self.get_ptr()
        return bridge_wrapper.get_godot_owner() == NULL

    @staticmethod
    cdef call_new(int class_number, int number, tuple args):
        return call_constructor(class_number, number, args)
    @staticmethod
    cdef call_static_method_with_return(int class_hash, int method_hash, tuple py_objects):
        return call_static_method(class_hash, method_hash, py_objects)
