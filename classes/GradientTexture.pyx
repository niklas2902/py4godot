from classes.Texture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_gradienttexture__update
cdef godot_method_bind *bind_gradienttexture_get_gradient
cdef godot_method_bind *bind_gradienttexture_set_gradient
cdef godot_method_bind *bind_gradienttexture_set_width
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_gradienttexture__update = api_core.godot_method_bind_get_method('GradientTexture', '_update')
  bind_gradienttexture_get_gradient = api_core.godot_method_bind_get_method('GradientTexture', 'get_gradient')
  bind_gradienttexture_set_gradient = api_core.godot_method_bind_get_method('GradientTexture', 'set_gradient')
  bind_gradienttexture_set_width = api_core.godot_method_bind_get_method('GradientTexture', 'set_width')

############################Generated class###################################
cdef class GradientTexture(Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GradientTexture")())
##################################Generated Properties#########################################
  @property
  def gradient(self): 
    return self.get_gradient()
  @gradient.setter 
  def gradient(self,value): 
    self.set_gradient(value)
  @property
  def width(self): 
    return self.get_width()
  @width.setter 
  def width(self,value): 
    self.set_width(value)

##################################Generated Methods#########################################
  def  _update(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gradienttexture__update,self.godot_owner,[NULL,],NULL)
  def  get_gradient(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Gradient ret
    api_core.godot_method_bind_ptrcall(bind_gradienttexture_get_gradient,self.godot_owner,[NULL,],&ret)
  def  set_gradient(self, gradient):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gradienttexture_set_gradient,self.godot_owner,[NULL,],NULL)
  def  set_width(self, width):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gradienttexture_set_width,self.godot_owner,[NULL,],NULL)
