
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
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_bone2d_apply_rest
cdef godot_method_bind *bind_bone2d_get_default_length
cdef godot_method_bind *bind_bone2d_get_index_in_skeleton
cdef godot_method_bind *bind_bone2d_get_rest
cdef godot_method_bind *bind_bone2d_get_skeleton_rest
cdef godot_method_bind *bind_bone2d_set_default_length
cdef godot_method_bind *bind_bone2d_set_rest
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_bone2d_apply_rest = api_core.godot_method_bind_get_method('Bone2D', 'apply_rest')
  bind_bone2d_get_default_length = api_core.godot_method_bind_get_method('Bone2D', 'get_default_length')
  bind_bone2d_get_index_in_skeleton = api_core.godot_method_bind_get_method('Bone2D', 'get_index_in_skeleton')
  bind_bone2d_get_rest = api_core.godot_method_bind_get_method('Bone2D', 'get_rest')
  bind_bone2d_get_skeleton_rest = api_core.godot_method_bind_get_method('Bone2D', 'get_skeleton_rest')
  bind_bone2d_set_default_length = api_core.godot_method_bind_get_method('Bone2D', 'set_default_length')
  bind_bone2d_set_rest = api_core.godot_method_bind_get_method('Bone2D', 'set_rest')

############################Generated class###################################
cdef class Bone2D(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Bone2D")())
##################################Generated Properties#########################################
  @property
  def default_length(self): 
    return self.get_default_length()
  @default_length.setter 
  def default_length(self,value): 
    self.set_default_length(value)
  @property
  def rest(self): 
    return self.get_rest()
  @rest.setter 
  def rest(self,value): 
    self.set_rest(value)

##################################Generated Methods#########################################
  def  apply_rest(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_bone2d_apply_rest,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_default_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bone2d_get_default_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_index_in_skeleton(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bone2d_get_index_in_skeleton,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rest(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bone2d_get_rest,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  get_skeleton_rest(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bone2d_get_skeleton_rest,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  set_default_length(self,  float default_length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &default_length
    api_core.godot_method_bind_ptrcall(bind_bone2d_set_default_length,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rest(self,  Transform2D rest):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rest._native
    api_core.godot_method_bind_ptrcall(bind_bone2d_set_rest,self.godot_owner,args,NULL)
    hello('hallo2')
