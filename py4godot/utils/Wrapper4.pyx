from py4godot.godot_bindings.binding4 cimport *
cdef class Wrapper4(object):

    def set_property(self, name, value):
        setattr(self, name, value)
    def __del__(self):
        print_ptr(self.godot_owner)
        #if(self.godot_owner !=NULL):
            #Free space, if obtained
            #print("Free", self)
            #api_core.godot_free(self.godot_owner)
            #print("Free successfull")