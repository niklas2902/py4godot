
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
cimport classes.NavigationMesh
cimport classes.Object
cimport classes.Spatial 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_navigation_get_closest_point
cdef godot_method_bind *bind_navigation_get_closest_point_normal
cdef godot_method_bind *bind_navigation_get_closest_point_owner
cdef godot_method_bind *bind_navigation_get_closest_point_to_segment
cdef godot_method_bind *bind_navigation_get_simple_path
cdef godot_method_bind *bind_navigation_get_up_vector
cdef godot_method_bind *bind_navigation_navmesh_add
cdef godot_method_bind *bind_navigation_navmesh_remove
cdef godot_method_bind *bind_navigation_navmesh_set_transform
cdef godot_method_bind *bind_navigation_set_up_vector
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_navigation_get_closest_point = api_core.godot_method_bind_get_method('Navigation', 'get_closest_point')
  bind_navigation_get_closest_point_normal = api_core.godot_method_bind_get_method('Navigation', 'get_closest_point_normal')
  bind_navigation_get_closest_point_owner = api_core.godot_method_bind_get_method('Navigation', 'get_closest_point_owner')
  bind_navigation_get_closest_point_to_segment = api_core.godot_method_bind_get_method('Navigation', 'get_closest_point_to_segment')
  bind_navigation_get_simple_path = api_core.godot_method_bind_get_method('Navigation', 'get_simple_path')
  bind_navigation_get_up_vector = api_core.godot_method_bind_get_method('Navigation', 'get_up_vector')
  bind_navigation_navmesh_add = api_core.godot_method_bind_get_method('Navigation', 'navmesh_add')
  bind_navigation_navmesh_remove = api_core.godot_method_bind_get_method('Navigation', 'navmesh_remove')
  bind_navigation_navmesh_set_transform = api_core.godot_method_bind_get_method('Navigation', 'navmesh_set_transform')
  bind_navigation_set_up_vector = api_core.godot_method_bind_get_method('Navigation', 'set_up_vector')

############################Generated class###################################
cdef class Navigation(classes.Spatial.Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Navigation")())
##################################Generated Properties#########################################
  @property
  def up_vector(self): 
    return self.get_up_vector()
  @up_vector.setter 
  def up_vector(self,value): 
    self.set_up_vector(value)

##################################Generated Methods#########################################
  def  get_closest_point(self,  Vector3 to_point):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &to_point._native
    api_core.godot_method_bind_ptrcall(bind_navigation_get_closest_point,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_closest_point_normal(self,  Vector3 to_point):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &to_point._native
    api_core.godot_method_bind_ptrcall(bind_navigation_get_closest_point_normal,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_closest_point_owner(self,  Vector3 to_point):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &to_point._native
    api_core.godot_method_bind_ptrcall(bind_navigation_get_closest_point_owner,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_closest_point_to_segment(self,  Vector3 start,  Vector3 end,  bool use_collision):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[3]

    args[0] = &start._native
    args[1] = &end._native
    args[2] = &use_collision
    api_core.godot_method_bind_ptrcall(bind_navigation_get_closest_point_to_segment,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_simple_path(self,  Vector3 start,  Vector3 end,  bool optimize):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[3]

    args[0] = &start._native
    args[1] = &end._native
    args[2] = &optimize
    api_core.godot_method_bind_ptrcall(bind_navigation_get_simple_path,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_up_vector(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigation_get_up_vector,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  navmesh_add(self,  classes.NavigationMesh.NavigationMesh mesh,  Transform xform,  classes.Object.Object owner):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[3]

    args[0] = mesh.godot_owner
    args[1] = &xform._native
    args[2] = owner.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigation_navmesh_add,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  navmesh_remove(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_navigation_navmesh_remove,self.godot_owner,args,NULL)
    hello('hallo2')
  def  navmesh_set_transform(self,  int id,  Transform xform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &xform._native
    api_core.godot_method_bind_ptrcall(bind_navigation_navmesh_set_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_up_vector(self,  Vector3 up):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &up._native
    api_core.godot_method_bind_ptrcall(bind_navigation_set_up_vector,self.godot_owner,args,NULL)
    hello('hallo2')
