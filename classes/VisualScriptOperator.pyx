
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
cimport classes.VisualScriptNode 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptoperator_get_operator
cdef godot_method_bind *bind_visualscriptoperator_get_typed
cdef godot_method_bind *bind_visualscriptoperator_set_operator
cdef godot_method_bind *bind_visualscriptoperator_set_typed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptoperator_get_operator = api_core.godot_method_bind_get_method('VisualScriptOperator', 'get_operator')
  bind_visualscriptoperator_get_typed = api_core.godot_method_bind_get_method('VisualScriptOperator', 'get_typed')
  bind_visualscriptoperator_set_operator = api_core.godot_method_bind_get_method('VisualScriptOperator', 'set_operator')
  bind_visualscriptoperator_set_typed = api_core.godot_method_bind_get_method('VisualScriptOperator', 'set_typed')

############################Generated class###################################
cdef class VisualScriptOperator(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptOperator")())
##################################Generated Properties#########################################
  @property
  def operator(self): 
    return self.get_operator()
  @operator.setter 
  def operator(self,value): 
    self.set_operator(value)
  @property
  def type(self): 
    return self.get_type()
  @type.setter 
  def type(self,value): 
    self.set_type(value)

##################################Generated Methods#########################################
  def  get_operator(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Variant_Operator* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptoperator_get_operator,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_typed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Variant_Type* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptoperator_get_typed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_operator(self,  int op):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &op
    api_core.godot_method_bind_ptrcall(bind_visualscriptoperator_set_operator,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_typed(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_visualscriptoperator_set_typed,self.godot_owner,args,NULL)
    hello('hallo2')
