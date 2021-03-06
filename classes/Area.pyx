from classes.CollisionObject cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_area__area_enter_tree
cdef godot_method_bind *bind_area__area_exit_tree
cdef godot_method_bind *bind_area__area_inout
cdef godot_method_bind *bind_area__body_enter_tree
cdef godot_method_bind *bind_area__body_exit_tree
cdef godot_method_bind *bind_area__body_inout
cdef godot_method_bind *bind_area_get_angular_damp
cdef godot_method_bind *bind_area_get_audio_bus
cdef godot_method_bind *bind_area_get_collision_layer
cdef godot_method_bind *bind_area_get_collision_layer_bit
cdef godot_method_bind *bind_area_get_collision_mask
cdef godot_method_bind *bind_area_get_collision_mask_bit
cdef godot_method_bind *bind_area_get_gravity
cdef godot_method_bind *bind_area_get_gravity_distance_scale
cdef godot_method_bind *bind_area_get_gravity_vector
cdef godot_method_bind *bind_area_get_linear_damp
cdef godot_method_bind *bind_area_get_overlapping_areas
cdef godot_method_bind *bind_area_get_overlapping_bodies
cdef godot_method_bind *bind_area_get_priority
cdef godot_method_bind *bind_area_get_reverb_amount
cdef godot_method_bind *bind_area_get_reverb_bus
cdef godot_method_bind *bind_area_get_reverb_uniformity
cdef godot_method_bind *bind_area_get_space_override_mode
cdef godot_method_bind *bind_area_is_gravity_a_point
cdef godot_method_bind *bind_area_is_monitorable
cdef godot_method_bind *bind_area_is_monitoring
cdef godot_method_bind *bind_area_is_overriding_audio_bus
cdef godot_method_bind *bind_area_is_using_reverb_bus
cdef godot_method_bind *bind_area_overlaps_area
cdef godot_method_bind *bind_area_overlaps_body
cdef godot_method_bind *bind_area_set_angular_damp
cdef godot_method_bind *bind_area_set_audio_bus
cdef godot_method_bind *bind_area_set_audio_bus_override
cdef godot_method_bind *bind_area_set_collision_layer
cdef godot_method_bind *bind_area_set_collision_layer_bit
cdef godot_method_bind *bind_area_set_collision_mask
cdef godot_method_bind *bind_area_set_collision_mask_bit
cdef godot_method_bind *bind_area_set_gravity
cdef godot_method_bind *bind_area_set_gravity_distance_scale
cdef godot_method_bind *bind_area_set_gravity_is_point
cdef godot_method_bind *bind_area_set_gravity_vector
cdef godot_method_bind *bind_area_set_linear_damp
cdef godot_method_bind *bind_area_set_monitorable
cdef godot_method_bind *bind_area_set_monitoring
cdef godot_method_bind *bind_area_set_priority
cdef godot_method_bind *bind_area_set_reverb_amount
cdef godot_method_bind *bind_area_set_reverb_bus
cdef godot_method_bind *bind_area_set_reverb_uniformity
cdef godot_method_bind *bind_area_set_space_override_mode
cdef godot_method_bind *bind_area_set_use_reverb_bus
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_area__area_enter_tree = api_core.godot_method_bind_get_method('Area', '_area_enter_tree')
  bind_area__area_exit_tree = api_core.godot_method_bind_get_method('Area', '_area_exit_tree')
  bind_area__area_inout = api_core.godot_method_bind_get_method('Area', '_area_inout')
  bind_area__body_enter_tree = api_core.godot_method_bind_get_method('Area', '_body_enter_tree')
  bind_area__body_exit_tree = api_core.godot_method_bind_get_method('Area', '_body_exit_tree')
  bind_area__body_inout = api_core.godot_method_bind_get_method('Area', '_body_inout')
  bind_area_get_angular_damp = api_core.godot_method_bind_get_method('Area', 'get_angular_damp')
  bind_area_get_audio_bus = api_core.godot_method_bind_get_method('Area', 'get_audio_bus')
  bind_area_get_collision_layer = api_core.godot_method_bind_get_method('Area', 'get_collision_layer')
  bind_area_get_collision_layer_bit = api_core.godot_method_bind_get_method('Area', 'get_collision_layer_bit')
  bind_area_get_collision_mask = api_core.godot_method_bind_get_method('Area', 'get_collision_mask')
  bind_area_get_collision_mask_bit = api_core.godot_method_bind_get_method('Area', 'get_collision_mask_bit')
  bind_area_get_gravity = api_core.godot_method_bind_get_method('Area', 'get_gravity')
  bind_area_get_gravity_distance_scale = api_core.godot_method_bind_get_method('Area', 'get_gravity_distance_scale')
  bind_area_get_gravity_vector = api_core.godot_method_bind_get_method('Area', 'get_gravity_vector')
  bind_area_get_linear_damp = api_core.godot_method_bind_get_method('Area', 'get_linear_damp')
  bind_area_get_overlapping_areas = api_core.godot_method_bind_get_method('Area', 'get_overlapping_areas')
  bind_area_get_overlapping_bodies = api_core.godot_method_bind_get_method('Area', 'get_overlapping_bodies')
  bind_area_get_priority = api_core.godot_method_bind_get_method('Area', 'get_priority')
  bind_area_get_reverb_amount = api_core.godot_method_bind_get_method('Area', 'get_reverb_amount')
  bind_area_get_reverb_bus = api_core.godot_method_bind_get_method('Area', 'get_reverb_bus')
  bind_area_get_reverb_uniformity = api_core.godot_method_bind_get_method('Area', 'get_reverb_uniformity')
  bind_area_get_space_override_mode = api_core.godot_method_bind_get_method('Area', 'get_space_override_mode')
  bind_area_is_gravity_a_point = api_core.godot_method_bind_get_method('Area', 'is_gravity_a_point')
  bind_area_is_monitorable = api_core.godot_method_bind_get_method('Area', 'is_monitorable')
  bind_area_is_monitoring = api_core.godot_method_bind_get_method('Area', 'is_monitoring')
  bind_area_is_overriding_audio_bus = api_core.godot_method_bind_get_method('Area', 'is_overriding_audio_bus')
  bind_area_is_using_reverb_bus = api_core.godot_method_bind_get_method('Area', 'is_using_reverb_bus')
  bind_area_overlaps_area = api_core.godot_method_bind_get_method('Area', 'overlaps_area')
  bind_area_overlaps_body = api_core.godot_method_bind_get_method('Area', 'overlaps_body')
  bind_area_set_angular_damp = api_core.godot_method_bind_get_method('Area', 'set_angular_damp')
  bind_area_set_audio_bus = api_core.godot_method_bind_get_method('Area', 'set_audio_bus')
  bind_area_set_audio_bus_override = api_core.godot_method_bind_get_method('Area', 'set_audio_bus_override')
  bind_area_set_collision_layer = api_core.godot_method_bind_get_method('Area', 'set_collision_layer')
  bind_area_set_collision_layer_bit = api_core.godot_method_bind_get_method('Area', 'set_collision_layer_bit')
  bind_area_set_collision_mask = api_core.godot_method_bind_get_method('Area', 'set_collision_mask')
  bind_area_set_collision_mask_bit = api_core.godot_method_bind_get_method('Area', 'set_collision_mask_bit')
  bind_area_set_gravity = api_core.godot_method_bind_get_method('Area', 'set_gravity')
  bind_area_set_gravity_distance_scale = api_core.godot_method_bind_get_method('Area', 'set_gravity_distance_scale')
  bind_area_set_gravity_is_point = api_core.godot_method_bind_get_method('Area', 'set_gravity_is_point')
  bind_area_set_gravity_vector = api_core.godot_method_bind_get_method('Area', 'set_gravity_vector')
  bind_area_set_linear_damp = api_core.godot_method_bind_get_method('Area', 'set_linear_damp')
  bind_area_set_monitorable = api_core.godot_method_bind_get_method('Area', 'set_monitorable')
  bind_area_set_monitoring = api_core.godot_method_bind_get_method('Area', 'set_monitoring')
  bind_area_set_priority = api_core.godot_method_bind_get_method('Area', 'set_priority')
  bind_area_set_reverb_amount = api_core.godot_method_bind_get_method('Area', 'set_reverb_amount')
  bind_area_set_reverb_bus = api_core.godot_method_bind_get_method('Area', 'set_reverb_bus')
  bind_area_set_reverb_uniformity = api_core.godot_method_bind_get_method('Area', 'set_reverb_uniformity')
  bind_area_set_space_override_mode = api_core.godot_method_bind_get_method('Area', 'set_space_override_mode')
  bind_area_set_use_reverb_bus = api_core.godot_method_bind_get_method('Area', 'set_use_reverb_bus')

