
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
cimport classes.Shape 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_concavepolygonshape_get_faces
cdef godot_method_bind *bind_concavepolygonshape_set_faces
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_concavepolygonshape_get_faces = api_core.godot_method_bind_get_method('ConcavePolygonShape', 'get_faces')
  bind_concavepolygonshape_set_faces = api_core.godot_method_bind_get_method('ConcavePolygonShape', 'set_faces')

############################Generated class###################################
cdef class ConcavePolygonShape(classes.Shape.Shape):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ConcavePolygonShape")())
##################################Generated Properties#########################################
  @property
  def data(self): 
    return self.get_data()
  @data.setter 
  def data(self,value): 
    self.set_data(value)

##################################Generated Methods#########################################
  def  get_faces(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_concavepolygonshape_get_faces,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_faces(self,  PoolVector3Array faces):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &faces._native
    api_core.godot_method_bind_ptrcall(bind_concavepolygonshape_set_faces,self.godot_owner,args,NULL)
    hello('hallo2')
