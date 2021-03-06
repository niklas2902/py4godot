from classes.AnimationNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationnodeadd2_is_using_sync
cdef godot_method_bind *bind_animationnodeadd2_set_use_sync
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationnodeadd2_is_using_sync = api_core.godot_method_bind_get_method('AnimationNodeAdd2', 'is_using_sync')
  bind_animationnodeadd2_set_use_sync = api_core.godot_method_bind_get_method('AnimationNodeAdd2', 'set_use_sync')

############################Generated class###################################
cdef class AnimationNodeAdd2(AnimationNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNodeAdd2")())
##################################Generated Properties#########################################
  @property
  def sync(self): 
    return self.get_sync()
  @sync.setter 
  def sync(self,value): 
    self.set_sync(value)

##################################Generated Methods#########################################
  def  is_using_sync(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeadd2_is_using_sync,self.godot_owner,[NULL,],&ret)
  def  set_use_sync(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeadd2_set_use_sync,self.godot_owner,[NULL,],NULL)
