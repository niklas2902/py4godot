from classes.Joint2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_pinjoint2d_get_softness
cdef godot_method_bind *bind_pinjoint2d_set_softness
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_pinjoint2d_get_softness = api_core.godot_method_bind_get_method('PinJoint2D', 'get_softness')
  bind_pinjoint2d_set_softness = api_core.godot_method_bind_get_method('PinJoint2D', 'set_softness')

############################Generated class###################################
cdef class PinJoint2D(Joint2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PinJoint2D")())
##################################Generated Properties#########################################
  @property
  def softness(self): 
    return self.get_softness()
  @softness.setter 
  def softness(self,value): 
    self.set_softness(value)

##################################Generated Methods#########################################
  def  get_softness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_pinjoint2d_get_softness,self.godot_owner,[NULL,],&ret)
  def  set_softness(self, softness):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_pinjoint2d_set_softness,self.godot_owner,[NULL,],NULL)
