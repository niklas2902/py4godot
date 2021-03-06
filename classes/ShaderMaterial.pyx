from classes.Material cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_shadermaterial__shader_changed
cdef godot_method_bind *bind_shadermaterial_get_shader
cdef godot_method_bind *bind_shadermaterial_get_shader_param
cdef godot_method_bind *bind_shadermaterial_property_can_revert
cdef godot_method_bind *bind_shadermaterial_property_get_revert
cdef godot_method_bind *bind_shadermaterial_set_shader
cdef godot_method_bind *bind_shadermaterial_set_shader_param
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_shadermaterial__shader_changed = api_core.godot_method_bind_get_method('ShaderMaterial', '_shader_changed')
  bind_shadermaterial_get_shader = api_core.godot_method_bind_get_method('ShaderMaterial', 'get_shader')
  bind_shadermaterial_get_shader_param = api_core.godot_method_bind_get_method('ShaderMaterial', 'get_shader_param')
  bind_shadermaterial_property_can_revert = api_core.godot_method_bind_get_method('ShaderMaterial', 'property_can_revert')
  bind_shadermaterial_property_get_revert = api_core.godot_method_bind_get_method('ShaderMaterial', 'property_get_revert')
  bind_shadermaterial_set_shader = api_core.godot_method_bind_get_method('ShaderMaterial', 'set_shader')
  bind_shadermaterial_set_shader_param = api_core.godot_method_bind_get_method('ShaderMaterial', 'set_shader_param')

############################Generated class###################################
cdef class ShaderMaterial(Material):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ShaderMaterial")())
##################################Generated Properties#########################################
  @property
  def shader(self): 
    return self.get_shader()
  @shader.setter 
  def shader(self,value): 
    self.set_shader(value)

##################################Generated Methods#########################################
  def  _shader_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_shadermaterial__shader_changed,self.godot_owner,[NULL,],NULL)
  def  get_shader(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Shader ret
    api_core.godot_method_bind_ptrcall(bind_shadermaterial_get_shader,self.godot_owner,[NULL,],&ret)
  def  get_shader_param(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_shadermaterial_get_shader_param,self.godot_owner,[NULL,],&ret)
  def  property_can_revert(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_shadermaterial_property_can_revert,self.godot_owner,[NULL,],&ret)
  def  property_get_revert(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_shadermaterial_property_get_revert,self.godot_owner,[NULL,],&ret)
  def  set_shader(self, shader):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_shadermaterial_set_shader,self.godot_owner,[NULL,],NULL)
  def  set_shader_param(self, paramvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_shadermaterial_set_shader_param,self.godot_owner,[NULL,],NULL)
