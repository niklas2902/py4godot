
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
cdef godot_method_bind *bind_csgcylinder_get_height
cdef godot_method_bind *bind_csgcylinder_get_material
cdef godot_method_bind *bind_csgcylinder_get_radius
cdef godot_method_bind *bind_csgcylinder_get_sides
cdef godot_method_bind *bind_csgcylinder_get_smooth_faces
cdef godot_method_bind *bind_csgcylinder_is_cone
cdef godot_method_bind *bind_csgcylinder_set_cone
cdef godot_method_bind *bind_csgcylinder_set_height
cdef godot_method_bind *bind_csgcylinder_set_material
cdef godot_method_bind *bind_csgcylinder_set_radius
cdef godot_method_bind *bind_csgcylinder_set_sides
cdef godot_method_bind *bind_csgcylinder_set_smooth_faces
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_csgcylinder_get_height = api_core.godot_method_bind_get_method('CSGCylinder', 'get_height')
  bind_csgcylinder_get_material = api_core.godot_method_bind_get_method('CSGCylinder', 'get_material')
  bind_csgcylinder_get_radius = api_core.godot_method_bind_get_method('CSGCylinder', 'get_radius')
  bind_csgcylinder_get_sides = api_core.godot_method_bind_get_method('CSGCylinder', 'get_sides')
  bind_csgcylinder_get_smooth_faces = api_core.godot_method_bind_get_method('CSGCylinder', 'get_smooth_faces')
  bind_csgcylinder_is_cone = api_core.godot_method_bind_get_method('CSGCylinder', 'is_cone')
  bind_csgcylinder_set_cone = api_core.godot_method_bind_get_method('CSGCylinder', 'set_cone')
  bind_csgcylinder_set_height = api_core.godot_method_bind_get_method('CSGCylinder', 'set_height')
  bind_csgcylinder_set_material = api_core.godot_method_bind_get_method('CSGCylinder', 'set_material')
  bind_csgcylinder_set_radius = api_core.godot_method_bind_get_method('CSGCylinder', 'set_radius')
  bind_csgcylinder_set_sides = api_core.godot_method_bind_get_method('CSGCylinder', 'set_sides')
  bind_csgcylinder_set_smooth_faces = api_core.godot_method_bind_get_method('CSGCylinder', 'set_smooth_faces')

############################Generated class###################################
cdef class CSGCylinder(classes.CSGPrimitive.CSGPrimitive):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CSGCylinder")())
##################################Generated Properties#########################################
  @property
  def cone(self): 
    return self.get_cone()
  @cone.setter 
  def cone(self,value): 
    self.set_cone(value)
  @property
  def height(self): 
    return self.get_height()
  @height.setter 
  def height(self,value): 
    self.set_height(value)
  @property
  def material(self): 
    return self.get_material()
  @material.setter 
  def material(self,value): 
    self.set_material(value)
  @property
  def radius(self): 
    return self.get_radius()
  @radius.setter 
  def radius(self,value): 
    self.set_radius(value)
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
  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgcylinder_get_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgcylinder_get_material,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_radius(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgcylinder_get_radius,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_sides(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgcylinder_get_sides,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_smooth_faces(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgcylinder_get_smooth_faces,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_cone(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgcylinder_is_cone,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_cone(self,  bool cone):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &cone
    api_core.godot_method_bind_ptrcall(bind_csgcylinder_set_cone,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_height(self,  float height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &height
    api_core.godot_method_bind_ptrcall(bind_csgcylinder_set_height,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_material(self,  classes.Material.Material material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgcylinder_set_material,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_radius(self,  float radius):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radius
    api_core.godot_method_bind_ptrcall(bind_csgcylinder_set_radius,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sides(self,  int sides):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &sides
    api_core.godot_method_bind_ptrcall(bind_csgcylinder_set_sides,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_smooth_faces(self,  bool smooth_faces):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &smooth_faces
    api_core.godot_method_bind_ptrcall(bind_csgcylinder_set_smooth_faces,self.godot_owner,args,NULL)
    hello('hallo2')
