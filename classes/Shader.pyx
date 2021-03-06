from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_shader_get_code
cdef godot_method_bind *bind_shader_get_default_texture_param
cdef godot_method_bind *bind_shader_get_mode
cdef godot_method_bind *bind_shader_has_param
cdef godot_method_bind *bind_shader_set_code
cdef godot_method_bind *bind_shader_set_default_texture_param
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_shader_get_code = api_core.godot_method_bind_get_method('Shader', 'get_code')
  bind_shader_get_default_texture_param = api_core.godot_method_bind_get_method('Shader', 'get_default_texture_param')
  bind_shader_get_mode = api_core.godot_method_bind_get_method('Shader', 'get_mode')
  bind_shader_has_param = api_core.godot_method_bind_get_method('Shader', 'has_param')
  bind_shader_set_code = api_core.godot_method_bind_get_method('Shader', 'set_code')
  bind_shader_set_default_texture_param = api_core.godot_method_bind_get_method('Shader', 'set_default_texture_param')

############################Generated class###################################
cdef class Shader(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Shader")())
##################################Generated Properties#########################################
  @property
  def code(self): 
    return self.get_code()
  @code.setter 
  def code(self,value): 
    self.set_code(value)

##################################Generated Methods#########################################
  def  get_code(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_shader_get_code,self.godot_owner,[NULL,],&ret)
  def  get_default_texture_param(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_shader_get_default_texture_param,self.godot_owner,[NULL,],&ret)
  def  get_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Shader::Mode ret
    api_core.godot_method_bind_ptrcall(bind_shader_get_mode,self.godot_owner,[NULL,],&ret)
  def  has_param(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_shader_has_param,self.godot_owner,[NULL,],&ret)
  def  set_code(self, code):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_shader_set_code,self.godot_owner,[NULL,],NULL)
  def  set_default_texture_param(self, paramtexture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_shader_set_default_texture_param,self.godot_owner,[NULL,],NULL)
