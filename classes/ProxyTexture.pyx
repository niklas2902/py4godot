from classes.Texture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_proxytexture_get_base
cdef godot_method_bind *bind_proxytexture_set_base
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_proxytexture_get_base = api_core.godot_method_bind_get_method('ProxyTexture', 'get_base')
  bind_proxytexture_set_base = api_core.godot_method_bind_get_method('ProxyTexture', 'set_base')

############################Generated class###################################
cdef class ProxyTexture(Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ProxyTexture")())
##################################Generated Properties#########################################
  @property
  def base(self): 
    return self.get_base()
  @base.setter 
  def base(self,value): 
    self.set_base(value)

##################################Generated Methods#########################################
  def  get_base(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_proxytexture_get_base,self.godot_owner,[NULL,],&ret)
  def  set_base(self, base):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proxytexture_set_base,self.godot_owner,[NULL,],NULL)