############################Generated class###################################
cdef class Area(CollisionObject):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Area")())
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
  def reverb_bus_amount(self): 
    return self.get_reverb_bus_amount()
  @reverb_bus_amount.setter 
  def reverb_bus_amount(self,value): 
    self.set_reverb_bus_amount(value)
  @property
  def reverb_bus_enable(self): 
    return self.get_reverb_bus_enable()
  @reverb_bus_enable.setter 
  def reverb_bus_enable(self,value): 
    self.set_reverb_bus_enable(value)
  @property
  def reverb_bus_name(self): 
    return self.get_reverb_bus_name()
  @reverb_bus_name.setter 
  def reverb_bus_name(self,value): 
    self.set_reverb_bus_name(value)
  @property
  def reverb_bus_uniformity(self): 
    return self.get_reverb_bus_uniformity()
  @reverb_bus_uniformity.setter 
  def reverb_bus_uniformity(self,value): 
    self.set_reverb_bus_uniformity(value)
  @property
  def space_override(self): 
    return self.get_space_override()
  @space_override.setter 
  def space_override(self,value): 
    self.set_space_override(value)

##################################Generated Methods#########################################
  def  _area_enter_tree(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area__area_enter_tree,self.godot_owner,[NULL,],NULL)
  def  _area_exit_tree(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area__area_exit_tree,self.godot_owner,[NULL,],NULL)
  def  _area_inout(self, arg0arg1arg2arg3arg4):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area__area_inout,self.godot_owner,[NULL,],NULL)
  def  _body_enter_tree(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area__body_enter_tree,self.godot_owner,[NULL,],NULL)
  def  _body_exit_tree(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area__body_exit_tree,self.godot_owner,[NULL,],NULL)
  def  _body_inout(self, arg0arg1arg2arg3arg4):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area__body_inout,self.godot_owner,[NULL,],NULL)
  def  get_angular_damp(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_area_get_angular_damp,self.godot_owner,[NULL,],&ret)
  def  get_audio_bus(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_area_get_audio_bus,self.godot_owner,[NULL,],&ret)
  def  get_collision_layer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_area_get_collision_layer,self.godot_owner,[NULL,],&ret)
  def  get_collision_layer_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_area_get_collision_layer_bit,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_area_get_collision_mask,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_area_get_collision_mask_bit,self.godot_owner,[NULL,],&ret)
  def  get_gravity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_area_get_gravity,self.godot_owner,[NULL,],&ret)
  def  get_gravity_distance_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_area_get_gravity_distance_scale,self.godot_owner,[NULL,],&ret)
  def  get_gravity_vector(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_area_get_gravity_vector,self.godot_owner,[NULL,],&ret)
  def  get_linear_damp(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_area_get_linear_damp,self.godot_owner,[NULL,],&ret)
  def  get_overlapping_areas(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_area_get_overlapping_areas,self.godot_owner,[NULL,],&ret)
  def  get_overlapping_bodies(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_area_get_overlapping_bodies,self.godot_owner,[NULL,],&ret)
  def  get_priority(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_area_get_priority,self.godot_owner,[NULL,],&ret)
  def  get_reverb_amount(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_area_get_reverb_amount,self.godot_owner,[NULL,],&ret)
  def  get_reverb_bus(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_area_get_reverb_bus,self.godot_owner,[NULL,],&ret)
  def  get_reverb_uniformity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_area_get_reverb_uniformity,self.godot_owner,[NULL,],&ret)
  def  get_space_override_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Area::SpaceOverride ret
    api_core.godot_method_bind_ptrcall(bind_area_get_space_override_mode,self.godot_owner,[NULL,],&ret)
  def  is_gravity_a_point(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_area_is_gravity_a_point,self.godot_owner,[NULL,],&ret)
  def  is_monitorable(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_area_is_monitorable,self.godot_owner,[NULL,],&ret)
  def  is_monitoring(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_area_is_monitoring,self.godot_owner,[NULL,],&ret)
  def  is_overriding_audio_bus(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_area_is_overriding_audio_bus,self.godot_owner,[NULL,],&ret)
  def  is_using_reverb_bus(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_area_is_using_reverb_bus,self.godot_owner,[NULL,],&ret)
  def  overlaps_area(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_area_overlaps_area,self.godot_owner,[NULL,],&ret)
  def  overlaps_body(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_area_overlaps_body,self.godot_owner,[NULL,],&ret)
  def  set_angular_damp(self, angular_damp):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_angular_damp,self.godot_owner,[NULL,],NULL)
  def  set_audio_bus(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_audio_bus,self.godot_owner,[NULL,],NULL)
  def  set_audio_bus_override(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_audio_bus_override,self.godot_owner,[NULL,],NULL)
  def  set_collision_layer(self, collision_layer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_collision_layer,self.godot_owner,[NULL,],NULL)
  def  set_collision_layer_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_collision_layer_bit,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask(self, collision_mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_collision_mask_bit,self.godot_owner,[NULL,],NULL)
  def  set_gravity(self, gravity):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_gravity,self.godot_owner,[NULL,],NULL)
  def  set_gravity_distance_scale(self, distance_scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_gravity_distance_scale,self.godot_owner,[NULL,],NULL)
  def  set_gravity_is_point(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_gravity_is_point,self.godot_owner,[NULL,],NULL)
  def  set_gravity_vector(self, vector):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_gravity_vector,self.godot_owner,[NULL,],NULL)
  def  set_linear_damp(self, linear_damp):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_linear_damp,self.godot_owner,[NULL,],NULL)
  def  set_monitorable(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_monitorable,self.godot_owner,[NULL,],NULL)
  def  set_monitoring(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_monitoring,self.godot_owner,[NULL,],NULL)
  def  set_priority(self, priority):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_priority,self.godot_owner,[NULL,],NULL)
  def  set_reverb_amount(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_reverb_amount,self.godot_owner,[NULL,],NULL)
  def  set_reverb_bus(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_reverb_bus,self.godot_owner,[NULL,],NULL)
  def  set_reverb_uniformity(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_reverb_uniformity,self.godot_owner,[NULL,],NULL)
  def  set_space_override_mode(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_space_override_mode,self.godot_owner,[NULL,],NULL)
  def  set_use_reverb_bus(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_area_set_use_reverb_bus,self.godot_owner,[NULL,],NULL)
