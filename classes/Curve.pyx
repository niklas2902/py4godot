
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_curve__get_data
cdef godot_method_bind *bind_curve__set_data
cdef godot_method_bind *bind_curve_add_point
cdef godot_method_bind *bind_curve_bake
cdef godot_method_bind *bind_curve_clean_dupes
cdef godot_method_bind *bind_curve_clear_points
cdef godot_method_bind *bind_curve_get_bake_resolution
cdef godot_method_bind *bind_curve_get_max_value
cdef godot_method_bind *bind_curve_get_min_value
cdef godot_method_bind *bind_curve_get_point_count
cdef godot_method_bind *bind_curve_get_point_left_mode
cdef godot_method_bind *bind_curve_get_point_left_tangent
cdef godot_method_bind *bind_curve_get_point_position
cdef godot_method_bind *bind_curve_get_point_right_mode
cdef godot_method_bind *bind_curve_get_point_right_tangent
cdef godot_method_bind *bind_curve_interpolate
cdef godot_method_bind *bind_curve_interpolate_baked
cdef godot_method_bind *bind_curve_remove_point
cdef godot_method_bind *bind_curve_set_bake_resolution
cdef godot_method_bind *bind_curve_set_max_value
cdef godot_method_bind *bind_curve_set_min_value
cdef godot_method_bind *bind_curve_set_point_left_mode
cdef godot_method_bind *bind_curve_set_point_left_tangent
cdef godot_method_bind *bind_curve_set_point_offset
cdef godot_method_bind *bind_curve_set_point_right_mode
cdef godot_method_bind *bind_curve_set_point_right_tangent
cdef godot_method_bind *bind_curve_set_point_value
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_curve__get_data = api_core.godot_method_bind_get_method('Curve', '_get_data')
  bind_curve__set_data = api_core.godot_method_bind_get_method('Curve', '_set_data')
  bind_curve_add_point = api_core.godot_method_bind_get_method('Curve', 'add_point')
  bind_curve_bake = api_core.godot_method_bind_get_method('Curve', 'bake')
  bind_curve_clean_dupes = api_core.godot_method_bind_get_method('Curve', 'clean_dupes')
  bind_curve_clear_points = api_core.godot_method_bind_get_method('Curve', 'clear_points')
  bind_curve_get_bake_resolution = api_core.godot_method_bind_get_method('Curve', 'get_bake_resolution')
  bind_curve_get_max_value = api_core.godot_method_bind_get_method('Curve', 'get_max_value')
  bind_curve_get_min_value = api_core.godot_method_bind_get_method('Curve', 'get_min_value')
  bind_curve_get_point_count = api_core.godot_method_bind_get_method('Curve', 'get_point_count')
  bind_curve_get_point_left_mode = api_core.godot_method_bind_get_method('Curve', 'get_point_left_mode')
  bind_curve_get_point_left_tangent = api_core.godot_method_bind_get_method('Curve', 'get_point_left_tangent')
  bind_curve_get_point_position = api_core.godot_method_bind_get_method('Curve', 'get_point_position')
  bind_curve_get_point_right_mode = api_core.godot_method_bind_get_method('Curve', 'get_point_right_mode')
  bind_curve_get_point_right_tangent = api_core.godot_method_bind_get_method('Curve', 'get_point_right_tangent')
  bind_curve_interpolate = api_core.godot_method_bind_get_method('Curve', 'interpolate')
  bind_curve_interpolate_baked = api_core.godot_method_bind_get_method('Curve', 'interpolate_baked')
  bind_curve_remove_point = api_core.godot_method_bind_get_method('Curve', 'remove_point')
  bind_curve_set_bake_resolution = api_core.godot_method_bind_get_method('Curve', 'set_bake_resolution')
  bind_curve_set_max_value = api_core.godot_method_bind_get_method('Curve', 'set_max_value')
  bind_curve_set_min_value = api_core.godot_method_bind_get_method('Curve', 'set_min_value')
  bind_curve_set_point_left_mode = api_core.godot_method_bind_get_method('Curve', 'set_point_left_mode')
  bind_curve_set_point_left_tangent = api_core.godot_method_bind_get_method('Curve', 'set_point_left_tangent')
  bind_curve_set_point_offset = api_core.godot_method_bind_get_method('Curve', 'set_point_offset')
  bind_curve_set_point_right_mode = api_core.godot_method_bind_get_method('Curve', 'set_point_right_mode')
  bind_curve_set_point_right_tangent = api_core.godot_method_bind_get_method('Curve', 'set_point_right_tangent')
  bind_curve_set_point_value = api_core.godot_method_bind_get_method('Curve', 'set_point_value')

