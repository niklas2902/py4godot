
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode 

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
cdef class VisualShaderNodeCompare(classes.VisualShaderNode.VisualShaderNode):
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

    cdef VisualShaderNodeCompare_ComparisonType* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodecompare_get_comparison_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_condition(self):
    cdef godot_object *_owner = self.godot_owner

    cdef VisualShaderNodeCompare_Condition* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodecompare_get_condition,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_function(self):
    cdef godot_object *_owner = self.godot_owner

    cdef VisualShaderNodeCompare_Function* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodecompare_get_function,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_comparison_type(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecompare_set_comparison_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_condition(self,  int condition):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &condition
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecompare_set_condition,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_function(self,  int func):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &func
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecompare_set_function,self.godot_owner,args,NULL)
    hello('hallo2')
