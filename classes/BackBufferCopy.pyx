from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_backbuffercopy_get_copy_mode
cdef godot_method_bind *bind_backbuffercopy_get_rect
cdef godot_method_bind *bind_backbuffercopy_set_copy_mode
cdef godot_method_bind *bind_backbuffercopy_set_rect
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_backbuffercopy_get_copy_mode = api_core.godot_method_bind_get_method('BackBufferCopy', 'get_copy_mode')
  bind_backbuffercopy_get_rect = api_core.godot_method_bind_get_method('BackBufferCopy', 'get_rect')
  bind_backbuffercopy_set_copy_mode = api_core.godot_method_bind_get_method('BackBufferCopy', 'set_copy_mode')
  bind_backbuffercopy_set_rect = api_core.godot_method_bind_get_method('BackBufferCopy', 'set_rect')

############################Generated class###################################
cdef class BackBufferCopy(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("BackBufferCopy")())
##################################Generated Properties#########################################
  @property
  def copy_mode(self): 
    return self.get_copy_mode()
  @copy_mode.setter 
  def copy_mode(self,value): 
    self.set_copy_mode(value)
  @property
  def rect(self): 
    return self.get_rect()
  @rect.setter 
  def rect(self,value): 
    self.set_rect(value)

##################################Generated Methods#########################################
  def  get_copy_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef BackBufferCopy::CopyMode ret
    api_core.godot_method_bind_ptrcall(bind_backbuffercopy_get_copy_mode,self.godot_owner,[NULL,],&ret)
  def  get_rect(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_backbuffercopy_get_rect,self.godot_owner,[NULL,],&ret)
  def  set_copy_mode(self, copy_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_backbuffercopy_set_copy_mode,self.godot_owner,[NULL,],NULL)
  def  set_rect(self, rect):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_backbuffercopy_set_rect,self.godot_owner,[NULL,],NULL)
