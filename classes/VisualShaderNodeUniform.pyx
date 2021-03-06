from classes.VisualShaderNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodeuniform_get_uniform_name
cdef godot_method_bind *bind_visualshadernodeuniform_set_uniform_name
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodeuniform_get_uniform_name = api_core.godot_method_bind_get_method('VisualShaderNodeUniform', 'get_uniform_name')
  bind_visualshadernodeuniform_set_uniform_name = api_core.godot_method_bind_get_method('VisualShaderNodeUniform', 'set_uniform_name')

############################Generated class###################################
cdef class VisualShaderNodeUniform(VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeUniform")())
##################################Generated Properties#########################################
  @property
  def uniform_name(self): 
    return self.get_uniform_name()
  @uniform_name.setter 
  def uniform_name(self,value): 
    self.set_uniform_name(value)

##################################Generated Methods#########################################
  def  get_uniform_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodeuniform_get_uniform_name,self.godot_owner,[NULL,],&ret)
  def  set_uniform_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodeuniform_set_uniform_name,self.godot_owner,[NULL,],NULL)
