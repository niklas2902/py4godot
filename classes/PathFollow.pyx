
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
cimport classes.Spatial 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_pathfollow_get_cubic_interpolation
cdef godot_method_bind *bind_pathfollow_get_h_offset
cdef godot_method_bind *bind_pathfollow_get_offset
cdef godot_method_bind *bind_pathfollow_get_rotation_mode
cdef godot_method_bind *bind_pathfollow_get_unit_offset
cdef godot_method_bind *bind_pathfollow_get_v_offset
cdef godot_method_bind *bind_pathfollow_has_loop
cdef godot_method_bind *bind_pathfollow_set_cubic_interpolation
cdef godot_method_bind *bind_pathfollow_set_h_offset
cdef godot_method_bind *bind_pathfollow_set_loop
cdef godot_method_bind *bind_pathfollow_set_offset
cdef godot_method_bind *bind_pathfollow_set_rotation_mode
cdef godot_method_bind *bind_pathfollow_set_unit_offset
cdef godot_method_bind *bind_pathfollow_set_v_offset
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_pathfollow_get_cubic_interpolation = api_core.godot_method_bind_get_method('PathFollow', 'get_cubic_interpolation')
  bind_pathfollow_get_h_offset = api_core.godot_method_bind_get_method('PathFollow', 'get_h_offset')
  bind_pathfollow_get_offset = api_core.godot_method_bind_get_method('PathFollow', 'get_offset')
  bind_pathfollow_get_rotation_mode = api_core.godot_method_bind_get_method('PathFollow', 'get_rotation_mode')
  bind_pathfollow_get_unit_offset = api_core.godot_method_bind_get_method('PathFollow', 'get_unit_offset')
  bind_pathfollow_get_v_offset = api_core.godot_method_bind_get_method('PathFollow', 'get_v_offset')
  bind_pathfollow_has_loop = api_core.godot_method_bind_get_method('PathFollow', 'has_loop')
  bind_pathfollow_set_cubic_interpolation = api_core.godot_method_bind_get_method('PathFollow', 'set_cubic_interpolation')
  bind_pathfollow_set_h_offset = api_core.godot_method_bind_get_method('PathFollow', 'set_h_offset')
  bind_pathfollow_set_loop = api_core.godot_method_bind_get_method('PathFollow', 'set_loop')
  bind_pathfollow_set_offset = api_core.godot_method_bind_get_method('PathFollow', 'set_offset')
  bind_pathfollow_set_rotation_mode = api_core.godot_method_bind_get_method('PathFollow', 'set_rotation_mode')
  bind_pathfollow_set_unit_offset = api_core.godot_method_bind_get_method('PathFollow', 'set_unit_offset')
  bind_pathfollow_set_v_offset = api_core.godot_method_bind_get_method('PathFollow', 'set_v_offset')

############################Generated class###################################
cdef class PathFollow(classes.Spatial.Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PathFollow")())
##################################Generated Properties#########################################
  @property
  def cubic_interp(self): 
    return self.get_cubic_interp()
  @cubic_interp.setter 
  def cubic_interp(self,value): 
    self.set_cubic_interp(value)
  @property
  def h_offset(self): 
    return self.get_h_offset()
  @h_offset.setter 
  def h_offset(self,value): 
    self.set_h_offset(value)
  @property
  def loop(self): 
    return self.get_loop()
  @loop.setter 
  def loop(self,value): 
    self.set_loop(value)
  @property
  def offset(self): 
    return self.get_offset()
  @offset.setter 
  def offset(self,value): 
    self.set_offset(value)
  @property
  def rotation_mode(self): 
    return self.get_rotation_mode()
  @rotation_mode.setter 
  def rotation_mode(self,value): 
    self.set_rotation_mode(value)
  @property
  def unit_offset(self): 
    return self.get_unit_offset()
  @unit_offset.setter 
  def unit_offset(self,value): 
    self.set_unit_offset(value)
  @property
  def v_offset(self): 
    return self.get_v_offset()
  @v_offset.setter 
  def v_offset(self,value): 
    self.set_v_offset(value)

##################################Generated Methods#########################################
  def  get_cubic_interpolation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_pathfollow_get_cubic_interpolation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_h_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_pathfollow_get_h_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_pathfollow_get_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rotation_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef PathFollow_RotationMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_pathfollow_get_rotation_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_unit_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_pathfollow_get_unit_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_v_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_pathfollow_get_v_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_loop(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_pathfollow_has_loop,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_cubic_interpolation(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_pathfollow_set_cubic_interpolation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_h_offset(self,  float h_offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &h_offset
    api_core.godot_method_bind_ptrcall(bind_pathfollow_set_h_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_loop(self,  bool loop):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &loop
    api_core.godot_method_bind_ptrcall(bind_pathfollow_set_loop,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_offset(self,  float offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset
    api_core.godot_method_bind_ptrcall(bind_pathfollow_set_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rotation_mode(self,  int rotation_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rotation_mode
    api_core.godot_method_bind_ptrcall(bind_pathfollow_set_rotation_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_unit_offset(self,  float unit_offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &unit_offset
    api_core.godot_method_bind_ptrcall(bind_pathfollow_set_unit_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_v_offset(self,  float v_offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &v_offset
    api_core.godot_method_bind_ptrcall(bind_pathfollow_set_v_offset,self.godot_owner,args,NULL)
    hello('hallo2')
