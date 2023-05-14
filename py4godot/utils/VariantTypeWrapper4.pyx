from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.utils.print_tools import *
cdef class VariantTypeWrapper4(object):
    def __cinit__(self, *args):
        #TODO: remove this weird *args. Else you get Assertions, which I dont't really understand :(
        #self.godot_owner = &self._opaque
        pass

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