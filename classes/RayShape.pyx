
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
cdef godot_method_bind *bind_rayshape_get_length
cdef godot_method_bind *bind_rayshape_get_slips_on_slope
cdef godot_method_bind *bind_rayshape_set_length
cdef godot_method_bind *bind_rayshape_set_slips_on_slope
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_rayshape_get_length = api_core.godot_method_bind_get_method('RayShape', 'get_length')
  bind_rayshape_get_slips_on_slope = api_core.godot_method_bind_get_method('RayShape', 'get_slips_on_slope')
  bind_rayshape_set_length = api_core.godot_method_bind_get_method('RayShape', 'set_length')
  bind_rayshape_set_slips_on_slope = api_core.godot_method_bind_get_method('RayShape', 'set_slips_on_slope')

############################Generated class###################################
cdef class RayShape(classes.Shape.Shape):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RayShape")())
##################################Generated Properties#########################################
  @property
  def length(self): 
    return self.get_length()
  @length.setter 
  def length(self,value): 
    self.set_length(value)
  @property
  def slips_on_slope(self): 
    return self.get_slips_on_slope()
  @slips_on_slope.setter 
  def slips_on_slope(self,value): 
    self.set_slips_on_slope(value)

##################################Generated Methods#########################################
  def  get_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rayshape_get_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_slips_on_slope(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rayshape_get_slips_on_slope,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_length(self,  float length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &length
    api_core.godot_method_bind_ptrcall(bind_rayshape_set_length,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_slips_on_slope(self,  bool active):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &active
    api_core.godot_method_bind_ptrcall(bind_rayshape_set_slips_on_slope,self.godot_owner,args,NULL)
    hello('hallo2')
