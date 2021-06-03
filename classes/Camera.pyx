
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
cimport classes.Environment
cimport classes.Spatial 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_camera_clear_current
cdef godot_method_bind *bind_camera_get_camera_rid
cdef godot_method_bind *bind_camera_get_camera_transform
cdef godot_method_bind *bind_camera_get_cull_mask
cdef godot_method_bind *bind_camera_get_cull_mask_bit
cdef godot_method_bind *bind_camera_get_doppler_tracking
cdef godot_method_bind *bind_camera_get_environment
cdef godot_method_bind *bind_camera_get_fov
cdef godot_method_bind *bind_camera_get_frustum
cdef godot_method_bind *bind_camera_get_frustum_offset
cdef godot_method_bind *bind_camera_get_h_offset
cdef godot_method_bind *bind_camera_get_keep_aspect_mode
cdef godot_method_bind *bind_camera_get_projection
cdef godot_method_bind *bind_camera_get_size
cdef godot_method_bind *bind_camera_get_v_offset
cdef godot_method_bind *bind_camera_get_zfar
cdef godot_method_bind *bind_camera_get_znear
cdef godot_method_bind *bind_camera_is_current
cdef godot_method_bind *bind_camera_is_position_behind
cdef godot_method_bind *bind_camera_make_current
cdef godot_method_bind *bind_camera_project_local_ray_normal
cdef godot_method_bind *bind_camera_project_position
cdef godot_method_bind *bind_camera_project_ray_normal
cdef godot_method_bind *bind_camera_project_ray_origin
cdef godot_method_bind *bind_camera_set_cull_mask
cdef godot_method_bind *bind_camera_set_cull_mask_bit
cdef godot_method_bind *bind_camera_set_current
cdef godot_method_bind *bind_camera_set_doppler_tracking
cdef godot_method_bind *bind_camera_set_environment
cdef godot_method_bind *bind_camera_set_fov
cdef godot_method_bind *bind_camera_set_frustum
cdef godot_method_bind *bind_camera_set_frustum_offset
cdef godot_method_bind *bind_camera_set_h_offset
cdef godot_method_bind *bind_camera_set_keep_aspect_mode
cdef godot_method_bind *bind_camera_set_orthogonal
cdef godot_method_bind *bind_camera_set_perspective
cdef godot_method_bind *bind_camera_set_projection
cdef godot_method_bind *bind_camera_set_size
cdef godot_method_bind *bind_camera_set_v_offset
cdef godot_method_bind *bind_camera_set_zfar
cdef godot_method_bind *bind_camera_set_znear
cdef godot_method_bind *bind_camera_unproject_position
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_camera_clear_current = api_core.godot_method_bind_get_method('Camera', 'clear_current')
  bind_camera_get_camera_rid = api_core.godot_method_bind_get_method('Camera', 'get_camera_rid')
  bind_camera_get_camera_transform = api_core.godot_method_bind_get_method('Camera', 'get_camera_transform')
  bind_camera_get_cull_mask = api_core.godot_method_bind_get_method('Camera', 'get_cull_mask')
  bind_camera_get_cull_mask_bit = api_core.godot_method_bind_get_method('Camera', 'get_cull_mask_bit')
  bind_camera_get_doppler_tracking = api_core.godot_method_bind_get_method('Camera', 'get_doppler_tracking')
  bind_camera_get_environment = api_core.godot_method_bind_get_method('Camera', 'get_environment')
  bind_camera_get_fov = api_core.godot_method_bind_get_method('Camera', 'get_fov')
  bind_camera_get_frustum = api_core.godot_method_bind_get_method('Camera', 'get_frustum')
  bind_camera_get_frustum_offset = api_core.godot_method_bind_get_method('Camera', 'get_frustum_offset')
  bind_camera_get_h_offset = api_core.godot_method_bind_get_method('Camera', 'get_h_offset')
  bind_camera_get_keep_aspect_mode = api_core.godot_method_bind_get_method('Camera', 'get_keep_aspect_mode')
  bind_camera_get_projection = api_core.godot_method_bind_get_method('Camera', 'get_projection')
  bind_camera_get_size = api_core.godot_method_bind_get_method('Camera', 'get_size')
  bind_camera_get_v_offset = api_core.godot_method_bind_get_method('Camera', 'get_v_offset')
  bind_camera_get_zfar = api_core.godot_method_bind_get_method('Camera', 'get_zfar')
  bind_camera_get_znear = api_core.godot_method_bind_get_method('Camera', 'get_znear')
  bind_camera_is_current = api_core.godot_method_bind_get_method('Camera', 'is_current')
  bind_camera_is_position_behind = api_core.godot_method_bind_get_method('Camera', 'is_position_behind')
  bind_camera_make_current = api_core.godot_method_bind_get_method('Camera', 'make_current')
  bind_camera_project_local_ray_normal = api_core.godot_method_bind_get_method('Camera', 'project_local_ray_normal')
  bind_camera_project_position = api_core.godot_method_bind_get_method('Camera', 'project_position')
  bind_camera_project_ray_normal = api_core.godot_method_bind_get_method('Camera', 'project_ray_normal')
  bind_camera_project_ray_origin = api_core.godot_method_bind_get_method('Camera', 'project_ray_origin')
  bind_camera_set_cull_mask = api_core.godot_method_bind_get_method('Camera', 'set_cull_mask')
  bind_camera_set_cull_mask_bit = api_core.godot_method_bind_get_method('Camera', 'set_cull_mask_bit')
  bind_camera_set_current = api_core.godot_method_bind_get_method('Camera', 'set_current')
  bind_camera_set_doppler_tracking = api_core.godot_method_bind_get_method('Camera', 'set_doppler_tracking')
  bind_camera_set_environment = api_core.godot_method_bind_get_method('Camera', 'set_environment')
  bind_camera_set_fov = api_core.godot_method_bind_get_method('Camera', 'set_fov')
  bind_camera_set_frustum = api_core.godot_method_bind_get_method('Camera', 'set_frustum')
  bind_camera_set_frustum_offset = api_core.godot_method_bind_get_method('Camera', 'set_frustum_offset')
  bind_camera_set_h_offset = api_core.godot_method_bind_get_method('Camera', 'set_h_offset')
  bind_camera_set_keep_aspect_mode = api_core.godot_method_bind_get_method('Camera', 'set_keep_aspect_mode')
  bind_camera_set_orthogonal = api_core.godot_method_bind_get_method('Camera', 'set_orthogonal')
  bind_camera_set_perspective = api_core.godot_method_bind_get_method('Camera', 'set_perspective')
  bind_camera_set_projection = api_core.godot_method_bind_get_method('Camera', 'set_projection')
  bind_camera_set_size = api_core.godot_method_bind_get_method('Camera', 'set_size')
  bind_camera_set_v_offset = api_core.godot_method_bind_get_method('Camera', 'set_v_offset')
  bind_camera_set_zfar = api_core.godot_method_bind_get_method('Camera', 'set_zfar')
  bind_camera_set_znear = api_core.godot_method_bind_get_method('Camera', 'set_znear')
  bind_camera_unproject_position = api_core.godot_method_bind_get_method('Camera', 'unproject_position')

