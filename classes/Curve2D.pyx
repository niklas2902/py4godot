from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_curve2d__get_data
cdef godot_method_bind *bind_curve2d__set_data
cdef godot_method_bind *bind_curve2d_add_point
cdef godot_method_bind *bind_curve2d_clear_points
cdef godot_method_bind *bind_curve2d_get_bake_interval
cdef godot_method_bind *bind_curve2d_get_baked_length
cdef godot_method_bind *bind_curve2d_get_baked_points
cdef godot_method_bind *bind_curve2d_get_closest_offset
cdef godot_method_bind *bind_curve2d_get_closest_point
cdef godot_method_bind *bind_curve2d_get_point_count
cdef godot_method_bind *bind_curve2d_get_point_in
cdef godot_method_bind *bind_curve2d_get_point_out
cdef godot_method_bind *bind_curve2d_get_point_position
cdef godot_method_bind *bind_curve2d_interpolate
cdef godot_method_bind *bind_curve2d_interpolate_baked
cdef godot_method_bind *bind_curve2d_interpolatef
cdef godot_method_bind *bind_curve2d_remove_point
cdef godot_method_bind *bind_curve2d_set_bake_interval
cdef godot_method_bind *bind_curve2d_set_point_in
cdef godot_method_bind *bind_curve2d_set_point_out
cdef godot_method_bind *bind_curve2d_set_point_position
cdef godot_method_bind *bind_curve2d_tessellate
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_curve2d__get_data = api_core.godot_method_bind_get_method('Curve2D', '_get_data')
  bind_curve2d__set_data = api_core.godot_method_bind_get_method('Curve2D', '_set_data')
  bind_curve2d_add_point = api_core.godot_method_bind_get_method('Curve2D', 'add_point')
  bind_curve2d_clear_points = api_core.godot_method_bind_get_method('Curve2D', 'clear_points')
  bind_curve2d_get_bake_interval = api_core.godot_method_bind_get_method('Curve2D', 'get_bake_interval')
  bind_curve2d_get_baked_length = api_core.godot_method_bind_get_method('Curve2D', 'get_baked_length')
  bind_curve2d_get_baked_points = api_core.godot_method_bind_get_method('Curve2D', 'get_baked_points')
  bind_curve2d_get_closest_offset = api_core.godot_method_bind_get_method('Curve2D', 'get_closest_offset')
  bind_curve2d_get_closest_point = api_core.godot_method_bind_get_method('Curve2D', 'get_closest_point')
  bind_curve2d_get_point_count = api_core.godot_method_bind_get_method('Curve2D', 'get_point_count')
  bind_curve2d_get_point_in = api_core.godot_method_bind_get_method('Curve2D', 'get_point_in')
  bind_curve2d_get_point_out = api_core.godot_method_bind_get_method('Curve2D', 'get_point_out')
  bind_curve2d_get_point_position = api_core.godot_method_bind_get_method('Curve2D', 'get_point_position')
  bind_curve2d_interpolate = api_core.godot_method_bind_get_method('Curve2D', 'interpolate')
  bind_curve2d_interpolate_baked = api_core.godot_method_bind_get_method('Curve2D', 'interpolate_baked')
  bind_curve2d_interpolatef = api_core.godot_method_bind_get_method('Curve2D', 'interpolatef')
  bind_curve2d_remove_point = api_core.godot_method_bind_get_method('Curve2D', 'remove_point')
  bind_curve2d_set_bake_interval = api_core.godot_method_bind_get_method('Curve2D', 'set_bake_interval')
  bind_curve2d_set_point_in = api_core.godot_method_bind_get_method('Curve2D', 'set_point_in')
  bind_curve2d_set_point_out = api_core.godot_method_bind_get_method('Curve2D', 'set_point_out')
  bind_curve2d_set_point_position = api_core.godot_method_bind_get_method('Curve2D', 'set_point_position')
  bind_curve2d_tessellate = api_core.godot_method_bind_get_method('Curve2D', 'tessellate')

############################Generated class###################################
cdef class Curve2D(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Curve2D")())
##################################Generated Properties#########################################
  @property
  def _data(self): 
    return self.get__data()
  @_data.setter 
  def _data(self,value): 
    self.set__data(value)
  @property
  def bake_interval(self): 
    return self.get_bake_interval()
  @bake_interval.setter 
  def bake_interval(self,value): 
    self.set_bake_interval(value)

##################################Generated Methods#########################################
  def  _get_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_curve2d__get_data,self.godot_owner,[NULL,],&ret)
  def  _set_data(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_curve2d__set_data,self.godot_owner,[NULL,],NULL)
  def  add_point(self, positioninoutat_position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_curve2d_add_point,self.godot_owner,[NULL,],NULL)
  def  clear_points(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_curve2d_clear_points,self.godot_owner,[NULL,],NULL)
  def  get_bake_interval(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_get_bake_interval,self.godot_owner,[NULL,],&ret)
  def  get_baked_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_get_baked_length,self.godot_owner,[NULL,],&ret)
  def  get_baked_points(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_get_baked_points,self.godot_owner,[NULL,],&ret)
  def  get_closest_offset(self, to_point):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_get_closest_offset,self.godot_owner,[NULL,],&ret)
  def  get_closest_point(self, to_point):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_get_closest_point,self.godot_owner,[NULL,],&ret)
  def  get_point_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_get_point_count,self.godot_owner,[NULL,],&ret)
  def  get_point_in(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_get_point_in,self.godot_owner,[NULL,],&ret)
  def  get_point_out(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_get_point_out,self.godot_owner,[NULL,],&ret)
  def  get_point_position(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_get_point_position,self.godot_owner,[NULL,],&ret)
  def  interpolate(self, idxt):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_interpolate,self.godot_owner,[NULL,],&ret)
  def  interpolate_baked(self, offsetcubic):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_interpolate_baked,self.godot_owner,[NULL,],&ret)
  def  interpolatef(self, fofs):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_interpolatef,self.godot_owner,[NULL,],&ret)
  def  remove_point(self, idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_curve2d_remove_point,self.godot_owner,[NULL,],NULL)
  def  set_bake_interval(self, distance):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_curve2d_set_bake_interval,self.godot_owner,[NULL,],NULL)
  def  set_point_in(self, idxposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_curve2d_set_point_in,self.godot_owner,[NULL,],NULL)
  def  set_point_out(self, idxposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_curve2d_set_point_out,self.godot_owner,[NULL,],NULL)
  def  set_point_position(self, idxposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_curve2d_set_point_position,self.godot_owner,[NULL,],NULL)
  def  tessellate(self, max_stagestolerance_degrees):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_curve2d_tessellate,self.godot_owner,[NULL,],&ret)
