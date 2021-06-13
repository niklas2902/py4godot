
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
cimport classes.Material
cimport classes.CSGPrimitive 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_csgtorus_get_inner_radius
cdef godot_method_bind *bind_csgtorus_get_material
cdef godot_method_bind *bind_csgtorus_get_outer_radius
cdef godot_method_bind *bind_csgtorus_get_ring_sides
cdef godot_method_bind *bind_csgtorus_get_sides
cdef godot_method_bind *bind_csgtorus_get_smooth_faces
cdef godot_method_bind *bind_csgtorus_set_inner_radius
cdef godot_method_bind *bind_csgtorus_set_material
cdef godot_method_bind *bind_csgtorus_set_outer_radius
cdef godot_method_bind *bind_csgtorus_set_ring_sides
cdef godot_method_bind *bind_csgtorus_set_sides
cdef godot_method_bind *bind_csgtorus_set_smooth_faces
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_csgtorus_get_inner_radius = api_core.godot_method_bind_get_method('CSGTorus', 'get_inner_radius')
  bind_csgtorus_get_material = api_core.godot_method_bind_get_method('CSGTorus', 'get_material')
  bind_csgtorus_get_outer_radius = api_core.godot_method_bind_get_method('CSGTorus', 'get_outer_radius')
  bind_csgtorus_get_ring_sides = api_core.godot_method_bind_get_method('CSGTorus', 'get_ring_sides')
  bind_csgtorus_get_sides = api_core.godot_method_bind_get_method('CSGTorus', 'get_sides')
  bind_csgtorus_get_smooth_faces = api_core.godot_method_bind_get_method('CSGTorus', 'get_smooth_faces')
  bind_csgtorus_set_inner_radius = api_core.godot_method_bind_get_method('CSGTorus', 'set_inner_radius')
  bind_csgtorus_set_material = api_core.godot_method_bind_get_method('CSGTorus', 'set_material')
  bind_csgtorus_set_outer_radius = api_core.godot_method_bind_get_method('CSGTorus', 'set_outer_radius')
  bind_csgtorus_set_ring_sides = api_core.godot_method_bind_get_method('CSGTorus', 'set_ring_sides')
  bind_csgtorus_set_sides = api_core.godot_method_bind_get_method('CSGTorus', 'set_sides')
  bind_csgtorus_set_smooth_faces = api_core.godot_method_bind_get_method('CSGTorus', 'set_smooth_faces')

############################Generated class###################################
cdef class CSGTorus(classes.CSGPrimitive.CSGPrimitive):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CSGTorus")())
##################################Generated Properties#########################################
  @property
  def inner_radius(self): 
    return self.get_inner_radius()
  @inner_radius.setter 
  def inner_radius(self,value): 
    self.set_inner_radius(value)
  @property
  def material(self): 
    return self.get_material()
  @material.setter 
  def material(self,value): 
    self.set_material(value)
  @property
  def outer_radius(self): 
    return self.get_outer_radius()
  @outer_radius.setter 
  def outer_radius(self,value): 
    self.set_outer_radius(value)
  @property
  def ring_sides(self): 
    return self.get_ring_sides()
  @ring_sides.setter 
  def ring_sides(self,value): 
    self.set_ring_sides(value)
  @property
  def sides(self): 
    return self.get_sides()
  @sides.setter 
  def sides(self,value): 
    self.set_sides(value)
  @property
  def smooth_faces(self): 
    return self.get_smooth_faces()
  @smooth_faces.setter 
  def smooth_faces(self,value): 
    self.set_smooth_faces(value)

##################################Generated Methods#########################################
  def  get_inner_radius(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgtorus_get_inner_radius,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgtorus_get_material,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_outer_radius(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgtorus_get_outer_radius,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ring_sides(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgtorus_get_ring_sides,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_sides(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgtorus_get_sides,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_smooth_faces(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgtorus_get_smooth_faces,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_inner_radius(self,  float radius):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radius
    api_core.godot_method_bind_ptrcall(bind_csgtorus_set_inner_radius,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_material(self,  classes.Material.Material material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgtorus_set_material,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_outer_radius(self,  float radius):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radius
    api_core.godot_method_bind_ptrcall(bind_csgtorus_set_outer_radius,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ring_sides(self,  int sides):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &sides
    api_core.godot_method_bind_ptrcall(bind_csgtorus_set_ring_sides,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sides(self,  int sides):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &sides
    api_core.godot_method_bind_ptrcall(bind_csgtorus_set_sides,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_smooth_faces(self,  bool smooth_faces):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &smooth_faces
    api_core.godot_method_bind_ptrcall(bind_csgtorus_set_smooth_faces,self.godot_owner,args,NULL)
    hello('hallo2')
