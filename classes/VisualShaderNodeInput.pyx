from classes.VisualShaderNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodeinput_get_input_name
cdef godot_method_bind *bind_visualshadernodeinput_get_input_real_name
cdef godot_method_bind *bind_visualshadernodeinput_set_input_name
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodeinput_get_input_name = api_core.godot_method_bind_get_method('VisualShaderNodeInput', 'get_input_name')
  bind_visualshadernodeinput_get_input_real_name = api_core.godot_method_bind_get_method('VisualShaderNodeInput', 'get_input_real_name')
  bind_visualshadernodeinput_set_input_name = api_core.godot_method_bind_get_method('VisualShaderNodeInput', 'set_input_name')

############################Generated class###################################
cdef class VisualShaderNodeInput(VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeInput")())
##################################Generated Properties#########################################
  @property
  def input_name(self): 
    return self.get_input_name()
  @input_name.setter 
  def input_name(self,value): 
    self.set_input_name(value)

##################################Generated Methods#########################################
  def  get_input_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodeinput_get_input_name,self.godot_owner,[NULL,],&ret)
  def  get_input_real_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodeinput_get_input_real_name,self.godot_owner,[NULL,],&ret)
  def  set_input_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodeinput_set_input_name,self.godot_owner,[NULL,],NULL)
