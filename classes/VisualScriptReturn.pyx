
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
cdef godot_method_bind *bind_visualscriptreturn_get_return_type
cdef godot_method_bind *bind_visualscriptreturn_is_return_value_enabled
cdef godot_method_bind *bind_visualscriptreturn_set_enable_return_value
cdef godot_method_bind *bind_visualscriptreturn_set_return_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptreturn_get_return_type = api_core.godot_method_bind_get_method('VisualScriptReturn', 'get_return_type')
  bind_visualscriptreturn_is_return_value_enabled = api_core.godot_method_bind_get_method('VisualScriptReturn', 'is_return_value_enabled')
  bind_visualscriptreturn_set_enable_return_value = api_core.godot_method_bind_get_method('VisualScriptReturn', 'set_enable_return_value')
  bind_visualscriptreturn_set_return_type = api_core.godot_method_bind_get_method('VisualScriptReturn', 'set_return_type')

############################Generated class###################################
cdef class VisualScriptReturn(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptReturn")())
##################################Generated Properties#########################################
  @property
  def return_enabled(self): 
    return self.get_return_enabled()
  @return_enabled.setter 
  def return_enabled(self,value): 
    self.set_return_enabled(value)
  @property
  def return_type(self): 
    return self.get_return_type()
  @return_type.setter 
  def return_type(self,value): 
    self.set_return_type(value)

##################################Generated Methods#########################################
  def  get_return_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Variant_Type* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptreturn_get_return_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_return_value_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptreturn_is_return_value_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_enable_return_value(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_visualscriptreturn_set_enable_return_value,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_return_type(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_visualscriptreturn_set_return_type,self.godot_owner,args,NULL)
    hello('hallo2')
