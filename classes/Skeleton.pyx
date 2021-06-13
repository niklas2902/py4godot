
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
cimport classes.Node
cimport classes.Skin
cimport classes.Node
cimport classes.Spatial 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_skeleton_add_bone
cdef godot_method_bind *bind_skeleton_bind_child_node_to_bone
cdef godot_method_bind *bind_skeleton_clear_bones
cdef godot_method_bind *bind_skeleton_find_bone
cdef godot_method_bind *bind_skeleton_get_bone_count
cdef godot_method_bind *bind_skeleton_get_bone_custom_pose
cdef godot_method_bind *bind_skeleton_get_bone_global_pose
cdef godot_method_bind *bind_skeleton_get_bone_name
cdef godot_method_bind *bind_skeleton_get_bone_parent
cdef godot_method_bind *bind_skeleton_get_bone_pose
cdef godot_method_bind *bind_skeleton_get_bone_rest
cdef godot_method_bind *bind_skeleton_get_bound_child_nodes_to_bone
cdef godot_method_bind *bind_skeleton_is_bone_rest_disabled
cdef godot_method_bind *bind_skeleton_localize_rests
cdef godot_method_bind *bind_skeleton_physical_bones_add_collision_exception
cdef godot_method_bind *bind_skeleton_physical_bones_remove_collision_exception
cdef godot_method_bind *bind_skeleton_physical_bones_start_simulation
cdef godot_method_bind *bind_skeleton_physical_bones_stop_simulation
cdef godot_method_bind *bind_skeleton_register_skin
cdef godot_method_bind *bind_skeleton_set_bone_custom_pose
cdef godot_method_bind *bind_skeleton_set_bone_disable_rest
cdef godot_method_bind *bind_skeleton_set_bone_global_pose_override
cdef godot_method_bind *bind_skeleton_set_bone_parent
cdef godot_method_bind *bind_skeleton_set_bone_pose
cdef godot_method_bind *bind_skeleton_set_bone_rest
cdef godot_method_bind *bind_skeleton_unbind_child_node_from_bone
cdef godot_method_bind *bind_skeleton_unparent_bone_and_rest
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_skeleton_add_bone = api_core.godot_method_bind_get_method('Skeleton', 'add_bone')
  bind_skeleton_bind_child_node_to_bone = api_core.godot_method_bind_get_method('Skeleton', 'bind_child_node_to_bone')
  bind_skeleton_clear_bones = api_core.godot_method_bind_get_method('Skeleton', 'clear_bones')
  bind_skeleton_find_bone = api_core.godot_method_bind_get_method('Skeleton', 'find_bone')
  bind_skeleton_get_bone_count = api_core.godot_method_bind_get_method('Skeleton', 'get_bone_count')
  bind_skeleton_get_bone_custom_pose = api_core.godot_method_bind_get_method('Skeleton', 'get_bone_custom_pose')
  bind_skeleton_get_bone_global_pose = api_core.godot_method_bind_get_method('Skeleton', 'get_bone_global_pose')
  bind_skeleton_get_bone_name = api_core.godot_method_bind_get_method('Skeleton', 'get_bone_name')
  bind_skeleton_get_bone_parent = api_core.godot_method_bind_get_method('Skeleton', 'get_bone_parent')
  bind_skeleton_get_bone_pose = api_core.godot_method_bind_get_method('Skeleton', 'get_bone_pose')
  bind_skeleton_get_bone_rest = api_core.godot_method_bind_get_method('Skeleton', 'get_bone_rest')
  bind_skeleton_get_bound_child_nodes_to_bone = api_core.godot_method_bind_get_method('Skeleton', 'get_bound_child_nodes_to_bone')
  bind_skeleton_is_bone_rest_disabled = api_core.godot_method_bind_get_method('Skeleton', 'is_bone_rest_disabled')
  bind_skeleton_localize_rests = api_core.godot_method_bind_get_method('Skeleton', 'localize_rests')
  bind_skeleton_physical_bones_add_collision_exception = api_core.godot_method_bind_get_method('Skeleton', 'physical_bones_add_collision_exception')
  bind_skeleton_physical_bones_remove_collision_exception = api_core.godot_method_bind_get_method('Skeleton', 'physical_bones_remove_collision_exception')
  bind_skeleton_physical_bones_start_simulation = api_core.godot_method_bind_get_method('Skeleton', 'physical_bones_start_simulation')
  bind_skeleton_physical_bones_stop_simulation = api_core.godot_method_bind_get_method('Skeleton', 'physical_bones_stop_simulation')
  bind_skeleton_register_skin = api_core.godot_method_bind_get_method('Skeleton', 'register_skin')
  bind_skeleton_set_bone_custom_pose = api_core.godot_method_bind_get_method('Skeleton', 'set_bone_custom_pose')
  bind_skeleton_set_bone_disable_rest = api_core.godot_method_bind_get_method('Skeleton', 'set_bone_disable_rest')
  bind_skeleton_set_bone_global_pose_override = api_core.godot_method_bind_get_method('Skeleton', 'set_bone_global_pose_override')
  bind_skeleton_set_bone_parent = api_core.godot_method_bind_get_method('Skeleton', 'set_bone_parent')
  bind_skeleton_set_bone_pose = api_core.godot_method_bind_get_method('Skeleton', 'set_bone_pose')
  bind_skeleton_set_bone_rest = api_core.godot_method_bind_get_method('Skeleton', 'set_bone_rest')
  bind_skeleton_unbind_child_node_from_bone = api_core.godot_method_bind_get_method('Skeleton', 'unbind_child_node_from_bone')
  bind_skeleton_unparent_bone_and_rest = api_core.godot_method_bind_get_method('Skeleton', 'unparent_bone_and_rest')

