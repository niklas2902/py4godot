
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
cimport classes.PrimitiveMesh 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_spheremesh_get_height
cdef godot_method_bind *bind_spheremesh_get_is_hemisphere
cdef godot_method_bind *bind_spheremesh_get_radial_segments
cdef godot_method_bind *bind_spheremesh_get_radius
cdef godot_method_bind *bind_spheremesh_get_rings
cdef godot_method_bind *bind_spheremesh_set_height
cdef godot_method_bind *bind_spheremesh_set_is_hemisphere
cdef godot_method_bind *bind_spheremesh_set_radial_segments
cdef godot_method_bind *bind_spheremesh_set_radius
cdef godot_method_bind *bind_spheremesh_set_rings
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_spheremesh_get_height = api_core.godot_method_bind_get_method('SphereMesh', 'get_height')
  bind_spheremesh_get_is_hemisphere = api_core.godot_method_bind_get_method('SphereMesh', 'get_is_hemisphere')
  bind_spheremesh_get_radial_segments = api_core.godot_method_bind_get_method('SphereMesh', 'get_radial_segments')
  bind_spheremesh_get_radius = api_core.godot_method_bind_get_method('SphereMesh', 'get_radius')
  bind_spheremesh_get_rings = api_core.godot_method_bind_get_method('SphereMesh', 'get_rings')
  bind_spheremesh_set_height = api_core.godot_method_bind_get_method('SphereMesh', 'set_height')
  bind_spheremesh_set_is_hemisphere = api_core.godot_method_bind_get_method('SphereMesh', 'set_is_hemisphere')
  bind_spheremesh_set_radial_segments = api_core.godot_method_bind_get_method('SphereMesh', 'set_radial_segments')
  bind_spheremesh_set_radius = api_core.godot_method_bind_get_method('SphereMesh', 'set_radius')
  bind_spheremesh_set_rings = api_core.godot_method_bind_get_method('SphereMesh', 'set_rings')

############################Generated class###################################
cdef class SphereMesh(classes.PrimitiveMesh.PrimitiveMesh):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SphereMesh")())
##################################Generated Properties#########################################
  @property
  def height(self): 
    return self.get_height()
  @height.setter 
  def height(self,value): 
    self.set_height(value)
  @property
  def is_hemisphere(self): 
    return self.get_is_hemisphere()
  @is_hemisphere.setter 
  def is_hemisphere(self,value): 
    self.set_is_hemisphere(value)
  @property
  def radial_segments(self): 
    return self.get_radial_segments()
  @radial_segments.setter 
  def radial_segments(self,value): 
    self.set_radial_segments(value)
  @property
  def radius(self): 
    return self.get_radius()
  @radius.setter 
  def radius(self,value): 
    self.set_radius(value)
  @property
  def rings(self): 
    return self.get_rings()
  @rings.setter 
  def rings(self,value): 
    self.set_rings(value)

##################################Generated Methods#########################################
  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spheremesh_get_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_is_hemisphere(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spheremesh_get_is_hemisphere,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_radial_segments(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spheremesh_get_radial_segments,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_radius(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spheremesh_get_radius,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rings(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spheremesh_get_rings,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_height(self,  float height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &height
    api_core.godot_method_bind_ptrcall(bind_spheremesh_set_height,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_is_hemisphere(self,  bool is_hemisphere):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &is_hemisphere
    api_core.godot_method_bind_ptrcall(bind_spheremesh_set_is_hemisphere,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_radial_segments(self,  int radial_segments):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radial_segments
    api_core.godot_method_bind_ptrcall(bind_spheremesh_set_radial_segments,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_radius(self,  float radius):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radius
    api_core.godot_method_bind_ptrcall(bind_spheremesh_set_radius,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rings(self,  int rings):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rings
    api_core.godot_method_bind_ptrcall(bind_spheremesh_set_rings,self.godot_owner,args,NULL)
    hello('hallo2')
