from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_skeleton2d__update_bone_setup
cdef godot_method_bind *bind_skeleton2d__update_transform
cdef godot_method_bind *bind_skeleton2d_get_bone
cdef godot_method_bind *bind_skeleton2d_get_bone_count
cdef godot_method_bind *bind_skeleton2d_get_skeleton
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_skeleton2d__update_bone_setup = api_core.godot_method_bind_get_method('Skeleton2D', '_update_bone_setup')
  bind_skeleton2d__update_transform = api_core.godot_method_bind_get_method('Skeleton2D', '_update_transform')
  bind_skeleton2d_get_bone = api_core.godot_method_bind_get_method('Skeleton2D', 'get_bone')
  bind_skeleton2d_get_bone_count = api_core.godot_method_bind_get_method('Skeleton2D', 'get_bone_count')
  bind_skeleton2d_get_skeleton = api_core.godot_method_bind_get_method('Skeleton2D', 'get_skeleton')

############################Generated class###################################
cdef class Skeleton2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Skeleton2D")())
##################################Generated Methods#########################################
  def  _update_bone_setup(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton2d__update_bone_setup,self.godot_owner,[NULL,],NULL)
  def  _update_transform(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeleton2d__update_transform,self.godot_owner,[NULL,],NULL)
  def  get_bone(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Bone2D ret
    api_core.godot_method_bind_ptrcall(bind_skeleton2d_get_bone,self.godot_owner,[NULL,],&ret)
  def  get_bone_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_skeleton2d_get_bone_count,self.godot_owner,[NULL,],&ret)
  def  get_skeleton(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_skeleton2d_get_skeleton,self.godot_owner,[NULL,],&ret)
