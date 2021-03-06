from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_arvrpositionaltracker__set_joy_id
cdef godot_method_bind *bind_arvrpositionaltracker__set_mesh
cdef godot_method_bind *bind_arvrpositionaltracker__set_name
cdef godot_method_bind *bind_arvrpositionaltracker__set_orientation
cdef godot_method_bind *bind_arvrpositionaltracker__set_rw_position
cdef godot_method_bind *bind_arvrpositionaltracker__set_type
cdef godot_method_bind *bind_arvrpositionaltracker_get_hand
cdef godot_method_bind *bind_arvrpositionaltracker_get_joy_id
cdef godot_method_bind *bind_arvrpositionaltracker_get_mesh
cdef godot_method_bind *bind_arvrpositionaltracker_get_name
cdef godot_method_bind *bind_arvrpositionaltracker_get_orientation
cdef godot_method_bind *bind_arvrpositionaltracker_get_position
cdef godot_method_bind *bind_arvrpositionaltracker_get_rumble
cdef godot_method_bind *bind_arvrpositionaltracker_get_tracks_orientation
cdef godot_method_bind *bind_arvrpositionaltracker_get_tracks_position
cdef godot_method_bind *bind_arvrpositionaltracker_get_transform
cdef godot_method_bind *bind_arvrpositionaltracker_get_type
cdef godot_method_bind *bind_arvrpositionaltracker_set_rumble
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_arvrpositionaltracker__set_joy_id = api_core.godot_method_bind_get_method('ARVRPositionalTracker', '_set_joy_id')
  bind_arvrpositionaltracker__set_mesh = api_core.godot_method_bind_get_method('ARVRPositionalTracker', '_set_mesh')
  bind_arvrpositionaltracker__set_name = api_core.godot_method_bind_get_method('ARVRPositionalTracker', '_set_name')
  bind_arvrpositionaltracker__set_orientation = api_core.godot_method_bind_get_method('ARVRPositionalTracker', '_set_orientation')
  bind_arvrpositionaltracker__set_rw_position = api_core.godot_method_bind_get_method('ARVRPositionalTracker', '_set_rw_position')
  bind_arvrpositionaltracker__set_type = api_core.godot_method_bind_get_method('ARVRPositionalTracker', '_set_type')
  bind_arvrpositionaltracker_get_hand = api_core.godot_method_bind_get_method('ARVRPositionalTracker', 'get_hand')
  bind_arvrpositionaltracker_get_joy_id = api_core.godot_method_bind_get_method('ARVRPositionalTracker', 'get_joy_id')
  bind_arvrpositionaltracker_get_mesh = api_core.godot_method_bind_get_method('ARVRPositionalTracker', 'get_mesh')
  bind_arvrpositionaltracker_get_name = api_core.godot_method_bind_get_method('ARVRPositionalTracker', 'get_name')
  bind_arvrpositionaltracker_get_orientation = api_core.godot_method_bind_get_method('ARVRPositionalTracker', 'get_orientation')
  bind_arvrpositionaltracker_get_position = api_core.godot_method_bind_get_method('ARVRPositionalTracker', 'get_position')
  bind_arvrpositionaltracker_get_rumble = api_core.godot_method_bind_get_method('ARVRPositionalTracker', 'get_rumble')
  bind_arvrpositionaltracker_get_tracks_orientation = api_core.godot_method_bind_get_method('ARVRPositionalTracker', 'get_tracks_orientation')
  bind_arvrpositionaltracker_get_tracks_position = api_core.godot_method_bind_get_method('ARVRPositionalTracker', 'get_tracks_position')
  bind_arvrpositionaltracker_get_transform = api_core.godot_method_bind_get_method('ARVRPositionalTracker', 'get_transform')
  bind_arvrpositionaltracker_get_type = api_core.godot_method_bind_get_method('ARVRPositionalTracker', 'get_type')
  bind_arvrpositionaltracker_set_rumble = api_core.godot_method_bind_get_method('ARVRPositionalTracker', 'set_rumble')

############################Generated class###################################
cdef class ARVRPositionalTracker(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ARVRPositionalTracker")())
##################################Generated Properties#########################################
  @property
  def rumble(self): 
    return self.get_rumble()
  @rumble.setter 
  def rumble(self,value): 
    self.set_rumble(value)

##################################Generated Methods#########################################
  def  _set_joy_id(self, joy_id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker__set_joy_id,self.godot_owner,[NULL,],NULL)
  def  _set_mesh(self, mesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker__set_mesh,self.godot_owner,[NULL,],NULL)
  def  _set_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker__set_name,self.godot_owner,[NULL,],NULL)
  def  _set_orientation(self, orientation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker__set_orientation,self.godot_owner,[NULL,],NULL)
  def  _set_rw_position(self, rw_position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker__set_rw_position,self.godot_owner,[NULL,],NULL)
  def  _set_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker__set_type,self.godot_owner,[NULL,],NULL)
  def  get_hand(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ARVRPositionalTracker::TrackerHand ret
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_hand,self.godot_owner,[NULL,],&ret)
  def  get_joy_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_joy_id,self.godot_owner,[NULL,],&ret)
  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh ret
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_mesh,self.godot_owner,[NULL,],&ret)
  def  get_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_name,self.godot_owner,[NULL,],&ret)
  def  get_orientation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Basis ret
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_orientation,self.godot_owner,[NULL,],&ret)
  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_position,self.godot_owner,[NULL,],&ret)
  def  get_rumble(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_rumble,self.godot_owner,[NULL,],&ret)
  def  get_tracks_orientation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_tracks_orientation,self.godot_owner,[NULL,],&ret)
  def  get_tracks_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_tracks_position,self.godot_owner,[NULL,],&ret)
  def  get_transform(self, adjust_by_reference_frame):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_transform,self.godot_owner,[NULL,],&ret)
  def  get_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ARVRServer::TrackerType ret
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_type,self.godot_owner,[NULL,],&ret)
  def  set_rumble(self, rumble):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_set_rumble,self.godot_owner,[NULL,],NULL)
