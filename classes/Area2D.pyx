
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
cimport classes.CollisionObject2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_area2d__area_enter_tree
cdef godot_method_bind *bind_area2d__area_exit_tree
cdef godot_method_bind *bind_area2d__area_inout
cdef godot_method_bind *bind_area2d__body_enter_tree
cdef godot_method_bind *bind_area2d__body_exit_tree
cdef godot_method_bind *bind_area2d__body_inout
cdef godot_method_bind *bind_area2d_get_angular_damp
cdef godot_method_bind *bind_area2d_get_audio_bus_name
cdef godot_method_bind *bind_area2d_get_collision_layer
cdef godot_method_bind *bind_area2d_get_collision_layer_bit
cdef godot_method_bind *bind_area2d_get_collision_mask
cdef godot_method_bind *bind_area2d_get_collision_mask_bit
cdef godot_method_bind *bind_area2d_get_gravity
cdef godot_method_bind *bind_area2d_get_gravity_distance_scale
cdef godot_method_bind *bind_area2d_get_gravity_vector
cdef godot_method_bind *bind_area2d_get_linear_damp
cdef godot_method_bind *bind_area2d_get_overlapping_areas
cdef godot_method_bind *bind_area2d_get_overlapping_bodies
cdef godot_method_bind *bind_area2d_get_priority
cdef godot_method_bind *bind_area2d_get_space_override_mode
cdef godot_method_bind *bind_area2d_is_gravity_a_point
cdef godot_method_bind *bind_area2d_is_monitorable
cdef godot_method_bind *bind_area2d_is_monitoring
cdef godot_method_bind *bind_area2d_is_overriding_audio_bus
cdef godot_method_bind *bind_area2d_overlaps_area
cdef godot_method_bind *bind_area2d_overlaps_body
cdef godot_method_bind *bind_area2d_set_angular_damp
cdef godot_method_bind *bind_area2d_set_audio_bus_name
cdef godot_method_bind *bind_area2d_set_audio_bus_override
cdef godot_method_bind *bind_area2d_set_collision_layer
cdef godot_method_bind *bind_area2d_set_collision_layer_bit
cdef godot_method_bind *bind_area2d_set_collision_mask
cdef godot_method_bind *bind_area2d_set_collision_mask_bit
cdef godot_method_bind *bind_area2d_set_gravity
cdef godot_method_bind *bind_area2d_set_gravity_distance_scale
cdef godot_method_bind *bind_area2d_set_gravity_is_point
cdef godot_method_bind *bind_area2d_set_gravity_vector
cdef godot_method_bind *bind_area2d_set_linear_damp
cdef godot_method_bind *bind_area2d_set_monitorable
cdef godot_method_bind *bind_area2d_set_monitoring
cdef godot_method_bind *bind_area2d_set_priority
cdef godot_method_bind *bind_area2d_set_space_override_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_area2d__area_enter_tree = api_core.godot_method_bind_get_method('Area2D', '_area_enter_tree')
  bind_area2d__area_exit_tree = api_core.godot_method_bind_get_method('Area2D', '_area_exit_tree')
  bind_area2d__area_inout = api_core.godot_method_bind_get_method('Area2D', '_area_inout')
  bind_area2d__body_enter_tree = api_core.godot_method_bind_get_method('Area2D', '_body_enter_tree')
  bind_area2d__body_exit_tree = api_core.godot_method_bind_get_method('Area2D', '_body_exit_tree')
  bind_area2d__body_inout = api_core.godot_method_bind_get_method('Area2D', '_body_inout')
  bind_area2d_get_angular_damp = api_core.godot_method_bind_get_method('Area2D', 'get_angular_damp')
  bind_area2d_get_audio_bus_name = api_core.godot_method_bind_get_method('Area2D', 'get_audio_bus_name')
  bind_area2d_get_collision_layer = api_core.godot_method_bind_get_method('Area2D', 'get_collision_layer')
  bind_area2d_get_collision_layer_bit = api_core.godot_method_bind_get_method('Area2D', 'get_collision_layer_bit')
  bind_area2d_get_collision_mask = api_core.godot_method_bind_get_method('Area2D', 'get_collision_mask')
  bind_area2d_get_collision_mask_bit = api_core.godot_method_bind_get_method('Area2D', 'get_collision_mask_bit')
  bind_area2d_get_gravity = api_core.godot_method_bind_get_method('Area2D', 'get_gravity')
  bind_area2d_get_gravity_distance_scale = api_core.godot_method_bind_get_method('Area2D', 'get_gravity_distance_scale')
  bind_area2d_get_gravity_vector = api_core.godot_method_bind_get_method('Area2D', 'get_gravity_vector')
  bind_area2d_get_linear_damp = api_core.godot_method_bind_get_method('Area2D', 'get_linear_damp')
  bind_area2d_get_overlapping_areas = api_core.godot_method_bind_get_method('Area2D', 'get_overlapping_areas')
  bind_area2d_get_overlapping_bodies = api_core.godot_method_bind_get_method('Area2D', 'get_overlapping_bodies')
  bind_area2d_get_priority = api_core.godot_method_bind_get_method('Area2D', 'get_priority')
  bind_area2d_get_space_override_mode = api_core.godot_method_bind_get_method('Area2D', 'get_space_override_mode')
  bind_area2d_is_gravity_a_point = api_core.godot_method_bind_get_method('Area2D', 'is_gravity_a_point')
  bind_area2d_is_monitorable = api_core.godot_method_bind_get_method('Area2D', 'is_monitorable')
  bind_area2d_is_monitoring = api_core.godot_method_bind_get_method('Area2D', 'is_monitoring')
  bind_area2d_is_overriding_audio_bus = api_core.godot_method_bind_get_method('Area2D', 'is_overriding_audio_bus')
  bind_area2d_overlaps_area = api_core.godot_method_bind_get_method('Area2D', 'overlaps_area')
  bind_area2d_overlaps_body = api_core.godot_method_bind_get_method('Area2D', 'overlaps_body')
  bind_area2d_set_angular_damp = api_core.godot_method_bind_get_method('Area2D', 'set_angular_damp')
  bind_area2d_set_audio_bus_name = api_core.godot_method_bind_get_method('Area2D', 'set_audio_bus_name')
  bind_area2d_set_audio_bus_override = api_core.godot_method_bind_get_method('Area2D', 'set_audio_bus_override')
  bind_area2d_set_collision_layer = api_core.godot_method_bind_get_method('Area2D', 'set_collision_layer')
  bind_area2d_set_collision_layer_bit = api_core.godot_method_bind_get_method('Area2D', 'set_collision_layer_bit')
  bind_area2d_set_collision_mask = api_core.godot_method_bind_get_method('Area2D', 'set_collision_mask')
  bind_area2d_set_collision_mask_bit = api_core.godot_method_bind_get_method('Area2D', 'set_collision_mask_bit')
  bind_area2d_set_gravity = api_core.godot_method_bind_get_method('Area2D', 'set_gravity')
  bind_area2d_set_gravity_distance_scale = api_core.godot_method_bind_get_method('Area2D', 'set_gravity_distance_scale')
  bind_area2d_set_gravity_is_point = api_core.godot_method_bind_get_method('Area2D', 'set_gravity_is_point')
  bind_area2d_set_gravity_vector = api_core.godot_method_bind_get_method('Area2D', 'set_gravity_vector')
  bind_area2d_set_linear_damp = api_core.godot_method_bind_get_method('Area2D', 'set_linear_damp')
  bind_area2d_set_monitorable = api_core.godot_method_bind_get_method('Area2D', 'set_monitorable')
  bind_area2d_set_monitoring = api_core.godot_method_bind_get_method('Area2D', 'set_monitoring')
  bind_area2d_set_priority = api_core.godot_method_bind_get_method('Area2D', 'set_priority')
  bind_area2d_set_space_override_mode = api_core.godot_method_bind_get_method('Area2D', 'set_space_override_mode')

