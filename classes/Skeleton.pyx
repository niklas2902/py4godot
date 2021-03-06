from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class Skeleton(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Skeleton")())
##################################Generated Methods#########################################
  def  add_bone(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_add_bone,self.godot_owner,[NULL,],NULL)
  def  bind_child_node_to_bone(self, bone_idxnode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_bind_child_node_to_bone,self.godot_owner,[NULL,],NULL)
  def  clear_bones(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_clear_bones,self.godot_owner,[NULL,],NULL)
  def  find_bone(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_skeleton_find_bone,self.godot_owner,[NULL,],&ret)
  def  get_bone_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_count,self.godot_owner,[NULL,],&ret)
  def  get_bone_custom_pose(self, bone_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_custom_pose,self.godot_owner,[NULL,],&ret)
  def  get_bone_global_pose(self, bone_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_global_pose,self.godot_owner,[NULL,],&ret)
  def  get_bone_name(self, bone_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_name,self.godot_owner,[NULL,],&ret)
  def  get_bone_parent(self, bone_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_parent,self.godot_owner,[NULL,],&ret)
  def  get_bone_pose(self, bone_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_pose,self.godot_owner,[NULL,],&ret)
  def  get_bone_rest(self, bone_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bone_rest,self.godot_owner,[NULL,],&ret)
  def  get_bound_child_nodes_to_bone(self, bone_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_skeleton_get_bound_child_nodes_to_bone,self.godot_owner,[NULL,],&ret)
  def  is_bone_rest_disabled(self, bone_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_skeleton_is_bone_rest_disabled,self.godot_owner,[NULL,],&ret)
  def  localize_rests(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_localize_rests,self.godot_owner,[NULL,],NULL)
  def  physical_bones_add_collision_exception(self, exception):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_physical_bones_add_collision_exception,self.godot_owner,[NULL,],NULL)
  def  physical_bones_remove_collision_exception(self, exception):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_physical_bones_remove_collision_exception,self.godot_owner,[NULL,],NULL)
  def  physical_bones_start_simulation(self, bones):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_physical_bones_start_simulation,self.godot_owner,[NULL,],NULL)
  def  physical_bones_stop_simulation(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_physical_bones_stop_simulation,self.godot_owner,[NULL,],NULL)
  def  register_skin(self, skin):
    cdef godot_object *_owner = self.godot_owner
    cdef SkinReference ret
    api_core.godot_method_bind_ptrcall(bind_skeleton_register_skin,self.godot_owner,[NULL,],&ret)
  def  set_bone_custom_pose(self, bone_idxcustom_pose):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_set_bone_custom_pose,self.godot_owner,[NULL,],NULL)
  def  set_bone_disable_rest(self, bone_idxdisable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_set_bone_disable_rest,self.godot_owner,[NULL,],NULL)
  def  set_bone_global_pose_override(self, bone_idxposeamountpersistent):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_set_bone_global_pose_override,self.godot_owner,[NULL,],NULL)
  def  set_bone_parent(self, bone_idxparent_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_set_bone_parent,self.godot_owner,[NULL,],NULL)
  def  set_bone_pose(self, bone_idxpose):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_set_bone_pose,self.godot_owner,[NULL,],NULL)
  def  set_bone_rest(self, bone_idxrest):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_set_bone_rest,self.godot_owner,[NULL,],NULL)
  def  unbind_child_node_from_bone(self, bone_idxnode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_unbind_child_node_from_bone,self.godot_owner,[NULL,],NULL)
  def  unparent_bone_and_rest(self, bone_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton_unparent_bone_and_rest,self.godot_owner,[NULL,],NULL)
