from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptlists_add_input_data_port
cdef godot_method_bind *bind_visualscriptlists_add_output_data_port
cdef godot_method_bind *bind_visualscriptlists_remove_input_data_port
cdef godot_method_bind *bind_visualscriptlists_remove_output_data_port
cdef godot_method_bind *bind_visualscriptlists_set_input_data_port_name
cdef godot_method_bind *bind_visualscriptlists_set_input_data_port_type
cdef godot_method_bind *bind_visualscriptlists_set_output_data_port_name
cdef godot_method_bind *bind_visualscriptlists_set_output_data_port_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptlists_add_input_data_port = api_core.godot_method_bind_get_method('VisualScriptLists', 'add_input_data_port')
  bind_visualscriptlists_add_output_data_port = api_core.godot_method_bind_get_method('VisualScriptLists', 'add_output_data_port')
  bind_visualscriptlists_remove_input_data_port = api_core.godot_method_bind_get_method('VisualScriptLists', 'remove_input_data_port')
  bind_visualscriptlists_remove_output_data_port = api_core.godot_method_bind_get_method('VisualScriptLists', 'remove_output_data_port')
  bind_visualscriptlists_set_input_data_port_name = api_core.godot_method_bind_get_method('VisualScriptLists', 'set_input_data_port_name')
  bind_visualscriptlists_set_input_data_port_type = api_core.godot_method_bind_get_method('VisualScriptLists', 'set_input_data_port_type')
  bind_visualscriptlists_set_output_data_port_name = api_core.godot_method_bind_get_method('VisualScriptLists', 'set_output_data_port_name')
  bind_visualscriptlists_set_output_data_port_type = api_core.godot_method_bind_get_method('VisualScriptLists', 'set_output_data_port_type')

############################Generated class###################################
cdef class VisualScriptLists(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptLists")())
##################################Generated Methods#########################################
  def  add_input_data_port(self, typenameindex):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_add_input_data_port,self.godot_owner,[NULL,],NULL)
  def  add_output_data_port(self, typenameindex):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_add_output_data_port,self.godot_owner,[NULL,],NULL)
  def  remove_input_data_port(self, index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_remove_input_data_port,self.godot_owner,[NULL,],NULL)
  def  remove_output_data_port(self, index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_remove_output_data_port,self.godot_owner,[NULL,],NULL)
  def  set_input_data_port_name(self, indexname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_set_input_data_port_name,self.godot_owner,[NULL,],NULL)
  def  set_input_data_port_type(self, indextype):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_set_input_data_port_type,self.godot_owner,[NULL,],NULL)
  def  set_output_data_port_name(self, indexname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_set_output_data_port_name,self.godot_owner,[NULL,],NULL)
  def  set_output_data_port_type(self, indextype):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_set_output_data_port_type,self.godot_owner,[NULL,],NULL)
