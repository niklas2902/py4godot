from classes.VisibilityNotifier2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visibilityenabler2d__node_removed
cdef godot_method_bind *bind_visibilityenabler2d_is_enabler_enabled
cdef godot_method_bind *bind_visibilityenabler2d_set_enabler
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visibilityenabler2d__node_removed = api_core.godot_method_bind_get_method('VisibilityEnabler2D', '_node_removed')
  bind_visibilityenabler2d_is_enabler_enabled = api_core.godot_method_bind_get_method('VisibilityEnabler2D', 'is_enabler_enabled')
  bind_visibilityenabler2d_set_enabler = api_core.godot_method_bind_get_method('VisibilityEnabler2D', 'set_enabler')

############################Generated class###################################
cdef class VisibilityEnabler2D(VisibilityNotifier2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisibilityEnabler2D")())
##################################Generated Properties#########################################
  @property
  def freeze_bodies(self): 
    return self.get_freeze_bodies()
  @freeze_bodies.setter 
  def freeze_bodies(self,value): 
    self.set_freeze_bodies(value)
  @property
  def pause_animated_sprites(self): 
    return self.get_pause_animated_sprites()
  @pause_animated_sprites.setter 
  def pause_animated_sprites(self,value): 
    self.set_pause_animated_sprites(value)
  @property
  def pause_animations(self): 
    return self.get_pause_animations()
  @pause_animations.setter 
  def pause_animations(self,value): 
    self.set_pause_animations(value)
  @property
  def pause_particles(self): 
    return self.get_pause_particles()
  @pause_particles.setter 
  def pause_particles(self,value): 
    self.set_pause_particles(value)
  @property
  def physics_process_parent(self): 
    return self.get_physics_process_parent()
  @physics_process_parent.setter 
  def physics_process_parent(self,value): 
    self.set_physics_process_parent(value)
  @property
  def process_parent(self): 
    return self.get_process_parent()
  @process_parent.setter 
  def process_parent(self,value): 
    self.set_process_parent(value)

##################################Generated Methods#########################################
  def  _node_removed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visibilityenabler2d__node_removed,self.godot_owner,[NULL,],NULL)
  def  is_enabler_enabled(self, enabler):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visibilityenabler2d_is_enabler_enabled,self.godot_owner,[NULL,],&ret)
  def  set_enabler(self, enablerenabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visibilityenabler2d_set_enabler,self.godot_owner,[NULL,],NULL)
