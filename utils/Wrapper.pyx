from godot_api.binding cimport *
cdef class Wrapper(object):

    def set_property(self, name, value):
        setattr(self, name, value)