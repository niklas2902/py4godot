
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.VisualScriptNode 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptconstant_get_constant_type
cdef godot_method_bind *bind_visualscriptconstant_get_constant_value
cdef godot_method_bind *bind_visualscriptconstant_set_constant_type
cdef godot_method_bind *bind_visualscriptconstant_set_constant_value
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptconstant_get_constant_type = api_core.godot_method_bind_get_method('VisualScriptConstant', 'get_constant_type')
  bind_visualscriptconstant_get_constant_value = api_core.godot_method_bind_get_method('VisualScriptConstant', 'get_constant_value')
  bind_visualscriptconstant_set_constant_type = api_core.godot_method_bind_get_method('VisualScriptConstant', 'set_constant_type')
  bind_visualscriptconstant_set_constant_value = api_core.godot_method_bind_get_method('VisualScriptConstant', 'set_constant_value')

############################Generated class###################################
cdef class VisualScriptConstant(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptConstant")())
##################################Generated Properties#########################################
  @property
  def type(self): 
    return self.get_type()
  @type.setter 
  def type(self,value): 
    self.set_type(value)
  @property
  def value(self): 
    return self.get_value()
  @value.setter 
  def value(self,value): 
    self.set_value(value)

##################################Generated Methods#########################################
  def  get_constant_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Type* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptconstant_get_constant_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_constant_value(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptconstant_get_constant_value,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  set_constant_type(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_visualscriptconstant_set_constant_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_constant_value(self,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptconstant_set_constant_value,self.godot_owner,args,NULL)
    hello('hallo2')
