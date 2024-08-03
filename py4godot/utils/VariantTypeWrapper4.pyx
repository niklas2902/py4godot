# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.utils.print_tools import *
cdef class VariantTypeWrapper4(object):
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