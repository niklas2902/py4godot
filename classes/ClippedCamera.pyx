
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
cimport classes.Object
cimport classes.Object
cimport classes.Camera 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_clippedcamera_add_exception
cdef godot_method_bind *bind_clippedcamera_add_exception_rid
cdef godot_method_bind *bind_clippedcamera_clear_exceptions
cdef godot_method_bind *bind_clippedcamera_get_clip_offset
cdef godot_method_bind *bind_clippedcamera_get_collision_mask
cdef godot_method_bind *bind_clippedcamera_get_collision_mask_bit
cdef godot_method_bind *bind_clippedcamera_get_margin
cdef godot_method_bind *bind_clippedcamera_get_process_mode
cdef godot_method_bind *bind_clippedcamera_is_clip_to_areas_enabled
cdef godot_method_bind *bind_clippedcamera_is_clip_to_bodies_enabled
cdef godot_method_bind *bind_clippedcamera_remove_exception
cdef godot_method_bind *bind_clippedcamera_remove_exception_rid
cdef godot_method_bind *bind_clippedcamera_set_clip_to_areas
cdef godot_method_bind *bind_clippedcamera_set_clip_to_bodies
cdef godot_method_bind *bind_clippedcamera_set_collision_mask
cdef godot_method_bind *bind_clippedcamera_set_collision_mask_bit
cdef godot_method_bind *bind_clippedcamera_set_margin
cdef godot_method_bind *bind_clippedcamera_set_process_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_clippedcamera_add_exception = api_core.godot_method_bind_get_method('ClippedCamera', 'add_exception')
  bind_clippedcamera_add_exception_rid = api_core.godot_method_bind_get_method('ClippedCamera', 'add_exception_rid')
  bind_clippedcamera_clear_exceptions = api_core.godot_method_bind_get_method('ClippedCamera', 'clear_exceptions')
  bind_clippedcamera_get_clip_offset = api_core.godot_method_bind_get_method('ClippedCamera', 'get_clip_offset')
  bind_clippedcamera_get_collision_mask = api_core.godot_method_bind_get_method('ClippedCamera', 'get_collision_mask')
  bind_clippedcamera_get_collision_mask_bit = api_core.godot_method_bind_get_method('ClippedCamera', 'get_collision_mask_bit')
  bind_clippedcamera_get_margin = api_core.godot_method_bind_get_method('ClippedCamera', 'get_margin')
  bind_clippedcamera_get_process_mode = api_core.godot_method_bind_get_method('ClippedCamera', 'get_process_mode')
  bind_clippedcamera_is_clip_to_areas_enabled = api_core.godot_method_bind_get_method('ClippedCamera', 'is_clip_to_areas_enabled')
  bind_clippedcamera_is_clip_to_bodies_enabled = api_core.godot_method_bind_get_method('ClippedCamera', 'is_clip_to_bodies_enabled')
  bind_clippedcamera_remove_exception = api_core.godot_method_bind_get_method('ClippedCamera', 'remove_exception')
  bind_clippedcamera_remove_exception_rid = api_core.godot_method_bind_get_method('ClippedCamera', 'remove_exception_rid')
  bind_clippedcamera_set_clip_to_areas = api_core.godot_method_bind_get_method('ClippedCamera', 'set_clip_to_areas')
  bind_clippedcamera_set_clip_to_bodies = api_core.godot_method_bind_get_method('ClippedCamera', 'set_clip_to_bodies')
  bind_clippedcamera_set_collision_mask = api_core.godot_method_bind_get_method('ClippedCamera', 'set_collision_mask')
  bind_clippedcamera_set_collision_mask_bit = api_core.godot_method_bind_get_method('ClippedCamera', 'set_collision_mask_bit')
  bind_clippedcamera_set_margin = api_core.godot_method_bind_get_method('ClippedCamera', 'set_margin')
  bind_clippedcamera_set_process_mode = api_core.godot_method_bind_get_method('ClippedCamera', 'set_process_mode')

############################Generated class###################################
cdef class ClippedCamera(classes.Camera.Camera):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ClippedCamera")())
##################################Generated Properties#########################################
  @property
  def clip_to_areas(self): 
    return self.get_clip_to_areas()
  @clip_to_areas.setter 
  def clip_to_areas(self,value): 
    self.set_clip_to_areas(value)
  @property
  def clip_to_bodies(self): 
    return self.get_clip_to_bodies()
  @clip_to_bodies.setter 
  def clip_to_bodies(self,value): 
    self.set_clip_to_bodies(value)
  @property
  def collision_mask(self): 
    return self.get_collision_mask()
  @collision_mask.setter 
  def collision_mask(self,value): 
    self.set_collision_mask(value)
  @property
  def margin(self): 
    return self.get_margin()
  @margin.setter 
  def margin(self,value): 
    self.set_margin(value)
  @property
  def process_mode(self): 
    return self.get_process_mode()
  @process_mode.setter 
  def process_mode(self,value): 
    self.set_process_mode(value)

##################################Generated Methods#########################################
  def  add_exception(self,  classes.Object.Object node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_add_exception,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_exception_rid(self,  RID rid):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rid._native
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_add_exception_rid,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_exceptions(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_clippedcamera_clear_exceptions,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_clip_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_clippedcamera_get_clip_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_clippedcamera_get_collision_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_get_collision_mask_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_margin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_clippedcamera_get_margin,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_process_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef ProcessMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_clippedcamera_get_process_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_clip_to_areas_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_clippedcamera_is_clip_to_areas_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_clip_to_bodies_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_clippedcamera_is_clip_to_bodies_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_exception(self,  classes.Object.Object node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_remove_exception,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_exception_rid(self,  RID rid):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rid._native
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_remove_exception_rid,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_clip_to_areas(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_set_clip_to_areas,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_clip_to_bodies(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_set_clip_to_bodies,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_set_collision_mask_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_margin(self,  float margin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_set_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_process_mode(self,  int process_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &process_mode
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_set_process_mode,self.godot_owner,args,NULL)
    hello('hallo2')