############################Generated class###################################
cdef class Curve(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Curve")())
##################################Generated Properties#########################################
  @property
  def _data(self): 
    return self.get__data()
  @_data.setter 
  def _data(self,value): 
    self.set__data(value)
  @property
  def bake_resolution(self): 
    return self.get_bake_resolution()
  @bake_resolution.setter 
  def bake_resolution(self,value): 
    self.set_bake_resolution(value)
  @property
  def max_value(self): 
    return self.get_max_value()
  @max_value.setter 
  def max_value(self,value): 
    self.set_max_value(value)
  @property
  def min_value(self): 
    return self.get_min_value()
  @min_value.setter 
  def min_value(self,value): 
    self.set_min_value(value)

##################################Generated Methods#########################################
  def  _get_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve__get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _set_data(self,  Array data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &data._native
    api_core.godot_method_bind_ptrcall(bind_curve__set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_point(self,  Vector2 position,  float left_tangent,  float right_tangent,  int left_mode,  int right_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[5]

    args[0] = &position._native
    args[1] = &left_tangent
    args[2] = &right_tangent
    args[3] = &left_mode
    args[4] = &right_mode
    api_core.godot_method_bind_ptrcall(bind_curve_add_point,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  bake(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_curve_bake,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  clean_dupes(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_curve_clean_dupes,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  clear_points(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_curve_clear_points,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_bake_resolution(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve_get_bake_resolution,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_max_value(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve_get_max_value,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_min_value(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve_get_min_value,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_point_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve_get_point_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_point_left_mode(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef TangentMode* ret = NULL;

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_curve_get_point_left_mode,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_point_left_tangent(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_curve_get_point_left_tangent,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_point_position(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_curve_get_point_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_point_right_mode(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef TangentMode* ret = NULL;

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_curve_get_point_right_mode,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_point_right_tangent(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_curve_get_point_right_tangent,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  interpolate(self,  float offset):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &offset
    api_core.godot_method_bind_ptrcall(bind_curve_interpolate,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  interpolate_baked(self,  float offset):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &offset
    api_core.godot_method_bind_ptrcall(bind_curve_interpolate_baked,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_point(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_curve_remove_point,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bake_resolution(self,  int resolution):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &resolution
    api_core.godot_method_bind_ptrcall(bind_curve_set_bake_resolution,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_max_value(self,  float max):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &max
    api_core.godot_method_bind_ptrcall(bind_curve_set_max_value,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_min_value(self,  float min):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &min
    api_core.godot_method_bind_ptrcall(bind_curve_set_min_value,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_left_mode(self,  int index,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &index
    args[1] = &mode
    api_core.godot_method_bind_ptrcall(bind_curve_set_point_left_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_left_tangent(self,  int index,  float tangent):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &index
    args[1] = &tangent
    api_core.godot_method_bind_ptrcall(bind_curve_set_point_left_tangent,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_offset(self,  int index,  float offset):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &index
    args[1] = &offset
    api_core.godot_method_bind_ptrcall(bind_curve_set_point_offset,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_point_right_mode(self,  int index,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &index
    args[1] = &mode
    api_core.godot_method_bind_ptrcall(bind_curve_set_point_right_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_right_tangent(self,  int index,  float tangent):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &index
    args[1] = &tangent
    api_core.godot_method_bind_ptrcall(bind_curve_set_point_right_tangent,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_value(self,  int index,  float y):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &index
    args[1] = &y
    api_core.godot_method_bind_ptrcall(bind_curve_set_point_value,self.godot_owner,args,NULL)
    hello('hallo2')
