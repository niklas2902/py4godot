from classes.VisualShaderNodeUniform cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodetextureuniform_get_color_default
cdef godot_method_bind *bind_visualshadernodetextureuniform_get_texture_type
cdef godot_method_bind *bind_visualshadernodetextureuniform_set_color_default
cdef godot_method_bind *bind_visualshadernodetextureuniform_set_texture_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodetextureuniform_get_color_default = api_core.godot_method_bind_get_method('VisualShaderNodeTextureUniform', 'get_color_default')
  bind_visualshadernodetextureuniform_get_texture_type = api_core.godot_method_bind_get_method('VisualShaderNodeTextureUniform', 'get_texture_type')
  bind_visualshadernodetextureuniform_set_color_default = api_core.godot_method_bind_get_method('VisualShaderNodeTextureUniform', 'set_color_default')
  bind_visualshadernodetextureuniform_set_texture_type = api_core.godot_method_bind_get_method('VisualShaderNodeTextureUniform', 'set_texture_type')

############################Generated class###################################
cdef class VisualShaderNodeTextureUniform(VisualShaderNodeUniform):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeTextureUniform")())
##################################Generated Properties#########################################
  @property
  def color_default(self): 
    return self.get_color_default()
  @color_default.setter 
  def color_default(self,value): 
    self.set_color_default(value)
  @property
  def texture_type(self): 
    return self.get_texture_type()
  @texture_type.setter 
  def texture_type(self,value): 
    self.set_texture_type(value)

##################################Generated Methods#########################################
  def  get_color_default(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualShaderNodeTextureUniform::ColorDefault ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetextureuniform_get_color_default,self.godot_owner,[NULL,],&ret)
  def  get_texture_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualShaderNodeTextureUniform::TextureType ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetextureuniform_get_texture_type,self.godot_owner,[NULL,],&ret)
  def  set_color_default(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetextureuniform_set_color_default,self.godot_owner,[NULL,],NULL)
  def  set_texture_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetextureuniform_set_texture_type,self.godot_owner,[NULL,],NULL)