############################Generated class###################################
cdef class Camera(classes.Spatial.Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Camera")())
##################################Generated Properties#########################################
  @property
  def cull_mask(self): 
    return self.get_cull_mask()
  @cull_mask.setter 
  def cull_mask(self,value): 
    self.set_cull_mask(value)
  @property
  def current(self): 
    return self.get_current()
  @current.setter 
  def current(self,value): 
    self.set_current(value)
  @property
  def doppler_tracking(self): 
    return self.get_doppler_tracking()
  @doppler_tracking.setter 
  def doppler_tracking(self,value): 
    self.set_doppler_tracking(value)
  @property
  def environment(self): 
    return self.get_environment()
  @environment.setter 
  def environment(self,value): 
    self.set_environment(value)
  @property
  def far(self): 
    return self.get_far()
  @far.setter 
  def far(self,value): 
    self.set_far(value)
  @property
  def fov(self): 
    return self.get_fov()
  @fov.setter 
  def fov(self,value): 
    self.set_fov(value)
  @property
  def frustum_offset(self): 
    return self.get_frustum_offset()
  @frustum_offset.setter 
  def frustum_offset(self,value): 
    self.set_frustum_offset(value)
  @property
  def h_offset(self): 
    return self.get_h_offset()
  @h_offset.setter 
  def h_offset(self,value): 
    self.set_h_offset(value)
  @property
  def keep_aspect(self): 
    return self.get_keep_aspect()
  @keep_aspect.setter 
  def keep_aspect(self,value): 
    self.set_keep_aspect(value)
  @property
  def near(self): 
    return self.get_near()
  @near.setter 
  def near(self,value): 
    self.set_near(value)
  @property
  def projection(self): 
    return self.get_projection()
  @projection.setter 
  def projection(self,value): 
    self.set_projection(value)
  @property
  def size(self): 
    return self.get_size()
  @size.setter 
  def size(self,value): 
    self.set_size(value)
  @property
  def v_offset(self): 
    return self.get_v_offset()
  @v_offset.setter 
  def v_offset(self,value): 
    self.set_v_offset(value)

##################################Generated Methods#########################################
  def  clear_current(self,  bool enable_next):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable_next
    api_core.godot_method_bind_ptrcall(bind_camera_clear_current,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_camera_rid(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_camera_rid,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  get_camera_transform(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_camera_transform,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  get_cull_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_cull_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_cull_mask_bit(self,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &layer
    api_core.godot_method_bind_ptrcall(bind_camera_get_cull_mask_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_doppler_tracking(self):
    cdef godot_object *_owner = self.godot_owner

    cdef DopplerTracking* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_doppler_tracking,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_environment(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_environment,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_fov(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_fov,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_frustum(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_frustum,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_frustum_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_frustum_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_h_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_h_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_keep_aspect_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef KeepAspect* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_keep_aspect_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_projection(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Projection* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_projection,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_v_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_v_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_zfar(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_zfar,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_znear(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_get_znear,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_current(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera_is_current,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_position_behind(self,  Vector3 world_point):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &world_point._native
    api_core.godot_method_bind_ptrcall(bind_camera_is_position_behind,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  make_current(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_camera_make_current,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  project_local_ray_normal(self,  Vector2 screen_point):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &screen_point._native
    api_core.godot_method_bind_ptrcall(bind_camera_project_local_ray_normal,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  project_position(self,  Vector2 screen_point,  float z_depth):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[2]

    args[0] = &screen_point._native
    args[1] = &z_depth
    api_core.godot_method_bind_ptrcall(bind_camera_project_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  project_ray_normal(self,  Vector2 screen_point):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &screen_point._native
    api_core.godot_method_bind_ptrcall(bind_camera_project_ray_normal,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  project_ray_origin(self,  Vector2 screen_point):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &screen_point._native
    api_core.godot_method_bind_ptrcall(bind_camera_project_ray_origin,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  set_cull_mask(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_camera_set_cull_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_cull_mask_bit(self,  int layer,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &layer
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_camera_set_cull_mask_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_current(self,  bool arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_camera_set_current,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_doppler_tracking(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_camera_set_doppler_tracking,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_environment(self,  classes.Environment.Environment env):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = env.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camera_set_environment,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fov(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_camera_set_fov,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_frustum(self,  float size,  Vector2 offset,  float z_near,  float z_far):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &size
    args[1] = &offset._native
    args[2] = &z_near
    args[3] = &z_far
    api_core.godot_method_bind_ptrcall(bind_camera_set_frustum,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_frustum_offset(self,  Vector2 arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_camera_set_frustum_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_h_offset(self,  float ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ofs
    api_core.godot_method_bind_ptrcall(bind_camera_set_h_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_keep_aspect_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_camera_set_keep_aspect_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_orthogonal(self,  float size,  float z_near,  float z_far):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &size
    args[1] = &z_near
    args[2] = &z_far
    api_core.godot_method_bind_ptrcall(bind_camera_set_orthogonal,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_perspective(self,  float fov,  float z_near,  float z_far):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &fov
    args[1] = &z_near
    args[2] = &z_far
    api_core.godot_method_bind_ptrcall(bind_camera_set_perspective,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_projection(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_camera_set_projection,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_size(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_camera_set_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_v_offset(self,  float ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ofs
    api_core.godot_method_bind_ptrcall(bind_camera_set_v_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_zfar(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_camera_set_zfar,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_znear(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_camera_set_znear,self.godot_owner,args,NULL)
    hello('hallo2')
  def  unproject_position(self,  Vector3 world_point):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &world_point._native
    api_core.godot_method_bind_ptrcall(bind_camera_unproject_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

