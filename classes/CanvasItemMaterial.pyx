
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
cimport classes.Material 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_canvasitemmaterial_get_blend_mode
cdef godot_method_bind *bind_canvasitemmaterial_get_light_mode
cdef godot_method_bind *bind_canvasitemmaterial_get_particles_anim_h_frames
cdef godot_method_bind *bind_canvasitemmaterial_get_particles_anim_loop
cdef godot_method_bind *bind_canvasitemmaterial_get_particles_anim_v_frames
cdef godot_method_bind *bind_canvasitemmaterial_get_particles_animation
cdef godot_method_bind *bind_canvasitemmaterial_set_blend_mode
cdef godot_method_bind *bind_canvasitemmaterial_set_light_mode
cdef godot_method_bind *bind_canvasitemmaterial_set_particles_anim_h_frames
cdef godot_method_bind *bind_canvasitemmaterial_set_particles_anim_loop
cdef godot_method_bind *bind_canvasitemmaterial_set_particles_anim_v_frames
cdef godot_method_bind *bind_canvasitemmaterial_set_particles_animation
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_canvasitemmaterial_get_blend_mode = api_core.godot_method_bind_get_method('CanvasItemMaterial', 'get_blend_mode')
  bind_canvasitemmaterial_get_light_mode = api_core.godot_method_bind_get_method('CanvasItemMaterial', 'get_light_mode')
  bind_canvasitemmaterial_get_particles_anim_h_frames = api_core.godot_method_bind_get_method('CanvasItemMaterial', 'get_particles_anim_h_frames')
  bind_canvasitemmaterial_get_particles_anim_loop = api_core.godot_method_bind_get_method('CanvasItemMaterial', 'get_particles_anim_loop')
  bind_canvasitemmaterial_get_particles_anim_v_frames = api_core.godot_method_bind_get_method('CanvasItemMaterial', 'get_particles_anim_v_frames')
  bind_canvasitemmaterial_get_particles_animation = api_core.godot_method_bind_get_method('CanvasItemMaterial', 'get_particles_animation')
  bind_canvasitemmaterial_set_blend_mode = api_core.godot_method_bind_get_method('CanvasItemMaterial', 'set_blend_mode')
  bind_canvasitemmaterial_set_light_mode = api_core.godot_method_bind_get_method('CanvasItemMaterial', 'set_light_mode')
  bind_canvasitemmaterial_set_particles_anim_h_frames = api_core.godot_method_bind_get_method('CanvasItemMaterial', 'set_particles_anim_h_frames')
  bind_canvasitemmaterial_set_particles_anim_loop = api_core.godot_method_bind_get_method('CanvasItemMaterial', 'set_particles_anim_loop')
  bind_canvasitemmaterial_set_particles_anim_v_frames = api_core.godot_method_bind_get_method('CanvasItemMaterial', 'set_particles_anim_v_frames')
  bind_canvasitemmaterial_set_particles_animation = api_core.godot_method_bind_get_method('CanvasItemMaterial', 'set_particles_animation')

############################Generated class###################################
cdef class CanvasItemMaterial(classes.Material.Material):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CanvasItemMaterial")())
##################################Generated Properties#########################################
  @property
  def blend_mode(self): 
    return self.get_blend_mode()
  @blend_mode.setter 
  def blend_mode(self,value): 
    self.set_blend_mode(value)
  @property
  def light_mode(self): 
    return self.get_light_mode()
  @light_mode.setter 
  def light_mode(self,value): 
    self.set_light_mode(value)
  @property
  def particles_anim_h_frames(self): 
    return self.get_particles_anim_h_frames()
  @particles_anim_h_frames.setter 
  def particles_anim_h_frames(self,value): 
    self.set_particles_anim_h_frames(value)
  @property
  def particles_anim_loop(self): 
    return self.get_particles_anim_loop()
  @particles_anim_loop.setter 
  def particles_anim_loop(self,value): 
    self.set_particles_anim_loop(value)
  @property
  def particles_anim_v_frames(self): 
    return self.get_particles_anim_v_frames()
  @particles_anim_v_frames.setter 
  def particles_anim_v_frames(self,value): 
    self.set_particles_anim_v_frames(value)
  @property
  def particles_animation(self): 
    return self.get_particles_animation()
  @particles_animation.setter 
  def particles_animation(self,value): 
    self.set_particles_animation(value)

##################################Generated Methods#########################################
  def  get_blend_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef CanvasItemMaterial_BlendMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_get_blend_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_light_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef CanvasItemMaterial_LightMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_get_light_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_particles_anim_h_frames(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_get_particles_anim_h_frames,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_particles_anim_loop(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_get_particles_anim_loop,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_particles_anim_v_frames(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_get_particles_anim_v_frames,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_particles_animation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_get_particles_animation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_blend_mode(self,  int blend_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &blend_mode
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_set_blend_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_light_mode(self,  int light_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &light_mode
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_set_light_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_particles_anim_h_frames(self,  int frames):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &frames
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_set_particles_anim_h_frames,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_particles_anim_loop(self,  bool loop):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &loop
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_set_particles_anim_loop,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_particles_anim_v_frames(self,  int frames):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &frames
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_set_particles_anim_v_frames,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_particles_animation(self,  bool particles_anim):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &particles_anim
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_set_particles_animation,self.godot_owner,args,NULL)
    hello('hallo2')
