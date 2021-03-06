from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptnode__get_default_input_values
cdef godot_method_bind *bind_visualscriptnode__set_default_input_values
cdef godot_method_bind *bind_visualscriptnode_get_default_input_value
cdef godot_method_bind *bind_visualscriptnode_get_visual_script
cdef godot_method_bind *bind_visualscriptnode_ports_changed_notify
cdef godot_method_bind *bind_visualscriptnode_set_default_input_value
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptnode__get_default_input_values = api_core.godot_method_bind_get_method('VisualScriptNode', '_get_default_input_values')
  bind_visualscriptnode__set_default_input_values = api_core.godot_method_bind_get_method('VisualScriptNode', '_set_default_input_values')
  bind_visualscriptnode_get_default_input_value = api_core.godot_method_bind_get_method('VisualScriptNode', 'get_default_input_value')
  bind_visualscriptnode_get_visual_script = api_core.godot_method_bind_get_method('VisualScriptNode', 'get_visual_script')
  bind_visualscriptnode_ports_changed_notify = api_core.godot_method_bind_get_method('VisualScriptNode', 'ports_changed_notify')
  bind_visualscriptnode_set_default_input_value = api_core.godot_method_bind_get_method('VisualScriptNode', 'set_default_input_value')

############################Generated class###################################
cdef class VisualScriptNode(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptNode")())
##################################Generated Properties#########################################
  @property
  def _default_input_values(self): 
    return self.get__default_input_values()
  @_default_input_values.setter 
  def _default_input_values(self,value): 
    self.set__default_input_values(value)

##################################Generated Methods#########################################
  def  _get_default_input_values(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptnode__get_default_input_values,self.godot_owner,[NULL,],&ret)
  def  _set_default_input_values(self, values):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptnode__set_default_input_values,self.godot_owner,[NULL,],NULL)
  def  get_default_input_value(self, port_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptnode_get_default_input_value,self.godot_owner,[NULL,],&ret)
  def  get_visual_script(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualScript ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptnode_get_visual_script,self.godot_owner,[NULL,],&ret)
  def  ports_changed_notify(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptnode_ports_changed_notify,self.godot_owner,[NULL,],NULL)
  def  set_default_input_value(self, port_idxvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptnode_set_default_input_value,self.godot_owner,[NULL,],NULL)
