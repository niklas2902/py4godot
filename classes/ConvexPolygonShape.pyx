
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
cimport classes.Shape 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_convexpolygonshape_get_points
cdef godot_method_bind *bind_convexpolygonshape_set_points
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_convexpolygonshape_get_points = api_core.godot_method_bind_get_method('ConvexPolygonShape', 'get_points')
  bind_convexpolygonshape_set_points = api_core.godot_method_bind_get_method('ConvexPolygonShape', 'set_points')

############################Generated class###################################
cdef class ConvexPolygonShape(classes.Shape.Shape):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ConvexPolygonShape")())
##################################Generated Properties#########################################
  @property
  def points(self): 
    return self.get_points()
  @points.setter 
  def points(self,value): 
    self.set_points(value)

##################################Generated Methods#########################################
  def  get_points(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_convexpolygonshape_get_points,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_points(self,  PoolVector3Array points):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &points._native
    api_core.godot_method_bind_ptrcall(bind_convexpolygonshape_set_points,self.godot_owner,args,NULL)
    hello('hallo2')
