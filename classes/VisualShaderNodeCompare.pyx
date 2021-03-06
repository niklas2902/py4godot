from classes.VisualShaderNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodecompare_get_comparison_type
cdef godot_method_bind *bind_visualshadernodecompare_get_condition
cdef godot_method_bind *bind_visualshadernodecompare_get_function
cdef godot_method_bind *bind_visualshadernodecompare_set_comparison_type
cdef godot_method_bind *bind_visualshadernodecompare_set_condition
cdef godot_method_bind *bind_visualshadernodecompare_set_function
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodecompare_get_comparison_type = api_core.godot_method_bind_get_method('VisualShaderNodeCompare', 'get_comparison_type')
  bind_visualshadernodecompare_get_condition = api_core.godot_method_bind_get_method('VisualShaderNodeCompare', 'get_condition')
  bind_visualshadernodecompare_get_function = api_core.godot_method_bind_get_method('VisualShaderNodeCompare', 'get_function')
  bind_visualshadernodecompare_set_comparison_type = api_core.godot_method_bind_get_method('VisualShaderNodeCompare', 'set_comparison_type')
  bind_visualshadernodecompare_set_condition = api_core.godot_method_bind_get_method('VisualShaderNodeCompare', 'set_condition')
  bind_visualshadernodecompare_set_function = api_core.godot_method_bind_get_method('VisualShaderNodeCompare', 'set_function')

############################Generated class###################################
cdef class VisualShaderNodeCompare(VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeCompare")())
##################################Generated Properties#########################################
  @property
  def condition(self): 
    return self.get_condition()
  @condition.setter 
  def condition(self,value): 
    self.set_condition(value)
  @property
  def function(self): 
    return self.get_function()
  @function.setter 
  def function(self,value): 
    self.set_function(value)
  @property
  def type(self): 
    return self.get_type()
  @type.setter 
  def type(self,value): 
    self.set_type(value)

##################################Generated Methods#########################################
  def  get_comparison_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualShaderNodeCompare::ComparisonType ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecompare_get_comparison_type,self.godot_owner,[NULL,],&ret)
  def  get_condition(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualShaderNodeCompare::Condition ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecompare_get_condition,self.godot_owner,[NULL,],&ret)
  def  get_function(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualShaderNodeCompare::Function ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecompare_get_function,self.godot_owner,[NULL,],&ret)
  def  set_comparison_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecompare_set_comparison_type,self.godot_owner,[NULL,],NULL)
  def  set_condition(self, condition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecompare_set_condition,self.godot_owner,[NULL,],NULL)
  def  set_function(self, func):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecompare_set_function,self.godot_owner,[NULL,],NULL)
