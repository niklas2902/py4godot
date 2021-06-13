
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
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_curve3d__get_data
cdef godot_method_bind *bind_curve3d__set_data
cdef godot_method_bind *bind_curve3d_add_point
cdef godot_method_bind *bind_curve3d_clear_points
cdef godot_method_bind *bind_curve3d_get_bake_interval
cdef godot_method_bind *bind_curve3d_get_baked_length
cdef godot_method_bind *bind_curve3d_get_baked_points
cdef godot_method_bind *bind_curve3d_get_baked_tilts
cdef godot_method_bind *bind_curve3d_get_baked_up_vectors
cdef godot_method_bind *bind_curve3d_get_closest_offset
cdef godot_method_bind *bind_curve3d_get_closest_point
cdef godot_method_bind *bind_curve3d_get_point_count
cdef godot_method_bind *bind_curve3d_get_point_in
cdef godot_method_bind *bind_curve3d_get_point_out
cdef godot_method_bind *bind_curve3d_get_point_position
cdef godot_method_bind *bind_curve3d_get_point_tilt
cdef godot_method_bind *bind_curve3d_interpolate
cdef godot_method_bind *bind_curve3d_interpolate_baked
cdef godot_method_bind *bind_curve3d_interpolate_baked_up_vector
cdef godot_method_bind *bind_curve3d_interpolatef
cdef godot_method_bind *bind_curve3d_is_up_vector_enabled
cdef godot_method_bind *bind_curve3d_remove_point
cdef godot_method_bind *bind_curve3d_set_bake_interval
cdef godot_method_bind *bind_curve3d_set_point_in
cdef godot_method_bind *bind_curve3d_set_point_out
cdef godot_method_bind *bind_curve3d_set_point_position
cdef godot_method_bind *bind_curve3d_set_point_tilt
cdef godot_method_bind *bind_curve3d_set_up_vector_enabled
cdef godot_method_bind *bind_curve3d_tessellate
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_curve3d__get_data = api_core.godot_method_bind_get_method('Curve3D', '_get_data')
  bind_curve3d__set_data = api_core.godot_method_bind_get_method('Curve3D', '_set_data')
  bind_curve3d_add_point = api_core.godot_method_bind_get_method('Curve3D', 'add_point')
  bind_curve3d_clear_points = api_core.godot_method_bind_get_method('Curve3D', 'clear_points')
  bind_curve3d_get_bake_interval = api_core.godot_method_bind_get_method('Curve3D', 'get_bake_interval')
  bind_curve3d_get_baked_length = api_core.godot_method_bind_get_method('Curve3D', 'get_baked_length')
  bind_curve3d_get_baked_points = api_core.godot_method_bind_get_method('Curve3D', 'get_baked_points')
  bind_curve3d_get_baked_tilts = api_core.godot_method_bind_get_method('Curve3D', 'get_baked_tilts')
  bind_curve3d_get_baked_up_vectors = api_core.godot_method_bind_get_method('Curve3D', 'get_baked_up_vectors')
  bind_curve3d_get_closest_offset = api_core.godot_method_bind_get_method('Curve3D', 'get_closest_offset')
  bind_curve3d_get_closest_point = api_core.godot_method_bind_get_method('Curve3D', 'get_closest_point')
  bind_curve3d_get_point_count = api_core.godot_method_bind_get_method('Curve3D', 'get_point_count')
  bind_curve3d_get_point_in = api_core.godot_method_bind_get_method('Curve3D', 'get_point_in')
  bind_curve3d_get_point_out = api_core.godot_method_bind_get_method('Curve3D', 'get_point_out')
  bind_curve3d_get_point_position = api_core.godot_method_bind_get_method('Curve3D', 'get_point_position')
  bind_curve3d_get_point_tilt = api_core.godot_method_bind_get_method('Curve3D', 'get_point_tilt')
  bind_curve3d_interpolate = api_core.godot_method_bind_get_method('Curve3D', 'interpolate')
  bind_curve3d_interpolate_baked = api_core.godot_method_bind_get_method('Curve3D', 'interpolate_baked')
  bind_curve3d_interpolate_baked_up_vector = api_core.godot_method_bind_get_method('Curve3D', 'interpolate_baked_up_vector')
  bind_curve3d_interpolatef = api_core.godot_method_bind_get_method('Curve3D', 'interpolatef')
  bind_curve3d_is_up_vector_enabled = api_core.godot_method_bind_get_method('Curve3D', 'is_up_vector_enabled')
  bind_curve3d_remove_point = api_core.godot_method_bind_get_method('Curve3D', 'remove_point')
  bind_curve3d_set_bake_interval = api_core.godot_method_bind_get_method('Curve3D', 'set_bake_interval')
  bind_curve3d_set_point_in = api_core.godot_method_bind_get_method('Curve3D', 'set_point_in')
  bind_curve3d_set_point_out = api_core.godot_method_bind_get_method('Curve3D', 'set_point_out')
  bind_curve3d_set_point_position = api_core.godot_method_bind_get_method('Curve3D', 'set_point_position')
  bind_curve3d_set_point_tilt = api_core.godot_method_bind_get_method('Curve3D', 'set_point_tilt')
  bind_curve3d_set_up_vector_enabled = api_core.godot_method_bind_get_method('Curve3D', 'set_up_vector_enabled')
  bind_curve3d_tessellate = api_core.godot_method_bind_get_method('Curve3D', 'tessellate')

