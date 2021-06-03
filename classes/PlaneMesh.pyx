
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
cimport classes.PrimitiveMesh 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_planemesh_get_size
cdef godot_method_bind *bind_planemesh_get_subdivide_depth
cdef godot_method_bind *bind_planemesh_get_subdivide_width
cdef godot_method_bind *bind_planemesh_set_size
cdef godot_method_bind *bind_planemesh_set_subdivide_depth
cdef godot_method_bind *bind_planemesh_set_subdivide_width
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_planemesh_get_size = api_core.godot_method_bind_get_method('PlaneMesh', 'get_size')
  bind_planemesh_get_subdivide_depth = api_core.godot_method_bind_get_method('PlaneMesh', 'get_subdivide_depth')
  bind_planemesh_get_subdivide_width = api_core.godot_method_bind_get_method('PlaneMesh', 'get_subdivide_width')
  bind_planemesh_set_size = api_core.godot_method_bind_get_method('PlaneMesh', 'set_size')
  bind_planemesh_set_subdivide_depth = api_core.godot_method_bind_get_method('PlaneMesh', 'set_subdivide_depth')
  bind_planemesh_set_subdivide_width = api_core.godot_method_bind_get_method('PlaneMesh', 'set_subdivide_width')

############################Generated class###################################
cdef class PlaneMesh(classes.PrimitiveMesh.PrimitiveMesh):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PlaneMesh")())
##################################Generated Properties#########################################
  @property
  def size(self): 
    return self.get_size()
  @size.setter 
  def size(self,value): 
    self.set_size(value)
  @property
  def subdivide_depth(self): 
    return self.get_subdivide_depth()
  @subdivide_depth.setter 
  def subdivide_depth(self,value): 
    self.set_subdivide_depth(value)
  @property
  def subdivide_width(self): 
    return self.get_subdivide_width()
  @subdivide_width.setter 
  def subdivide_width(self,value): 
    self.set_subdivide_width(value)

##################################Generated Methods#########################################
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_planemesh_get_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_subdivide_depth(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_planemesh_get_subdivide_depth,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_subdivide_width(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_planemesh_get_subdivide_width,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_size(self,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size._native
    api_core.godot_method_bind_ptrcall(bind_planemesh_set_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_subdivide_depth(self,  int subdivide):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &subdivide
    api_core.godot_method_bind_ptrcall(bind_planemesh_set_subdivide_depth,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_subdivide_width(self,  int subdivide):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &subdivide
    api_core.godot_method_bind_ptrcall(bind_planemesh_set_subdivide_width,self.godot_owner,args,NULL)
    hello('hallo2')
