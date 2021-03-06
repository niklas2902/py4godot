from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_skeletonik_get_interpolation
cdef godot_method_bind *bind_skeletonik_get_magnet_position
cdef godot_method_bind *bind_skeletonik_get_max_iterations
cdef godot_method_bind *bind_skeletonik_get_min_distance
cdef godot_method_bind *bind_skeletonik_get_parent_skeleton
cdef godot_method_bind *bind_skeletonik_get_root_bone
cdef godot_method_bind *bind_skeletonik_get_target_node
cdef godot_method_bind *bind_skeletonik_get_target_transform
cdef godot_method_bind *bind_skeletonik_get_tip_bone
cdef godot_method_bind *bind_skeletonik_is_override_tip_basis
cdef godot_method_bind *bind_skeletonik_is_running
cdef godot_method_bind *bind_skeletonik_is_using_magnet
cdef godot_method_bind *bind_skeletonik_set_interpolation
cdef godot_method_bind *bind_skeletonik_set_magnet_position
cdef godot_method_bind *bind_skeletonik_set_max_iterations
cdef godot_method_bind *bind_skeletonik_set_min_distance
cdef godot_method_bind *bind_skeletonik_set_override_tip_basis
cdef godot_method_bind *bind_skeletonik_set_root_bone
cdef godot_method_bind *bind_skeletonik_set_target_node
cdef godot_method_bind *bind_skeletonik_set_target_transform
cdef godot_method_bind *bind_skeletonik_set_tip_bone
cdef godot_method_bind *bind_skeletonik_set_use_magnet
cdef godot_method_bind *bind_skeletonik_start
cdef godot_method_bind *bind_skeletonik_stop
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_skeletonik_get_interpolation = api_core.godot_method_bind_get_method('SkeletonIK', 'get_interpolation')
  bind_skeletonik_get_magnet_position = api_core.godot_method_bind_get_method('SkeletonIK', 'get_magnet_position')
  bind_skeletonik_get_max_iterations = api_core.godot_method_bind_get_method('SkeletonIK', 'get_max_iterations')
  bind_skeletonik_get_min_distance = api_core.godot_method_bind_get_method('SkeletonIK', 'get_min_distance')
  bind_skeletonik_get_parent_skeleton = api_core.godot_method_bind_get_method('SkeletonIK', 'get_parent_skeleton')
  bind_skeletonik_get_root_bone = api_core.godot_method_bind_get_method('SkeletonIK', 'get_root_bone')
  bind_skeletonik_get_target_node = api_core.godot_method_bind_get_method('SkeletonIK', 'get_target_node')
  bind_skeletonik_get_target_transform = api_core.godot_method_bind_get_method('SkeletonIK', 'get_target_transform')
  bind_skeletonik_get_tip_bone = api_core.godot_method_bind_get_method('SkeletonIK', 'get_tip_bone')
  bind_skeletonik_is_override_tip_basis = api_core.godot_method_bind_get_method('SkeletonIK', 'is_override_tip_basis')
  bind_skeletonik_is_running = api_core.godot_method_bind_get_method('SkeletonIK', 'is_running')
  bind_skeletonik_is_using_magnet = api_core.godot_method_bind_get_method('SkeletonIK', 'is_using_magnet')
  bind_skeletonik_set_interpolation = api_core.godot_method_bind_get_method('SkeletonIK', 'set_interpolation')
  bind_skeletonik_set_magnet_position = api_core.godot_method_bind_get_method('SkeletonIK', 'set_magnet_position')
  bind_skeletonik_set_max_iterations = api_core.godot_method_bind_get_method('SkeletonIK', 'set_max_iterations')
  bind_skeletonik_set_min_distance = api_core.godot_method_bind_get_method('SkeletonIK', 'set_min_distance')
  bind_skeletonik_set_override_tip_basis = api_core.godot_method_bind_get_method('SkeletonIK', 'set_override_tip_basis')
  bind_skeletonik_set_root_bone = api_core.godot_method_bind_get_method('SkeletonIK', 'set_root_bone')
  bind_skeletonik_set_target_node = api_core.godot_method_bind_get_method('SkeletonIK', 'set_target_node')
  bind_skeletonik_set_target_transform = api_core.godot_method_bind_get_method('SkeletonIK', 'set_target_transform')
  bind_skeletonik_set_tip_bone = api_core.godot_method_bind_get_method('SkeletonIK', 'set_tip_bone')
  bind_skeletonik_set_use_magnet = api_core.godot_method_bind_get_method('SkeletonIK', 'set_use_magnet')
  bind_skeletonik_start = api_core.godot_method_bind_get_method('SkeletonIK', 'start')
  bind_skeletonik_stop = api_core.godot_method_bind_get_method('SkeletonIK', 'stop')

