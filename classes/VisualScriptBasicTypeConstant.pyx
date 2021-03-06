from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptbasictypeconstant_get_basic_type
cdef godot_method_bind *bind_visualscriptbasictypeconstant_get_basic_type_constant
cdef godot_method_bind *bind_visualscriptbasictypeconstant_set_basic_type
cdef godot_method_bind *bind_visualscriptbasictypeconstant_set_basic_type_constant
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptbasictypeconstant_get_basic_type = api_core.godot_method_bind_get_method('VisualScriptBasicTypeConstant', 'get_basic_type')
  bind_visualscriptbasictypeconstant_get_basic_type_constant = api_core.godot_method_bind_get_method('VisualScriptBasicTypeConstant', 'get_basic_type_constant')
  bind_visualscriptbasictypeconstant_set_basic_type = api_core.godot_method_bind_get_method('VisualScriptBasicTypeConstant', 'set_basic_type')
  bind_visualscriptbasictypeconstant_set_basic_type_constant = api_core.godot_method_bind_get_method('VisualScriptBasicTypeConstant', 'set_basic_type_constant')

############################Generated class###################################
cdef class VisualScriptBasicTypeConstant(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptBasicTypeConstant")())
##################################Generated Properties#########################################
  @property
  def basic_type(self): 
    return self.get_basic_type()
  @basic_type.setter 
  def basic_type(self,value): 
    self.set_basic_type(value)
  @property
  def constant(self): 
    return self.get_constant()
  @constant.setter 
  def constant(self,value): 
    self.set_constant(value)

##################################Generated Methods#########################################
  def  get_basic_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant::Type ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptbasictypeconstant_get_basic_type,self.godot_owner,[NULL,],&ret)
  def  get_basic_type_constant(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptbasictypeconstant_get_basic_type_constant,self.godot_owner,[NULL,],&ret)
  def  set_basic_type(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptbasictypeconstant_set_basic_type,self.godot_owner,[NULL,],NULL)
  def  set_basic_type_constant(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptbasictypeconstant_set_basic_type_constant,self.godot_owner,[NULL,],NULL)
