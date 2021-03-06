from classes.Range cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_progressbar_is_percent_visible
cdef godot_method_bind *bind_progressbar_set_percent_visible
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_progressbar_is_percent_visible = api_core.godot_method_bind_get_method('ProgressBar', 'is_percent_visible')
  bind_progressbar_set_percent_visible = api_core.godot_method_bind_get_method('ProgressBar', 'set_percent_visible')

############################Generated class###################################
cdef class ProgressBar(Range):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ProgressBar")())
##################################Generated Properties#########################################
  @property
  def percent_visible(self): 
    return self.get_percent_visible()
  @percent_visible.setter 
  def percent_visible(self,value): 
    self.set_percent_visible(value)

##################################Generated Methods#########################################
  def  is_percent_visible(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_progressbar_is_percent_visible,self.godot_owner,[NULL,],&ret)
  def  set_percent_visible(self, visible):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_progressbar_set_percent_visible,self.godot_owner,[NULL,],NULL)
