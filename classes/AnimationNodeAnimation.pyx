from classes.AnimationRootNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationnodeanimation_get_animation
cdef godot_method_bind *bind_animationnodeanimation_set_animation
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationnodeanimation_get_animation = api_core.godot_method_bind_get_method('AnimationNodeAnimation', 'get_animation')
  bind_animationnodeanimation_set_animation = api_core.godot_method_bind_get_method('AnimationNodeAnimation', 'set_animation')

############################Generated class###################################
cdef class AnimationNodeAnimation(AnimationRootNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNodeAnimation")())
##################################Generated Properties#########################################
  @property
  def animation(self): 
    return self.get_animation()
  @animation.setter 
  def animation(self,value): 
    self.set_animation(value)

##################################Generated Methods#########################################
  def  get_animation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeanimation_get_animation,self.godot_owner,[NULL,],&ret)
  def  set_animation(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeanimation_set_animation,self.godot_owner,[NULL,],NULL)
