from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_ysort_is_sort_enabled
cdef godot_method_bind *bind_ysort_set_sort_enabled
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_ysort_is_sort_enabled = api_core.godot_method_bind_get_method('YSort', 'is_sort_enabled')
  bind_ysort_set_sort_enabled = api_core.godot_method_bind_get_method('YSort', 'set_sort_enabled')

############################Generated class###################################
cdef class YSort(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("YSort")())
##################################Generated Properties#########################################
  @property
  def sort_enabled(self): 
    return self.get_sort_enabled()
  @sort_enabled.setter 
  def sort_enabled(self,value): 
    self.set_sort_enabled(value)

##################################Generated Methods#########################################
  def  is_sort_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_ysort_is_sort_enabled,self.godot_owner,[NULL,],&ret)
  def  set_sort_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_ysort_set_sort_enabled,self.godot_owner,[NULL,],NULL)
