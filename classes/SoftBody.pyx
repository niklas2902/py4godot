
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
cimport classes.Node
cimport classes.MeshInstance 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_softbody__draw_soft_mesh
cdef godot_method_bind *bind_softbody_add_collision_exception_with
cdef godot_method_bind *bind_softbody_get_areaAngular_stiffness
cdef godot_method_bind *bind_softbody_get_collision_exceptions
cdef godot_method_bind *bind_softbody_get_collision_layer
cdef godot_method_bind *bind_softbody_get_collision_layer_bit
cdef godot_method_bind *bind_softbody_get_collision_mask
cdef godot_method_bind *bind_softbody_get_collision_mask_bit
cdef godot_method_bind *bind_softbody_get_damping_coefficient
cdef godot_method_bind *bind_softbody_get_drag_coefficient
cdef godot_method_bind *bind_softbody_get_linear_stiffness
cdef godot_method_bind *bind_softbody_get_parent_collision_ignore
cdef godot_method_bind *bind_softbody_get_pose_matching_coefficient
cdef godot_method_bind *bind_softbody_get_pressure_coefficient
cdef godot_method_bind *bind_softbody_get_simulation_precision
cdef godot_method_bind *bind_softbody_get_total_mass
cdef godot_method_bind *bind_softbody_get_volume_stiffness
cdef godot_method_bind *bind_softbody_is_ray_pickable
cdef godot_method_bind *bind_softbody_remove_collision_exception_with
cdef godot_method_bind *bind_softbody_set_areaAngular_stiffness
cdef godot_method_bind *bind_softbody_set_collision_layer
cdef godot_method_bind *bind_softbody_set_collision_layer_bit
cdef godot_method_bind *bind_softbody_set_collision_mask
cdef godot_method_bind *bind_softbody_set_collision_mask_bit
cdef godot_method_bind *bind_softbody_set_damping_coefficient
cdef godot_method_bind *bind_softbody_set_drag_coefficient
cdef godot_method_bind *bind_softbody_set_linear_stiffness
cdef godot_method_bind *bind_softbody_set_parent_collision_ignore
cdef godot_method_bind *bind_softbody_set_pose_matching_coefficient
cdef godot_method_bind *bind_softbody_set_pressure_coefficient
cdef godot_method_bind *bind_softbody_set_ray_pickable
cdef godot_method_bind *bind_softbody_set_simulation_precision
cdef godot_method_bind *bind_softbody_set_total_mass
cdef godot_method_bind *bind_softbody_set_volume_stiffness
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_softbody__draw_soft_mesh = api_core.godot_method_bind_get_method('SoftBody', '_draw_soft_mesh')
  bind_softbody_add_collision_exception_with = api_core.godot_method_bind_get_method('SoftBody', 'add_collision_exception_with')
  bind_softbody_get_areaAngular_stiffness = api_core.godot_method_bind_get_method('SoftBody', 'get_areaAngular_stiffness')
  bind_softbody_get_collision_exceptions = api_core.godot_method_bind_get_method('SoftBody', 'get_collision_exceptions')
  bind_softbody_get_collision_layer = api_core.godot_method_bind_get_method('SoftBody', 'get_collision_layer')
  bind_softbody_get_collision_layer_bit = api_core.godot_method_bind_get_method('SoftBody', 'get_collision_layer_bit')
  bind_softbody_get_collision_mask = api_core.godot_method_bind_get_method('SoftBody', 'get_collision_mask')
  bind_softbody_get_collision_mask_bit = api_core.godot_method_bind_get_method('SoftBody', 'get_collision_mask_bit')
  bind_softbody_get_damping_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'get_damping_coefficient')
  bind_softbody_get_drag_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'get_drag_coefficient')
  bind_softbody_get_linear_stiffness = api_core.godot_method_bind_get_method('SoftBody', 'get_linear_stiffness')
  bind_softbody_get_parent_collision_ignore = api_core.godot_method_bind_get_method('SoftBody', 'get_parent_collision_ignore')
  bind_softbody_get_pose_matching_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'get_pose_matching_coefficient')
  bind_softbody_get_pressure_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'get_pressure_coefficient')
  bind_softbody_get_simulation_precision = api_core.godot_method_bind_get_method('SoftBody', 'get_simulation_precision')
  bind_softbody_get_total_mass = api_core.godot_method_bind_get_method('SoftBody', 'get_total_mass')
  bind_softbody_get_volume_stiffness = api_core.godot_method_bind_get_method('SoftBody', 'get_volume_stiffness')
  bind_softbody_is_ray_pickable = api_core.godot_method_bind_get_method('SoftBody', 'is_ray_pickable')
  bind_softbody_remove_collision_exception_with = api_core.godot_method_bind_get_method('SoftBody', 'remove_collision_exception_with')
  bind_softbody_set_areaAngular_stiffness = api_core.godot_method_bind_get_method('SoftBody', 'set_areaAngular_stiffness')
  bind_softbody_set_collision_layer = api_core.godot_method_bind_get_method('SoftBody', 'set_collision_layer')
  bind_softbody_set_collision_layer_bit = api_core.godot_method_bind_get_method('SoftBody', 'set_collision_layer_bit')
  bind_softbody_set_collision_mask = api_core.godot_method_bind_get_method('SoftBody', 'set_collision_mask')
  bind_softbody_set_collision_mask_bit = api_core.godot_method_bind_get_method('SoftBody', 'set_collision_mask_bit')
  bind_softbody_set_damping_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'set_damping_coefficient')
  bind_softbody_set_drag_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'set_drag_coefficient')
  bind_softbody_set_linear_stiffness = api_core.godot_method_bind_get_method('SoftBody', 'set_linear_stiffness')
  bind_softbody_set_parent_collision_ignore = api_core.godot_method_bind_get_method('SoftBody', 'set_parent_collision_ignore')
  bind_softbody_set_pose_matching_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'set_pose_matching_coefficient')
  bind_softbody_set_pressure_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'set_pressure_coefficient')
  bind_softbody_set_ray_pickable = api_core.godot_method_bind_get_method('SoftBody', 'set_ray_pickable')
  bind_softbody_set_simulation_precision = api_core.godot_method_bind_get_method('SoftBody', 'set_simulation_precision')
  bind_softbody_set_total_mass = api_core.godot_method_bind_get_method('SoftBody', 'set_total_mass')
  bind_softbody_set_volume_stiffness = api_core.godot_method_bind_get_method('SoftBody', 'set_volume_stiffness')

