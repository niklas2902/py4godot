from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_occluderpolygon2d_get_cull_mode
cdef godot_method_bind *bind_occluderpolygon2d_get_polygon
cdef godot_method_bind *bind_occluderpolygon2d_is_closed
cdef godot_method_bind *bind_occluderpolygon2d_set_closed
cdef godot_method_bind *bind_occluderpolygon2d_set_cull_mode
cdef godot_method_bind *bind_occluderpolygon2d_set_polygon
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_occluderpolygon2d_get_cull_mode = api_core.godot_method_bind_get_method('OccluderPolygon2D', 'get_cull_mode')
  bind_occluderpolygon2d_get_polygon = api_core.godot_method_bind_get_method('OccluderPolygon2D', 'get_polygon')
  bind_occluderpolygon2d_is_closed = api_core.godot_method_bind_get_method('OccluderPolygon2D', 'is_closed')
  bind_occluderpolygon2d_set_closed = api_core.godot_method_bind_get_method('OccluderPolygon2D', 'set_closed')
  bind_occluderpolygon2d_set_cull_mode = api_core.godot_method_bind_get_method('OccluderPolygon2D', 'set_cull_mode')
  bind_occluderpolygon2d_set_polygon = api_core.godot_method_bind_get_method('OccluderPolygon2D', 'set_polygon')

############################Generated class###################################
cdef class OccluderPolygon2D(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("OccluderPolygon2D")())
##################################Generated Properties#########################################
  @property
  def closed(self): 
    return self.get_closed()
  @closed.setter 
  def closed(self,value): 
    self.set_closed(value)
  @property
  def cull_mode(self): 
    return self.get_cull_mode()
  @cull_mode.setter 
  def cull_mode(self,value): 
    self.set_cull_mode(value)
  @property
  def polygon(self): 
    return self.get_polygon()
  @polygon.setter 
  def polygon(self,value): 
    self.set_polygon(value)

##################################Generated Methods#########################################
  def  get_cull_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef OccluderPolygon2D::CullMode ret
    api_core.godot_method_bind_ptrcall(bind_occluderpolygon2d_get_cull_mode,self.godot_owner,[NULL,],&ret)
  def  get_polygon(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_occluderpolygon2d_get_polygon,self.godot_owner,[NULL,],&ret)
  def  is_closed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_occluderpolygon2d_is_closed,self.godot_owner,[NULL,],&ret)
  def  set_closed(self, closed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_occluderpolygon2d_set_closed,self.godot_owner,[NULL,],NULL)
  def  set_cull_mode(self, cull_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_occluderpolygon2d_set_cull_mode,self.godot_owner,[NULL,],NULL)
  def  set_polygon(self, polygon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_occluderpolygon2d_set_polygon,self.godot_owner,[NULL,],NULL)
