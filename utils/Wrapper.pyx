from godot_api.binding cimport *
cdef class Wrapper(object):

    def set_property(self, name, value):
        print("set_property:", name,"|",value)
        exec(f"self.{name} = value", globals(), locals())