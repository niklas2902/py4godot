from py4godot.godot_bindings.binding4_godot4 cimport *
cdef class Wrapper4(object):

    def set_property(self, name, value):
        setattr(self, name, value)
    def __del__(self):
        pass
        #TODO: fill this with life
        #if(self.godot_owner !=NULL):
            #Free space, if obtained
            #print("Free", self)
            #api_core.godot_free(self.godot_owner)
            #print("Free successfull")

    cdef object get_script(self):
        return get_script_holder().get_script(self.get_instance_id)