############################Generated class###################################
cdef class Skeleton(classes.Spatial.Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Skeleton")())
##################################Generated Methods#########################################
  def  add_bone(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_skeleton_add_bone,self.godot_owner,args,NULL)
    hello('hallo2')
  def  bind_child_node_to_bone(self,  int bone_idx,  classes.Node.Node node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bone_idx
    args[1] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_bind_child_node_to_bone,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_bones(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_skeleton_clear_bones,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  find_bone(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_skeleton_find_bone,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bone_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bone_custom_pose(self,  int bone_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    cdef void *args[1]

    args[0] = &bone_idx
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_custom_pose,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  get_bone_global_pose(self,  int bone_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    cdef void *args[1]

    args[0] = &bone_idx
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_global_pose,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  get_bone_name(self,  int bone_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &bone_idx
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_bone_parent(self,  int bone_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &bone_idx
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_parent,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bone_pose(self,  int bone_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    cdef void *args[1]

    args[0] = &bone_idx
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_pose,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  get_bone_rest(self,  int bone_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    cdef void *args[1]

    args[0] = &bone_idx
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_rest,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  get_bound_child_nodes_to_bone(self,  int bone_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &bone_idx
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bound_child_nodes_to_bone,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  is_bone_rest_disabled(self,  int bone_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bone_idx
    api_core.godot_method_bind_ptrcall(bind_skeleton_is_bone_rest_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  localize_rests(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_skeleton_localize_rests,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  physical_bones_add_collision_exception(self,  RID exception):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &exception._native
    api_core.godot_method_bind_ptrcall(bind_skeleton_physical_bones_add_collision_exception,self.godot_owner,args,NULL)
    hello('hallo2')
  def  physical_bones_remove_collision_exception(self,  RID exception):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &exception._native
    api_core.godot_method_bind_ptrcall(bind_skeleton_physical_bones_remove_collision_exception,self.godot_owner,args,NULL)
    hello('hallo2')
  def  physical_bones_start_simulation(self,  Array bones):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bones._native
    api_core.godot_method_bind_ptrcall(bind_skeleton_physical_bones_start_simulation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  physical_bones_stop_simulation(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_skeleton_physical_bones_stop_simulation,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  register_skin(self,  classes.Skin.Skin skin):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = skin.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_register_skin,self.godot_owner,args,&ret)
    hello('hallo2')
  def  set_bone_custom_pose(self,  int bone_idx,  Transform custom_pose):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bone_idx
    args[1] = &custom_pose._native
    api_core.godot_method_bind_ptrcall(bind_skeleton_set_bone_custom_pose,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bone_disable_rest(self,  int bone_idx,  bool disable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bone_idx
    args[1] = &disable
    api_core.godot_method_bind_ptrcall(bind_skeleton_set_bone_disable_rest,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bone_global_pose_override(self,  int bone_idx,  Transform pose,  float amount,  bool persistent):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &bone_idx
    args[1] = &pose._native
    args[2] = &amount
    args[3] = &persistent
    api_core.godot_method_bind_ptrcall(bind_skeleton_set_bone_global_pose_override,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bone_parent(self,  int bone_idx,  int parent_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bone_idx
    args[1] = &parent_idx
    api_core.godot_method_bind_ptrcall(bind_skeleton_set_bone_parent,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bone_pose(self,  int bone_idx,  Transform pose):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bone_idx
    args[1] = &pose._native
    api_core.godot_method_bind_ptrcall(bind_skeleton_set_bone_pose,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bone_rest(self,  int bone_idx,  Transform rest):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bone_idx
    args[1] = &rest._native
    api_core.godot_method_bind_ptrcall(bind_skeleton_set_bone_rest,self.godot_owner,args,NULL)
    hello('hallo2')
  def  unbind_child_node_from_bone(self,  int bone_idx,  classes.Node.Node node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bone_idx
    args[1] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_unbind_child_node_from_bone,self.godot_owner,args,NULL)
    hello('hallo2')
  def  unparent_bone_and_rest(self,  int bone_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bone_idx
    api_core.godot_method_bind_ptrcall(bind_skeleton_unparent_bone_and_rest,self.godot_owner,args,NULL)
    hello('hallo2')
