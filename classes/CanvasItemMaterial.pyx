from classes.Material cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class CanvasItemMaterial(Material):
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
    cdef CanvasItemMaterial::BlendMode ret
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_get_blend_mode,self.godot_owner,[NULL,],&ret)
  def  get_light_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CanvasItemMaterial::LightMode ret
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_get_light_mode,self.godot_owner,[NULL,],&ret)
  def  get_particles_anim_h_frames(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_get_particles_anim_h_frames,self.godot_owner,[NULL,],&ret)
  def  get_particles_anim_loop(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_get_particles_anim_loop,self.godot_owner,[NULL,],&ret)
  def  get_particles_anim_v_frames(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_get_particles_anim_v_frames,self.godot_owner,[NULL,],&ret)
  def  get_particles_animation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_get_particles_animation,self.godot_owner,[NULL,],&ret)
  def  set_blend_mode(self, blend_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_set_blend_mode,self.godot_owner,[NULL,],NULL)
  def  set_light_mode(self, light_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_set_light_mode,self.godot_owner,[NULL,],NULL)
  def  set_particles_anim_h_frames(self, frames):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_set_particles_anim_h_frames,self.godot_owner,[NULL,],NULL)
  def  set_particles_anim_loop(self, loop):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_set_particles_anim_loop,self.godot_owner,[NULL,],NULL)
  def  set_particles_anim_v_frames(self, frames):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_set_particles_anim_v_frames,self.godot_owner,[NULL,],NULL)
  def  set_particles_animation(self, particles_anim):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitemmaterial_set_particles_animation,self.godot_owner,[NULL,],NULL)
