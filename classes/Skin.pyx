
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_skin_add_bind
cdef godot_method_bind *bind_skin_clear_binds
cdef godot_method_bind *bind_skin_get_bind_bone
cdef godot_method_bind *bind_skin_get_bind_count
cdef godot_method_bind *bind_skin_get_bind_pose
cdef godot_method_bind *bind_skin_set_bind_bone
cdef godot_method_bind *bind_skin_set_bind_count
cdef godot_method_bind *bind_skin_set_bind_pose
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_skin_add_bind = api_core.godot_method_bind_get_method('Skin', 'add_bind')
  bind_skin_clear_binds = api_core.godot_method_bind_get_method('Skin', 'clear_binds')
  bind_skin_get_bind_bone = api_core.godot_method_bind_get_method('Skin', 'get_bind_bone')
  bind_skin_get_bind_count = api_core.godot_method_bind_get_method('Skin', 'get_bind_count')
  bind_skin_get_bind_pose = api_core.godot_method_bind_get_method('Skin', 'get_bind_pose')
  bind_skin_set_bind_bone = api_core.godot_method_bind_get_method('Skin', 'set_bind_bone')
  bind_skin_set_bind_count = api_core.godot_method_bind_get_method('Skin', 'set_bind_count')
  bind_skin_set_bind_pose = api_core.godot_method_bind_get_method('Skin', 'set_bind_pose')

############################Generated class###################################
cdef class Skin(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Skin")())
##################################Generated Methods#########################################
  def  add_bind(self,  int bone,  Transform pose):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bone
    args[1] = &pose._native
    api_core.godot_method_bind_ptrcall(bind_skin_add_bind,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_binds(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_skin_clear_binds,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_bind_bone(self,  int bind_index):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &bind_index
    api_core.godot_method_bind_ptrcall(bind_skin_get_bind_bone,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bind_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_skin_get_bind_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bind_pose(self,  int bind_index):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    cdef void *args[1]

    args[0] = &bind_index
    api_core.godot_method_bind_ptrcall(bind_skin_get_bind_pose,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  set_bind_bone(self,  int bind_index,  int bone):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bind_index
    args[1] = &bone
    api_core.godot_method_bind_ptrcall(bind_skin_set_bind_bone,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bind_count(self,  int bind_count):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bind_count
    api_core.godot_method_bind_ptrcall(bind_skin_set_bind_count,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bind_pose(self,  int bind_index,  Transform pose):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bind_index
    args[1] = &pose._native
    api_core.godot_method_bind_ptrcall(bind_skin_set_bind_pose,self.godot_owner,args,NULL)
    hello('hallo2')
