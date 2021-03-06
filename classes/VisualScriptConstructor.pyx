from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptconstructor_get_constructor
cdef godot_method_bind *bind_visualscriptconstructor_get_constructor_type
cdef godot_method_bind *bind_visualscriptconstructor_set_constructor
cdef godot_method_bind *bind_visualscriptconstructor_set_constructor_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptconstructor_get_constructor = api_core.godot_method_bind_get_method('VisualScriptConstructor', 'get_constructor')
  bind_visualscriptconstructor_get_constructor_type = api_core.godot_method_bind_get_method('VisualScriptConstructor', 'get_constructor_type')
  bind_visualscriptconstructor_set_constructor = api_core.godot_method_bind_get_method('VisualScriptConstructor', 'set_constructor')
  bind_visualscriptconstructor_set_constructor_type = api_core.godot_method_bind_get_method('VisualScriptConstructor', 'set_constructor_type')

############################Generated class###################################
cdef class VisualScriptConstructor(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptConstructor")())
##################################Generated Properties#########################################
  @property
  def constructor(self): 
    return self.get_constructor()
  @constructor.setter 
  def constructor(self,value): 
    self.set_constructor(value)
  @property
  def type(self): 
    return self.get_type()
  @type.setter 
  def type(self,value): 
    self.set_type(value)

##################################Generated Methods#########################################
  def  get_constructor(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptconstructor_get_constructor,self.godot_owner,[NULL,],&ret)
  def  get_constructor_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant::Type ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptconstructor_get_constructor_type,self.godot_owner,[NULL,],&ret)
  def  set_constructor(self, constructor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptconstructor_set_constructor,self.godot_owner,[NULL,],NULL)
  def  set_constructor_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptconstructor_set_constructor_type,self.godot_owner,[NULL,],NULL)
