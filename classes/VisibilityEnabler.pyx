from classes.VisibilityNotifier cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visibilityenabler__node_removed
cdef godot_method_bind *bind_visibilityenabler_is_enabler_enabled
cdef godot_method_bind *bind_visibilityenabler_set_enabler
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visibilityenabler__node_removed = api_core.godot_method_bind_get_method('VisibilityEnabler', '_node_removed')
  bind_visibilityenabler_is_enabler_enabled = api_core.godot_method_bind_get_method('VisibilityEnabler', 'is_enabler_enabled')
  bind_visibilityenabler_set_enabler = api_core.godot_method_bind_get_method('VisibilityEnabler', 'set_enabler')

############################Generated class###################################
cdef class VisibilityEnabler(VisibilityNotifier):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisibilityEnabler")())
##################################Generated Properties#########################################
  @property
  def freeze_bodies(self): 
    return self.get_freeze_bodies()
  @freeze_bodies.setter 
  def freeze_bodies(self,value): 
    self.set_freeze_bodies(value)
  @property
  def pause_animations(self): 
    return self.get_pause_animations()
  @pause_animations.setter 
  def pause_animations(self,value): 
    self.set_pause_animations(value)

##################################Generated Methods#########################################
  def  _node_removed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visibilityenabler__node_removed,self.godot_owner,[NULL,],NULL)
  def  is_enabler_enabled(self, enabler):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visibilityenabler_is_enabler_enabled,self.godot_owner,[NULL,],&ret)
  def  set_enabler(self, enablerenabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visibilityenabler_set_enabler,self.godot_owner,[NULL,],NULL)
