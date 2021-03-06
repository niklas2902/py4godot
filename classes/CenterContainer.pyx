from classes.Container cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_centercontainer_is_using_top_left
cdef godot_method_bind *bind_centercontainer_set_use_top_left
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_centercontainer_is_using_top_left = api_core.godot_method_bind_get_method('CenterContainer', 'is_using_top_left')
  bind_centercontainer_set_use_top_left = api_core.godot_method_bind_get_method('CenterContainer', 'set_use_top_left')

############################Generated class###################################
cdef class CenterContainer(Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CenterContainer")())
##################################Generated Properties#########################################
  @property
  def use_top_left(self): 
    return self.get_use_top_left()
  @use_top_left.setter 
  def use_top_left(self,value): 
    self.set_use_top_left(value)

##################################Generated Methods#########################################
  def  is_using_top_left(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_centercontainer_is_using_top_left,self.godot_owner,[NULL,],&ret)
  def  set_use_top_left(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_centercontainer_set_use_top_left,self.godot_owner,[NULL,],NULL)