############################Generated class###################################
cdef class Area2D(classes.CollisionObject2D.CollisionObject2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Area2D")())
##################################Generated Properties#########################################
  @property
  def angular_damp(self): 
    return self.get_angular_damp()
  @angular_damp.setter 
  def angular_damp(self,value): 
    self.set_angular_damp(value)
  @property
  def audio_bus_name(self): 
    return self.get_audio_bus_name()
  @audio_bus_name.setter 
  def audio_bus_name(self,value): 
    self.set_audio_bus_name(value)
  @property
  def audio_bus_override(self): 
    return self.get_audio_bus_override()
  @audio_bus_override.setter 
  def audio_bus_override(self,value): 
    self.set_audio_bus_override(value)
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
  def gravity(self): 
    return self.get_gravity()
  @gravity.setter 
  def gravity(self,value): 
    self.set_gravity(value)
  @property
  def gravity_distance_scale(self): 
    return self.get_gravity_distance_scale()
  @gravity_distance_scale.setter 
  def gravity_distance_scale(self,value): 
    self.set_gravity_distance_scale(value)
  @property
  def gravity_point(self): 
    return self.get_gravity_point()
  @gravity_point.setter 
  def gravity_point(self,value): 
    self.set_gravity_point(value)
  @property
  def gravity_vec(self): 
    return self.get_gravity_vec()
  @gravity_vec.setter 
  def gravity_vec(self,value): 
    self.set_gravity_vec(value)
  @property
  def linear_damp(self): 
    return self.get_linear_damp()
  @linear_damp.setter 
  def linear_damp(self,value): 
    self.set_linear_damp(value)
  @property
  def monitorable(self): 
    return self.get_monitorable()
  @monitorable.setter 
  def monitorable(self,value): 
    self.set_monitorable(value)
  @property
  def monitoring(self): 
    return self.get_monitoring()
  @monitoring.setter 
  def monitoring(self,value): 
    self.set_monitoring(value)
  @property
  def priority(self): 
    return self.get_priority()
  @priority.setter 
  def priority(self,value): 
    self.set_priority(value)
  @property
  def space_override(self): 
    return self.get_space_override()
  @space_override.setter 
  def space_override(self,value): 
    self.set_space_override(value)

##################################Generated Methods#########################################
  def  _area_enter_tree(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_area2d__area_enter_tree,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _area_exit_tree(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_area2d__area_exit_tree,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _area_inout(self,  int arg0,  RID arg1,  int arg2,  int arg3,  int arg4):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &arg0
    args[1] = &arg1._native
    args[2] = &arg2
    args[3] = &arg3
    args[4] = &arg4
    api_core.godot_method_bind_ptrcall(bind_area2d__area_inout,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _body_enter_tree(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_area2d__body_enter_tree,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _body_exit_tree(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_area2d__body_exit_tree,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _body_inout(self,  int arg0,  RID arg1,  int arg2,  int arg3,  int arg4):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &arg0
    args[1] = &arg1._native
    args[2] = &arg2
    args[3] = &arg3
    args[4] = &arg4
    api_core.godot_method_bind_ptrcall(bind_area2d__body_inout,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_angular_damp(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_get_angular_damp,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_audio_bus_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_get_audio_bus_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_collision_layer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_get_collision_layer,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_layer_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_area2d_get_collision_layer_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_get_collision_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_area2d_get_collision_mask_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_gravity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_get_gravity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_gravity_distance_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_get_gravity_distance_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_gravity_vector(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_get_gravity_vector,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_linear_damp(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_get_linear_damp,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_overlapping_areas(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_get_overlapping_areas,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_overlapping_bodies(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_get_overlapping_bodies,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_priority(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_get_priority,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_space_override_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Area2D_SpaceOverride* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_get_space_override_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_gravity_a_point(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_is_gravity_a_point,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_monitorable(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_is_monitorable,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_monitoring(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_is_monitoring,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_overriding_audio_bus(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_area2d_is_overriding_audio_bus,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  overlaps_area(self,  classes.Node.Node area):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = area.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area2d_overlaps_area,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  overlaps_body(self,  classes.Node.Node body):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = body.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area2d_overlaps_body,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_angular_damp(self,  float angular_damp):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &angular_damp
    api_core.godot_method_bind_ptrcall(bind_area2d_set_angular_damp,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_audio_bus_name(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_area2d_set_audio_bus_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_audio_bus_override(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_area2d_set_audio_bus_override,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_layer(self,  int collision_layer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &collision_layer
    api_core.godot_method_bind_ptrcall(bind_area2d_set_collision_layer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_layer_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_area2d_set_collision_layer_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask(self,  int collision_mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &collision_mask
    api_core.godot_method_bind_ptrcall(bind_area2d_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_area2d_set_collision_mask_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_gravity(self,  float gravity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &gravity
    api_core.godot_method_bind_ptrcall(bind_area2d_set_gravity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_gravity_distance_scale(self,  float distance_scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &distance_scale
    api_core.godot_method_bind_ptrcall(bind_area2d_set_gravity_distance_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_gravity_is_point(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_area2d_set_gravity_is_point,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_gravity_vector(self,  Vector2 vector):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &vector._native
    api_core.godot_method_bind_ptrcall(bind_area2d_set_gravity_vector,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_linear_damp(self,  float linear_damp):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &linear_damp
    api_core.godot_method_bind_ptrcall(bind_area2d_set_linear_damp,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_monitorable(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_area2d_set_monitorable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_monitoring(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_area2d_set_monitoring,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_priority(self,  float priority):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &priority
    api_core.godot_method_bind_ptrcall(bind_area2d_set_priority,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_space_override_mode(self,  int space_override_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &space_override_mode
    api_core.godot_method_bind_ptrcall(bind_area2d_set_space_override_mode,self.godot_owner,args,NULL)
    hello('hallo2')
