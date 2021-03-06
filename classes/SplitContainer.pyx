from classes.Container cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_splitcontainer__gui_input
cdef godot_method_bind *bind_splitcontainer_clamp_split_offset
cdef godot_method_bind *bind_splitcontainer_get_dragger_visibility
cdef godot_method_bind *bind_splitcontainer_get_split_offset
cdef godot_method_bind *bind_splitcontainer_is_collapsed
cdef godot_method_bind *bind_splitcontainer_set_collapsed
cdef godot_method_bind *bind_splitcontainer_set_dragger_visibility
cdef godot_method_bind *bind_splitcontainer_set_split_offset
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_splitcontainer__gui_input = api_core.godot_method_bind_get_method('SplitContainer', '_gui_input')
  bind_splitcontainer_clamp_split_offset = api_core.godot_method_bind_get_method('SplitContainer', 'clamp_split_offset')
  bind_splitcontainer_get_dragger_visibility = api_core.godot_method_bind_get_method('SplitContainer', 'get_dragger_visibility')
  bind_splitcontainer_get_split_offset = api_core.godot_method_bind_get_method('SplitContainer', 'get_split_offset')
  bind_splitcontainer_is_collapsed = api_core.godot_method_bind_get_method('SplitContainer', 'is_collapsed')
  bind_splitcontainer_set_collapsed = api_core.godot_method_bind_get_method('SplitContainer', 'set_collapsed')
  bind_splitcontainer_set_dragger_visibility = api_core.godot_method_bind_get_method('SplitContainer', 'set_dragger_visibility')
  bind_splitcontainer_set_split_offset = api_core.godot_method_bind_get_method('SplitContainer', 'set_split_offset')

############################Generated class###################################
cdef class SplitContainer(Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SplitContainer")())
##################################Generated Properties#########################################
  @property
  def collapsed(self): 
    return self.get_collapsed()
  @collapsed.setter 
  def collapsed(self,value): 
    self.set_collapsed(value)
  @property
  def dragger_visibility(self): 
    return self.get_dragger_visibility()
  @dragger_visibility.setter 
  def dragger_visibility(self,value): 
    self.set_dragger_visibility(value)
  @property
  def split_offset(self): 
    return self.get_split_offset()
  @split_offset.setter 
  def split_offset(self,value): 
    self.set_split_offset(value)

##################################Generated Methods#########################################
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_splitcontainer__gui_input,self.godot_owner,[NULL,],NULL)
  def  clamp_split_offset(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_splitcontainer_clamp_split_offset,self.godot_owner,[NULL,],NULL)
  def  get_dragger_visibility(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SplitContainer::DraggerVisibility ret
    api_core.godot_method_bind_ptrcall(bind_splitcontainer_get_dragger_visibility,self.godot_owner,[NULL,],&ret)
  def  get_split_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_splitcontainer_get_split_offset,self.godot_owner,[NULL,],&ret)
  def  is_collapsed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_splitcontainer_is_collapsed,self.godot_owner,[NULL,],&ret)
  def  set_collapsed(self, collapsed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_splitcontainer_set_collapsed,self.godot_owner,[NULL,],NULL)
  def  set_dragger_visibility(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_splitcontainer_set_dragger_visibility,self.godot_owner,[NULL,],NULL)
  def  set_split_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_splitcontainer_set_split_offset,self.godot_owner,[NULL,],NULL)
