from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_parallaxlayer_get_mirroring
cdef godot_method_bind *bind_parallaxlayer_get_motion_offset
cdef godot_method_bind *bind_parallaxlayer_get_motion_scale
cdef godot_method_bind *bind_parallaxlayer_set_mirroring
cdef godot_method_bind *bind_parallaxlayer_set_motion_offset
cdef godot_method_bind *bind_parallaxlayer_set_motion_scale
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_parallaxlayer_get_mirroring = api_core.godot_method_bind_get_method('ParallaxLayer', 'get_mirroring')
  bind_parallaxlayer_get_motion_offset = api_core.godot_method_bind_get_method('ParallaxLayer', 'get_motion_offset')
  bind_parallaxlayer_get_motion_scale = api_core.godot_method_bind_get_method('ParallaxLayer', 'get_motion_scale')
  bind_parallaxlayer_set_mirroring = api_core.godot_method_bind_get_method('ParallaxLayer', 'set_mirroring')
  bind_parallaxlayer_set_motion_offset = api_core.godot_method_bind_get_method('ParallaxLayer', 'set_motion_offset')
  bind_parallaxlayer_set_motion_scale = api_core.godot_method_bind_get_method('ParallaxLayer', 'set_motion_scale')

############################Generated class###################################
cdef class ParallaxLayer(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ParallaxLayer")())
##################################Generated Properties#########################################
  @property
  def motion_mirroring(self): 
    return self.get_motion_mirroring()
  @motion_mirroring.setter 
  def motion_mirroring(self,value): 
    self.set_motion_mirroring(value)
  @property
  def motion_offset(self): 
    return self.get_motion_offset()
  @motion_offset.setter 
  def motion_offset(self,value): 
    self.set_motion_offset(value)
  @property
  def motion_scale(self): 
    return self.get_motion_scale()
  @motion_scale.setter 
  def motion_scale(self,value): 
    self.set_motion_scale(value)

##################################Generated Methods#########################################
  def  get_mirroring(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_parallaxlayer_get_mirroring,self.godot_owner,[NULL,],&ret)
  def  get_motion_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_parallaxlayer_get_motion_offset,self.godot_owner,[NULL,],&ret)
  def  get_motion_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_parallaxlayer_get_motion_scale,self.godot_owner,[NULL,],&ret)
  def  set_mirroring(self, mirror):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_parallaxlayer_set_mirroring,self.godot_owner,[NULL,],NULL)
  def  set_motion_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_parallaxlayer_set_motion_offset,self.godot_owner,[NULL,],NULL)
  def  set_motion_scale(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_parallaxlayer_set_motion_scale,self.godot_owner,[NULL,],NULL)
