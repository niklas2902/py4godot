from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscripttypecast_get_base_script
cdef godot_method_bind *bind_visualscripttypecast_get_base_type
cdef godot_method_bind *bind_visualscripttypecast_set_base_script
cdef godot_method_bind *bind_visualscripttypecast_set_base_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscripttypecast_get_base_script = api_core.godot_method_bind_get_method('VisualScriptTypeCast', 'get_base_script')
  bind_visualscripttypecast_get_base_type = api_core.godot_method_bind_get_method('VisualScriptTypeCast', 'get_base_type')
  bind_visualscripttypecast_set_base_script = api_core.godot_method_bind_get_method('VisualScriptTypeCast', 'set_base_script')
  bind_visualscripttypecast_set_base_type = api_core.godot_method_bind_get_method('VisualScriptTypeCast', 'set_base_type')

############################Generated class###################################
cdef class VisualScriptTypeCast(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptTypeCast")())
##################################Generated Properties#########################################
  @property
  def base_script(self): 
    return self.get_base_script()
  @base_script.setter 
  def base_script(self,value): 
    self.set_base_script(value)
  @property
  def base_type(self): 
    return self.get_base_type()
  @base_type.setter 
  def base_type(self,value): 
    self.set_base_type(value)

##################################Generated Methods#########################################
  def  get_base_script(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscripttypecast_get_base_script,self.godot_owner,[NULL,],&ret)
  def  get_base_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscripttypecast_get_base_type,self.godot_owner,[NULL,],&ret)
  def  set_base_script(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscripttypecast_set_base_script,self.godot_owner,[NULL,],NULL)
  def  set_base_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscripttypecast_set_base_type,self.godot_owner,[NULL,],NULL)
