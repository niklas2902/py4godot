
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
cimport classes.Shape2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_concavepolygonshape2d_get_segments
cdef godot_method_bind *bind_concavepolygonshape2d_set_segments
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_concavepolygonshape2d_get_segments = api_core.godot_method_bind_get_method('ConcavePolygonShape2D', 'get_segments')
  bind_concavepolygonshape2d_set_segments = api_core.godot_method_bind_get_method('ConcavePolygonShape2D', 'set_segments')

############################Generated class###################################
cdef class ConcavePolygonShape2D(classes.Shape2D.Shape2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ConcavePolygonShape2D")())
##################################Generated Properties#########################################
  @property
  def segments(self): 
    return self.get_segments()
  @segments.setter 
  def segments(self,value): 
    self.set_segments(value)

##################################Generated Methods#########################################
  def  get_segments(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_concavepolygonshape2d_get_segments,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_segments(self,  PoolVector2Array segments):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &segments._native
    api_core.godot_method_bind_ptrcall(bind_concavepolygonshape2d_set_segments,self.godot_owner,args,NULL)
    hello('hallo2')
