from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visibilitynotifier2d_get_rect
cdef godot_method_bind *bind_visibilitynotifier2d_is_on_screen
cdef godot_method_bind *bind_visibilitynotifier2d_set_rect
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visibilitynotifier2d_get_rect = api_core.godot_method_bind_get_method('VisibilityNotifier2D', 'get_rect')
  bind_visibilitynotifier2d_is_on_screen = api_core.godot_method_bind_get_method('VisibilityNotifier2D', 'is_on_screen')
  bind_visibilitynotifier2d_set_rect = api_core.godot_method_bind_get_method('VisibilityNotifier2D', 'set_rect')

############################Generated class###################################
cdef class VisibilityNotifier2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisibilityNotifier2D")())
##################################Generated Properties#########################################
  @property
  def rect(self): 
    return self.get_rect()
  @rect.setter 
  def rect(self,value): 
    self.set_rect(value)

##################################Generated Methods#########################################
  def  get_rect(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_visibilitynotifier2d_get_rect,self.godot_owner,[NULL,],&ret)
  def  is_on_screen(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visibilitynotifier2d_is_on_screen,self.godot_owner,[NULL,],&ret)
  def  set_rect(self, rect):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visibilitynotifier2d_set_rect,self.godot_owner,[NULL,],NULL)
