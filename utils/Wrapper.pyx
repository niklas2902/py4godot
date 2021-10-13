from godot_bindings.binding cimport *
cdef class Wrapper(object):

    def set_property(self, name, value):
        setattr(self, name, value)