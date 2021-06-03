
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
cdef godot_method_bind *bind_cylindermesh_get_bottom_radius
cdef godot_method_bind *bind_cylindermesh_get_height
cdef godot_method_bind *bind_cylindermesh_get_radial_segments
cdef godot_method_bind *bind_cylindermesh_get_rings
cdef godot_method_bind *bind_cylindermesh_get_top_radius
cdef godot_method_bind *bind_cylindermesh_set_bottom_radius
cdef godot_method_bind *bind_cylindermesh_set_height
cdef godot_method_bind *bind_cylindermesh_set_radial_segments
cdef godot_method_bind *bind_cylindermesh_set_rings
cdef godot_method_bind *bind_cylindermesh_set_top_radius
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_cylindermesh_get_bottom_radius = api_core.godot_method_bind_get_method('CylinderMesh', 'get_bottom_radius')
  bind_cylindermesh_get_height = api_core.godot_method_bind_get_method('CylinderMesh', 'get_height')
  bind_cylindermesh_get_radial_segments = api_core.godot_method_bind_get_method('CylinderMesh', 'get_radial_segments')
  bind_cylindermesh_get_rings = api_core.godot_method_bind_get_method('CylinderMesh', 'get_rings')
  bind_cylindermesh_get_top_radius = api_core.godot_method_bind_get_method('CylinderMesh', 'get_top_radius')
  bind_cylindermesh_set_bottom_radius = api_core.godot_method_bind_get_method('CylinderMesh', 'set_bottom_radius')
  bind_cylindermesh_set_height = api_core.godot_method_bind_get_method('CylinderMesh', 'set_height')
  bind_cylindermesh_set_radial_segments = api_core.godot_method_bind_get_method('CylinderMesh', 'set_radial_segments')
  bind_cylindermesh_set_rings = api_core.godot_method_bind_get_method('CylinderMesh', 'set_rings')
  bind_cylindermesh_set_top_radius = api_core.godot_method_bind_get_method('CylinderMesh', 'set_top_radius')

############################Generated class###################################
cdef class CylinderMesh(classes.PrimitiveMesh.PrimitiveMesh):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CylinderMesh")())
##################################Generated Properties#########################################
  @property
  def bottom_radius(self): 
    return self.get_bottom_radius()
  @bottom_radius.setter 
  def bottom_radius(self,value): 
    self.set_bottom_radius(value)
  @property
  def height(self): 
    return self.get_height()
  @height.setter 
  def height(self,value): 
    self.set_height(value)
  @property
  def radial_segments(self): 
    return self.get_radial_segments()
  @radial_segments.setter 
  def radial_segments(self,value): 
    self.set_radial_segments(value)
  @property
  def rings(self): 
    return self.get_rings()
  @rings.setter 
  def rings(self,value): 
    self.set_rings(value)
  @property
  def top_radius(self): 
    return self.get_top_radius()
  @top_radius.setter 
  def top_radius(self,value): 
    self.set_top_radius(value)

##################################Generated Methods#########################################
  def  get_bottom_radius(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_cylindermesh_get_bottom_radius,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_cylindermesh_get_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_radial_segments(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_cylindermesh_get_radial_segments,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rings(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_cylindermesh_get_rings,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_top_radius(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_cylindermesh_get_top_radius,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_bottom_radius(self,  float radius):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radius
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_set_bottom_radius,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_height(self,  float height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &height
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_set_height,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_radial_segments(self,  int segments):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &segments
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_set_radial_segments,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rings(self,  int rings):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rings
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_set_rings,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_top_radius(self,  float radius):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radius
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_set_top_radius,self.godot_owner,args,NULL)
    hello('hallo2')
