from godot_api.binding cimport *
cdef class Wrapper(object):

    def set_property(self, name, value):
        print("set_property:", name)
        print(type(value))
        print(value)
        setattr(self, name, value)