############################Generated class###################################
cdef class SkeletonIK(Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SkeletonIK")())
##################################Generated Properties#########################################
  @property
  def interpolation(self): 
    return self.get_interpolation()
  @interpolation.setter 
  def interpolation(self,value): 
    self.set_interpolation(value)
  @property
  def magnet(self): 
    return self.get_magnet()
  @magnet.setter 
  def magnet(self,value): 
    self.set_magnet(value)
  @property
  def max_iterations(self): 
    return self.get_max_iterations()
  @max_iterations.setter 
  def max_iterations(self,value): 
    self.set_max_iterations(value)
  @property
  def min_distance(self): 
    return self.get_min_distance()
  @min_distance.setter 
  def min_distance(self,value): 
    self.set_min_distance(value)
  @property
  def override_tip_basis(self): 
    return self.get_override_tip_basis()
  @override_tip_basis.setter 
  def override_tip_basis(self,value): 
    self.set_override_tip_basis(value)
  @property
  def root_bone(self): 
    return self.get_root_bone()
  @root_bone.setter 
  def root_bone(self,value): 
    self.set_root_bone(value)
  @property
  def target(self): 
    return self.get_target()
  @target.setter 
  def target(self,value): 
    self.set_target(value)
  @property
  def target_node(self): 
    return self.get_target_node()
  @target_node.setter 
  def target_node(self,value): 
    self.set_target_node(value)
  @property
  def tip_bone(self): 
    return self.get_tip_bone()
  @tip_bone.setter 
  def tip_bone(self,value): 
    self.set_tip_bone(value)
  @property
  def use_magnet(self): 
    return self.get_use_magnet()
  @use_magnet.setter 
  def use_magnet(self,value): 
    self.set_use_magnet(value)

##################################Generated Methods#########################################
  def  get_interpolation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_skeletonik_get_interpolation,self.godot_owner,[NULL,],&ret)
  def  get_magnet_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_skeletonik_get_magnet_position,self.godot_owner,[NULL,],&ret)
  def  get_max_iterations(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_skeletonik_get_max_iterations,self.godot_owner,[NULL,],&ret)
  def  get_min_distance(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_skeletonik_get_min_distance,self.godot_owner,[NULL,],&ret)
  def  get_parent_skeleton(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Skeleton ret
    api_core.godot_method_bind_ptrcall(bind_skeletonik_get_parent_skeleton,self.godot_owner,[NULL,],&ret)
  def  get_root_bone(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_skeletonik_get_root_bone,self.godot_owner,[NULL,],&ret)
  def  get_target_node(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_skeletonik_get_target_node,self.godot_owner,[NULL,],&ret)
  def  get_target_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_skeletonik_get_target_transform,self.godot_owner,[NULL,],&ret)
  def  get_tip_bone(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_skeletonik_get_tip_bone,self.godot_owner,[NULL,],&ret)
  def  is_override_tip_basis(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_skeletonik_is_override_tip_basis,self.godot_owner,[NULL,],&ret)
  def  is_running(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_skeletonik_is_running,self.godot_owner,[NULL,],&ret)
  def  is_using_magnet(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_skeletonik_is_using_magnet,self.godot_owner,[NULL,],&ret)
  def  set_interpolation(self, interpolation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeletonik_set_interpolation,self.godot_owner,[NULL,],NULL)
  def  set_magnet_position(self, local_position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeletonik_set_magnet_position,self.godot_owner,[NULL,],NULL)
  def  set_max_iterations(self, iterations):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeletonik_set_max_iterations,self.godot_owner,[NULL,],NULL)
  def  set_min_distance(self, min_distance):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeletonik_set_min_distance,self.godot_owner,[NULL,],NULL)
  def  set_override_tip_basis(self, override):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeletonik_set_override_tip_basis,self.godot_owner,[NULL,],NULL)
  def  set_root_bone(self, root_bone):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeletonik_set_root_bone,self.godot_owner,[NULL,],NULL)
  def  set_target_node(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeletonik_set_target_node,self.godot_owner,[NULL,],NULL)
  def  set_target_transform(self, target):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeletonik_set_target_transform,self.godot_owner,[NULL,],NULL)
  def  set_tip_bone(self, tip_bone):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeletonik_set_tip_bone,self.godot_owner,[NULL,],NULL)
  def  set_use_magnet(self, use):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeletonik_set_use_magnet,self.godot_owner,[NULL,],NULL)
  def  start(self, one_time):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeletonik_start,self.godot_owner,[NULL,],NULL)
  def  stop(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_skeletonik_stop,self.godot_owner,[NULL,],NULL)
