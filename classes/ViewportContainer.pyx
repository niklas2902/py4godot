from classes.Container cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_viewportcontainer__input
cdef godot_method_bind *bind_viewportcontainer__unhandled_input
cdef godot_method_bind *bind_viewportcontainer_get_stretch_shrink
cdef godot_method_bind *bind_viewportcontainer_is_stretch_enabled
cdef godot_method_bind *bind_viewportcontainer_set_stretch
cdef godot_method_bind *bind_viewportcontainer_set_stretch_shrink
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_viewportcontainer__input = api_core.godot_method_bind_get_method('ViewportContainer', '_input')
  bind_viewportcontainer__unhandled_input = api_core.godot_method_bind_get_method('ViewportContainer', '_unhandled_input')
  bind_viewportcontainer_get_stretch_shrink = api_core.godot_method_bind_get_method('ViewportContainer', 'get_stretch_shrink')
  bind_viewportcontainer_is_stretch_enabled = api_core.godot_method_bind_get_method('ViewportContainer', 'is_stretch_enabled')
  bind_viewportcontainer_set_stretch = api_core.godot_method_bind_get_method('ViewportContainer', 'set_stretch')
  bind_viewportcontainer_set_stretch_shrink = api_core.godot_method_bind_get_method('ViewportContainer', 'set_stretch_shrink')

############################Generated class###################################
cdef class ViewportContainer(Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ViewportContainer")())
##################################Generated Properties#########################################
  @property
  def stretch(self): 
    return self.get_stretch()
  @stretch.setter 
  def stretch(self,value): 
    self.set_stretch(value)
  @property
  def stretch_shrink(self): 
    return self.get_stretch_shrink()
  @stretch_shrink.setter 
  def stretch_shrink(self,value): 
    self.set_stretch_shrink(value)

##################################Generated Methods#########################################
  def  _input(self, event):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewportcontainer__input,self.godot_owner,[NULL,],NULL)
  def  _unhandled_input(self, event):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewportcontainer__unhandled_input,self.godot_owner,[NULL,],NULL)
  def  get_stretch_shrink(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_viewportcontainer_get_stretch_shrink,self.godot_owner,[NULL,],&ret)
  def  is_stretch_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_viewportcontainer_is_stretch_enabled,self.godot_owner,[NULL,],&ret)
  def  set_stretch(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewportcontainer_set_stretch,self.godot_owner,[NULL,],NULL)
  def  set_stretch_shrink(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewportcontainer_set_stretch_shrink,self.godot_owner,[NULL,],NULL)
