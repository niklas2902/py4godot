from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visibilitynotifier_get_aabb
cdef godot_method_bind *bind_visibilitynotifier_is_on_screen
cdef godot_method_bind *bind_visibilitynotifier_set_aabb
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visibilitynotifier_get_aabb = api_core.godot_method_bind_get_method('VisibilityNotifier', 'get_aabb')
  bind_visibilitynotifier_is_on_screen = api_core.godot_method_bind_get_method('VisibilityNotifier', 'is_on_screen')
  bind_visibilitynotifier_set_aabb = api_core.godot_method_bind_get_method('VisibilityNotifier', 'set_aabb')

############################Generated class###################################
cdef class VisibilityNotifier(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisibilityNotifier")())
##################################Generated Properties#########################################
  @property
  def aabb(self): 
    return self.get_aabb()
  @aabb.setter 
  def aabb(self,value): 
    self.set_aabb(value)

##################################Generated Methods#########################################
  def  get_aabb(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AABB ret
    api_core.godot_method_bind_ptrcall(bind_visibilitynotifier_get_aabb,self.godot_owner,[NULL,],&ret)
  def  is_on_screen(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visibilitynotifier_is_on_screen,self.godot_owner,[NULL,],&ret)
  def  set_aabb(self, rect):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visibilitynotifier_set_aabb,self.godot_owner,[NULL,],NULL)
