
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
cdef godot_method_bind *bind_visualscriptselect_get_typed
cdef godot_method_bind *bind_visualscriptselect_set_typed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptselect_get_typed = api_core.godot_method_bind_get_method('VisualScriptSelect', 'get_typed')
  bind_visualscriptselect_set_typed = api_core.godot_method_bind_get_method('VisualScriptSelect', 'set_typed')

############################Generated class###################################
cdef class VisualScriptSelect(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptSelect")())
##################################Generated Properties#########################################
  @property
  def type(self): 
    return self.get_type()
  @type.setter 
  def type(self,value): 
    self.set_type(value)

##################################Generated Methods#########################################
  def  get_typed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Type* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptselect_get_typed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_typed(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_visualscriptselect_set_typed,self.godot_owner,args,NULL)
    hello('hallo2')
