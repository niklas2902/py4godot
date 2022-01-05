from py4godot.godot_bindings.binding_external cimport *
cdef class Wrapper(object):

    def set_property(self, name, value):
        setattr(self, name, value)
    def __del__(self):
        print_ptr(self.godot_owner)
        if(self.godot_owner !=NULL):
            pass
            #Free space, if obtained
            #print("Free", self)
            #api_core.godot_free(self.godot_owner)
            #print("Free successfull")