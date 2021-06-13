
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
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_position2d__get_gizmo_extents
cdef godot_method_bind *bind_position2d__set_gizmo_extents
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_position2d__get_gizmo_extents = api_core.godot_method_bind_get_method('Position2D', '_get_gizmo_extents')
  bind_position2d__set_gizmo_extents = api_core.godot_method_bind_get_method('Position2D', '_set_gizmo_extents')

############################Generated class###################################
cdef class Position2D(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Position2D")())
##################################Generated Properties#########################################
  @property
  def gizmo_extents(self): 
    return self.get_gizmo_extents()
  @gizmo_extents.setter 
  def gizmo_extents(self,value): 
    self.set_gizmo_extents(value)

##################################Generated Methods#########################################
  def  _get_gizmo_extents(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_position2d__get_gizmo_extents,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _set_gizmo_extents(self,  float extents):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &extents
    api_core.godot_method_bind_ptrcall(bind_position2d__set_gizmo_extents,self.godot_owner,args,NULL)
    hello('hallo2')
