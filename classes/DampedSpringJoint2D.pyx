
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
cimport classes.Joint2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_dampedspringjoint2d_get_damping
cdef godot_method_bind *bind_dampedspringjoint2d_get_length
cdef godot_method_bind *bind_dampedspringjoint2d_get_rest_length
cdef godot_method_bind *bind_dampedspringjoint2d_get_stiffness
cdef godot_method_bind *bind_dampedspringjoint2d_set_damping
cdef godot_method_bind *bind_dampedspringjoint2d_set_length
cdef godot_method_bind *bind_dampedspringjoint2d_set_rest_length
cdef godot_method_bind *bind_dampedspringjoint2d_set_stiffness
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_dampedspringjoint2d_get_damping = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'get_damping')
  bind_dampedspringjoint2d_get_length = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'get_length')
  bind_dampedspringjoint2d_get_rest_length = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'get_rest_length')
  bind_dampedspringjoint2d_get_stiffness = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'get_stiffness')
  bind_dampedspringjoint2d_set_damping = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'set_damping')
  bind_dampedspringjoint2d_set_length = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'set_length')
  bind_dampedspringjoint2d_set_rest_length = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'set_rest_length')
  bind_dampedspringjoint2d_set_stiffness = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'set_stiffness')

############################Generated class###################################
cdef class DampedSpringJoint2D(classes.Joint2D.Joint2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("DampedSpringJoint2D")())
##################################Generated Properties#########################################
  @property
  def damping(self): 
    return self.get_damping()
  @damping.setter 
  def damping(self,value): 
    self.set_damping(value)
  @property
  def length(self): 
    return self.get_length()
  @length.setter 
  def length(self,value): 
    self.set_length(value)
  @property
  def rest_length(self): 
    return self.get_rest_length()
  @rest_length.setter 
  def rest_length(self,value): 
    self.set_rest_length(value)
  @property
  def stiffness(self): 
    return self.get_stiffness()
  @stiffness.setter 
  def stiffness(self,value): 
    self.set_stiffness(value)

##################################Generated Methods#########################################
  def  get_damping(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_get_damping,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_get_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rest_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_get_rest_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_stiffness(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_get_stiffness,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_damping(self,  float damping):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &damping
    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_set_damping,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_length(self,  float length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &length
    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_set_length,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rest_length(self,  float rest_length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rest_length
    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_set_rest_length,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stiffness(self,  float stiffness):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &stiffness
    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_set_stiffness,self.godot_owner,args,NULL)
    hello('hallo2')
