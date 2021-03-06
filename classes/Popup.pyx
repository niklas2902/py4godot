from classes.Control cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_popup_is_exclusive
cdef godot_method_bind *bind_popup_popup
cdef godot_method_bind *bind_popup_popup_centered
cdef godot_method_bind *bind_popup_popup_centered_clamped
cdef godot_method_bind *bind_popup_popup_centered_minsize
cdef godot_method_bind *bind_popup_popup_centered_ratio
cdef godot_method_bind *bind_popup_set_as_minsize
cdef godot_method_bind *bind_popup_set_exclusive
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_popup_is_exclusive = api_core.godot_method_bind_get_method('Popup', 'is_exclusive')
  bind_popup_popup = api_core.godot_method_bind_get_method('Popup', 'popup')
  bind_popup_popup_centered = api_core.godot_method_bind_get_method('Popup', 'popup_centered')
  bind_popup_popup_centered_clamped = api_core.godot_method_bind_get_method('Popup', 'popup_centered_clamped')
  bind_popup_popup_centered_minsize = api_core.godot_method_bind_get_method('Popup', 'popup_centered_minsize')
  bind_popup_popup_centered_ratio = api_core.godot_method_bind_get_method('Popup', 'popup_centered_ratio')
  bind_popup_set_as_minsize = api_core.godot_method_bind_get_method('Popup', 'set_as_minsize')
  bind_popup_set_exclusive = api_core.godot_method_bind_get_method('Popup', 'set_exclusive')

############################Generated class###################################
cdef class Popup(Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Popup")())
##################################Generated Properties#########################################
  @property
  def popup_exclusive(self): 
    return self.get_popup_exclusive()
  @popup_exclusive.setter 
  def popup_exclusive(self,value): 
    self.set_popup_exclusive(value)

##################################Generated Methods#########################################
  def  is_exclusive(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_popup_is_exclusive,self.godot_owner,[NULL,],&ret)
  def  popup(self, bounds):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popup_popup,self.godot_owner,[NULL,],NULL)
  def  popup_centered(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popup_popup_centered,self.godot_owner,[NULL,],NULL)
  def  popup_centered_clamped(self, sizefallback_ratio):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popup_popup_centered_clamped,self.godot_owner,[NULL,],NULL)
  def  popup_centered_minsize(self, minsize):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popup_popup_centered_minsize,self.godot_owner,[NULL,],NULL)
  def  popup_centered_ratio(self, ratio):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popup_popup_centered_ratio,self.godot_owner,[NULL,],NULL)
  def  set_as_minsize(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popup_set_as_minsize,self.godot_owner,[NULL,],NULL)
  def  set_exclusive(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popup_set_exclusive,self.godot_owner,[NULL,],NULL)
