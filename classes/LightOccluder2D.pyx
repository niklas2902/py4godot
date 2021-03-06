from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_lightoccluder2d__poly_changed
cdef godot_method_bind *bind_lightoccluder2d_get_occluder_light_mask
cdef godot_method_bind *bind_lightoccluder2d_get_occluder_polygon
cdef godot_method_bind *bind_lightoccluder2d_set_occluder_light_mask
cdef godot_method_bind *bind_lightoccluder2d_set_occluder_polygon
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_lightoccluder2d__poly_changed = api_core.godot_method_bind_get_method('LightOccluder2D', '_poly_changed')
  bind_lightoccluder2d_get_occluder_light_mask = api_core.godot_method_bind_get_method('LightOccluder2D', 'get_occluder_light_mask')
  bind_lightoccluder2d_get_occluder_polygon = api_core.godot_method_bind_get_method('LightOccluder2D', 'get_occluder_polygon')
  bind_lightoccluder2d_set_occluder_light_mask = api_core.godot_method_bind_get_method('LightOccluder2D', 'set_occluder_light_mask')
  bind_lightoccluder2d_set_occluder_polygon = api_core.godot_method_bind_get_method('LightOccluder2D', 'set_occluder_polygon')

############################Generated class###################################
cdef class LightOccluder2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("LightOccluder2D")())
##################################Generated Properties#########################################
  @property
  def light_mask(self): 
    return self.get_light_mask()
  @light_mask.setter 
  def light_mask(self,value): 
    self.set_light_mask(value)
  @property
  def occluder(self): 
    return self.get_occluder()
  @occluder.setter 
  def occluder(self,value): 
    self.set_occluder(value)

##################################Generated Methods#########################################
  def  _poly_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_lightoccluder2d__poly_changed,self.godot_owner,[NULL,],NULL)
  def  get_occluder_light_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_lightoccluder2d_get_occluder_light_mask,self.godot_owner,[NULL,],&ret)
  def  get_occluder_polygon(self):
    cdef godot_object *_owner = self.godot_owner
    cdef OccluderPolygon2D ret
    api_core.godot_method_bind_ptrcall(bind_lightoccluder2d_get_occluder_polygon,self.godot_owner,[NULL,],&ret)
  def  set_occluder_light_mask(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_lightoccluder2d_set_occluder_light_mask,self.godot_owner,[NULL,],NULL)
  def  set_occluder_polygon(self, polygon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_lightoccluder2d_set_occluder_polygon,self.godot_owner,[NULL,],NULL)
