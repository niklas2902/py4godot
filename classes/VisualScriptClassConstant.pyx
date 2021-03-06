from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptclassconstant_get_base_type
cdef godot_method_bind *bind_visualscriptclassconstant_get_class_constant
cdef godot_method_bind *bind_visualscriptclassconstant_set_base_type
cdef godot_method_bind *bind_visualscriptclassconstant_set_class_constant
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptclassconstant_get_base_type = api_core.godot_method_bind_get_method('VisualScriptClassConstant', 'get_base_type')
  bind_visualscriptclassconstant_get_class_constant = api_core.godot_method_bind_get_method('VisualScriptClassConstant', 'get_class_constant')
  bind_visualscriptclassconstant_set_base_type = api_core.godot_method_bind_get_method('VisualScriptClassConstant', 'set_base_type')
  bind_visualscriptclassconstant_set_class_constant = api_core.godot_method_bind_get_method('VisualScriptClassConstant', 'set_class_constant')

############################Generated class###################################
cdef class VisualScriptClassConstant(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptClassConstant")())
##################################Generated Properties#########################################
  @property
  def base_type(self): 
    return self.get_base_type()
  @base_type.setter 
  def base_type(self,value): 
    self.set_base_type(value)
  @property
  def constant(self): 
    return self.get_constant()
  @constant.setter 
  def constant(self,value): 
    self.set_constant(value)

##################################Generated Methods#########################################
  def  get_base_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptclassconstant_get_base_type,self.godot_owner,[NULL,],&ret)
  def  get_class_constant(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptclassconstant_get_class_constant,self.godot_owner,[NULL,],&ret)
  def  set_base_type(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptclassconstant_set_base_type,self.godot_owner,[NULL,],NULL)
  def  set_class_constant(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptclassconstant_set_class_constant,self.godot_owner,[NULL,],NULL)