############################Generated class###################################
cdef class SoftBody(classes.MeshInstance.MeshInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SoftBody")())
##################################Generated Properties#########################################
  @property
  def areaAngular_stiffness(self): 
    return self.get_areaAngular_stiffness()
  @areaAngular_stiffness.setter 
  def areaAngular_stiffness(self,value): 
    self.set_areaAngular_stiffness(value)
  @property
  def collision_layer(self): 
    return self.get_collision_layer()
  @collision_layer.setter 
  def collision_layer(self,value): 
    self.set_collision_layer(value)
  @property
  def collision_mask(self): 
    return self.get_collision_mask()
  @collision_mask.setter 
  def collision_mask(self,value): 
    self.set_collision_mask(value)
  @property
  def damping_coefficient(self): 
    return self.get_damping_coefficient()
  @damping_coefficient.setter 
  def damping_coefficient(self,value): 
    self.set_damping_coefficient(value)
  @property
  def drag_coefficient(self): 
    return self.get_drag_coefficient()
  @drag_coefficient.setter 
  def drag_coefficient(self,value): 
    self.set_drag_coefficient(value)
  @property
  def linear_stiffness(self): 
    return self.get_linear_stiffness()
  @linear_stiffness.setter 
  def linear_stiffness(self,value): 
    self.set_linear_stiffness(value)
  @property
  def parent_collision_ignore(self): 
    return self.get_parent_collision_ignore()
  @parent_collision_ignore.setter 
  def parent_collision_ignore(self,value): 
    self.set_parent_collision_ignore(value)
  @property
  def pose_matching_coefficient(self): 
    return self.get_pose_matching_coefficient()
  @pose_matching_coefficient.setter 
  def pose_matching_coefficient(self,value): 
    self.set_pose_matching_coefficient(value)
  @property
  def pressure_coefficient(self): 
    return self.get_pressure_coefficient()
  @pressure_coefficient.setter 
  def pressure_coefficient(self,value): 
    self.set_pressure_coefficient(value)
  @property
  def ray_pickable(self): 
    return self.get_ray_pickable()
  @ray_pickable.setter 
  def ray_pickable(self,value): 
    self.set_ray_pickable(value)
  @property
  def simulation_precision(self): 
    return self.get_simulation_precision()
  @simulation_precision.setter 
  def simulation_precision(self,value): 
    self.set_simulation_precision(value)
  @property
  def total_mass(self): 
    return self.get_total_mass()
  @total_mass.setter 
  def total_mass(self,value): 
    self.set_total_mass(value)
  @property
  def volume_stiffness(self): 
    return self.get_volume_stiffness()
  @volume_stiffness.setter 
  def volume_stiffness(self,value): 
    self.set_volume_stiffness(value)

##################################Generated Methods#########################################
  def  _draw_soft_mesh(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_softbody__draw_soft_mesh,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  add_collision_exception_with(self,  classes.Node.Node body):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = body.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_add_collision_exception_with,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_areaAngular_stiffness(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_areaAngular_stiffness,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_exceptions(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_collision_exceptions,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_collision_layer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_collision_layer,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_layer_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_softbody_get_collision_layer_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_collision_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_softbody_get_collision_mask_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_damping_coefficient(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_damping_coefficient,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_drag_coefficient(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_drag_coefficient,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_linear_stiffness(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_linear_stiffness,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_parent_collision_ignore(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_parent_collision_ignore,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_pose_matching_coefficient(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_pose_matching_coefficient,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_pressure_coefficient(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_pressure_coefficient,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_simulation_precision(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_simulation_precision,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_total_mass(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_total_mass,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_volume_stiffness(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_get_volume_stiffness,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_ray_pickable(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_softbody_is_ray_pickable,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_collision_exception_with(self,  classes.Node.Node body):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = body.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_remove_collision_exception_with,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_areaAngular_stiffness(self,  float areaAngular_stiffness):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &areaAngular_stiffness
    api_core.godot_method_bind_ptrcall(bind_softbody_set_areaAngular_stiffness,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_layer(self,  int collision_layer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &collision_layer
    api_core.godot_method_bind_ptrcall(bind_softbody_set_collision_layer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_layer_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_softbody_set_collision_layer_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask(self,  int collision_mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &collision_mask
    api_core.godot_method_bind_ptrcall(bind_softbody_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_softbody_set_collision_mask_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_damping_coefficient(self,  float damping_coefficient):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &damping_coefficient
    api_core.godot_method_bind_ptrcall(bind_softbody_set_damping_coefficient,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_drag_coefficient(self,  float drag_coefficient):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &drag_coefficient
    api_core.godot_method_bind_ptrcall(bind_softbody_set_drag_coefficient,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_linear_stiffness(self,  float linear_stiffness):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &linear_stiffness
    api_core.godot_method_bind_ptrcall(bind_softbody_set_linear_stiffness,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_parent_collision_ignore(self,  NodePath parent_collision_ignore):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &parent_collision_ignore._native
    api_core.godot_method_bind_ptrcall(bind_softbody_set_parent_collision_ignore,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pose_matching_coefficient(self,  float pose_matching_coefficient):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pose_matching_coefficient
    api_core.godot_method_bind_ptrcall(bind_softbody_set_pose_matching_coefficient,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pressure_coefficient(self,  float pressure_coefficient):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pressure_coefficient
    api_core.godot_method_bind_ptrcall(bind_softbody_set_pressure_coefficient,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ray_pickable(self,  bool ray_pickable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ray_pickable
    api_core.godot_method_bind_ptrcall(bind_softbody_set_ray_pickable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_simulation_precision(self,  int simulation_precision):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &simulation_precision
    api_core.godot_method_bind_ptrcall(bind_softbody_set_simulation_precision,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_total_mass(self,  float mass):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mass
    api_core.godot_method_bind_ptrcall(bind_softbody_set_total_mass,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_volume_stiffness(self,  float volume_stiffness):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &volume_stiffness
    api_core.godot_method_bind_ptrcall(bind_softbody_set_volume_stiffness,self.godot_owner,args,NULL)
    hello('hallo2')
