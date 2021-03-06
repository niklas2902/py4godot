from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_collisionpolygon__is_editable_3d_polygon
cdef godot_method_bind *bind_collisionpolygon_get_depth
cdef godot_method_bind *bind_collisionpolygon_get_polygon
cdef godot_method_bind *bind_collisionpolygon_is_disabled
cdef godot_method_bind *bind_collisionpolygon_set_depth
cdef godot_method_bind *bind_collisionpolygon_set_disabled
cdef godot_method_bind *bind_collisionpolygon_set_polygon
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_collisionpolygon__is_editable_3d_polygon = api_core.godot_method_bind_get_method('CollisionPolygon', '_is_editable_3d_polygon')
  bind_collisionpolygon_get_depth = api_core.godot_method_bind_get_method('CollisionPolygon', 'get_depth')
  bind_collisionpolygon_get_polygon = api_core.godot_method_bind_get_method('CollisionPolygon', 'get_polygon')
  bind_collisionpolygon_is_disabled = api_core.godot_method_bind_get_method('CollisionPolygon', 'is_disabled')
  bind_collisionpolygon_set_depth = api_core.godot_method_bind_get_method('CollisionPolygon', 'set_depth')
  bind_collisionpolygon_set_disabled = api_core.godot_method_bind_get_method('CollisionPolygon', 'set_disabled')
  bind_collisionpolygon_set_polygon = api_core.godot_method_bind_get_method('CollisionPolygon', 'set_polygon')

############################Generated class###################################
cdef class CollisionPolygon(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CollisionPolygon")())
##################################Generated Properties#########################################
  @property
  def depth(self): 
    return self.get_depth()
  @depth.setter 
  def depth(self,value): 
    self.set_depth(value)
  @property
  def disabled(self): 
    return self.get_disabled()
  @disabled.setter 
  def disabled(self,value): 
    self.set_disabled(value)
  @property
  def polygon(self): 
    return self.get_polygon()
  @polygon.setter 
  def polygon(self,value): 
    self.set_polygon(value)

##################################Generated Methods#########################################
  def  _is_editable_3d_polygon(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon__is_editable_3d_polygon,self.godot_owner,[NULL,],&ret)
  def  get_depth(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon_get_depth,self.godot_owner,[NULL,],&ret)
  def  get_polygon(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon_get_polygon,self.godot_owner,[NULL,],&ret)
  def  is_disabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon_is_disabled,self.godot_owner,[NULL,],&ret)
  def  set_depth(self, depth):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon_set_depth,self.godot_owner,[NULL,],NULL)
  def  set_disabled(self, disabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon_set_disabled,self.godot_owner,[NULL,],NULL)
  def  set_polygon(self, polygon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon_set_polygon,self.godot_owner,[NULL,],NULL)
