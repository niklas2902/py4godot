from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_script_can_instance
cdef godot_method_bind *bind_script_get_base_script
cdef godot_method_bind *bind_script_get_instance_base_type
cdef godot_method_bind *bind_script_get_property_default_value
cdef godot_method_bind *bind_script_get_script_constant_map
cdef godot_method_bind *bind_script_get_script_method_list
cdef godot_method_bind *bind_script_get_script_property_list
cdef godot_method_bind *bind_script_get_script_signal_list
cdef godot_method_bind *bind_script_get_source_code
cdef godot_method_bind *bind_script_has_script_signal
cdef godot_method_bind *bind_script_has_source_code
cdef godot_method_bind *bind_script_instance_has
cdef godot_method_bind *bind_script_is_tool
cdef godot_method_bind *bind_script_reload
cdef godot_method_bind *bind_script_set_source_code
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_script_can_instance = api_core.godot_method_bind_get_method('Script', 'can_instance')
  bind_script_get_base_script = api_core.godot_method_bind_get_method('Script', 'get_base_script')
  bind_script_get_instance_base_type = api_core.godot_method_bind_get_method('Script', 'get_instance_base_type')
  bind_script_get_property_default_value = api_core.godot_method_bind_get_method('Script', 'get_property_default_value')
  bind_script_get_script_constant_map = api_core.godot_method_bind_get_method('Script', 'get_script_constant_map')
  bind_script_get_script_method_list = api_core.godot_method_bind_get_method('Script', 'get_script_method_list')
  bind_script_get_script_property_list = api_core.godot_method_bind_get_method('Script', 'get_script_property_list')
  bind_script_get_script_signal_list = api_core.godot_method_bind_get_method('Script', 'get_script_signal_list')
  bind_script_get_source_code = api_core.godot_method_bind_get_method('Script', 'get_source_code')
  bind_script_has_script_signal = api_core.godot_method_bind_get_method('Script', 'has_script_signal')
  bind_script_has_source_code = api_core.godot_method_bind_get_method('Script', 'has_source_code')
  bind_script_instance_has = api_core.godot_method_bind_get_method('Script', 'instance_has')
  bind_script_is_tool = api_core.godot_method_bind_get_method('Script', 'is_tool')
  bind_script_reload = api_core.godot_method_bind_get_method('Script', 'reload')
  bind_script_set_source_code = api_core.godot_method_bind_get_method('Script', 'set_source_code')

############################Generated class###################################
cdef class Script(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Script")())
##################################Generated Properties#########################################
  @property
  def source_code(self): 
    return self.get_source_code()
  @source_code.setter 
  def source_code(self,value): 
    self.set_source_code(value)

##################################Generated Methods#########################################
  def  can_instance(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_script_can_instance,self.godot_owner,[NULL,],&ret)
  def  get_base_script(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Script ret
    api_core.godot_method_bind_ptrcall(bind_script_get_base_script,self.godot_owner,[NULL,],&ret)
  def  get_instance_base_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_script_get_instance_base_type,self.godot_owner,[NULL,],&ret)
  def  get_property_default_value(self, property):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_script_get_property_default_value,self.godot_owner,[NULL,],&ret)
  def  get_script_constant_map(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_script_get_script_constant_map,self.godot_owner,[NULL,],&ret)
  def  get_script_method_list(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_script_get_script_method_list,self.godot_owner,[NULL,],&ret)
  def  get_script_property_list(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_script_get_script_property_list,self.godot_owner,[NULL,],&ret)
  def  get_script_signal_list(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_script_get_script_signal_list,self.godot_owner,[NULL,],&ret)
  def  get_source_code(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_script_get_source_code,self.godot_owner,[NULL,],&ret)
  def  has_script_signal(self, signal_name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_script_has_script_signal,self.godot_owner,[NULL,],&ret)
  def  has_source_code(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_script_has_source_code,self.godot_owner,[NULL,],&ret)
  def  instance_has(self, base_object):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_script_instance_has,self.godot_owner,[NULL,],&ret)
  def  is_tool(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_script_is_tool,self.godot_owner,[NULL,],&ret)
  def  reload(self, keep_state):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_script_reload,self.godot_owner,[NULL,],&ret)
  def  set_source_code(self, source):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_script_set_source_code,self.godot_owner,[NULL,],NULL)