############################Generated class###################################
cdef class Curve3D(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Curve3D")())
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
  @property
  def up_vector_enabled(self): 
    return self.get_up_vector_enabled()
  @up_vector_enabled.setter 
  def up_vector_enabled(self,value): 
    self.set_up_vector_enabled(value)

##################################Generated Methods#########################################
  def  _get_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve3d__get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  _set_data(self,  Dictionary arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_curve3d__set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_point(self,  Vector3 position,  Vector3 in_,  Vector3 out,  int at_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &position._native
    args[1] = &in_._native
    args[2] = &out._native
    args[3] = &at_position
    api_core.godot_method_bind_ptrcall(bind_curve3d_add_point,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_points(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_curve3d_clear_points,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_bake_interval(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve3d_get_bake_interval,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_baked_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve3d_get_baked_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_baked_points(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve3d_get_baked_points,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_baked_tilts(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve3d_get_baked_tilts,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_baked_up_vectors(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve3d_get_baked_up_vectors,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_closest_offset(self,  Vector3 to_point):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &to_point._native
    api_core.godot_method_bind_ptrcall(bind_curve3d_get_closest_offset,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_closest_point(self,  Vector3 to_point):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &to_point._native
    api_core.godot_method_bind_ptrcall(bind_curve3d_get_closest_point,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_point_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve3d_get_point_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_point_in(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_curve3d_get_point_in,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_point_out(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_curve3d_get_point_out,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_point_position(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_curve3d_get_point_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_point_tilt(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_curve3d_get_point_tilt,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  interpolate(self,  int idx,  float t):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[2]

    args[0] = &idx
    args[1] = &t
    api_core.godot_method_bind_ptrcall(bind_curve3d_interpolate,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  interpolate_baked(self,  float offset,  bool cubic):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[2]

    args[0] = &offset
    args[1] = &cubic
    api_core.godot_method_bind_ptrcall(bind_curve3d_interpolate_baked,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  interpolate_baked_up_vector(self,  float offset,  bool apply_tilt):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[2]

    args[0] = &offset
    args[1] = &apply_tilt
    api_core.godot_method_bind_ptrcall(bind_curve3d_interpolate_baked_up_vector,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  interpolatef(self,  float fofs):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &fofs
    api_core.godot_method_bind_ptrcall(bind_curve3d_interpolatef,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  is_up_vector_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_curve3d_is_up_vector_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_point(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_curve3d_remove_point,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bake_interval(self,  float distance):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &distance
    api_core.godot_method_bind_ptrcall(bind_curve3d_set_bake_interval,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_in(self,  int idx,  Vector3 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &position._native
    api_core.godot_method_bind_ptrcall(bind_curve3d_set_point_in,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_out(self,  int idx,  Vector3 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &position._native
    api_core.godot_method_bind_ptrcall(bind_curve3d_set_point_out,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_position(self,  int idx,  Vector3 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &position._native
    api_core.godot_method_bind_ptrcall(bind_curve3d_set_point_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_tilt(self,  int idx,  float tilt):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &tilt
    api_core.godot_method_bind_ptrcall(bind_curve3d_set_point_tilt,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_up_vector_enabled(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_curve3d_set_up_vector_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tessellate(self,  int max_stages,  float tolerance_degrees):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &max_stages
    args[1] = &tolerance_degrees
    api_core.godot_method_bind_ptrcall(bind_curve3d_tessellate,self.godot_owner,args,&ret)
    hello('hallo2')
