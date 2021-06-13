
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
cimport classes.Mesh
cimport classes.ARVRServer
cimport classes.Object 

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
cdef class ARVRPositionalTracker(classes.Object.Object):
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
  def  _set_joy_id(self,  int joy_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &joy_id
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker__set_joy_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_mesh(self,  classes.Mesh.Mesh mesh):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = mesh.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker__set_mesh,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_name(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker__set_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_orientation(self,  Basis orientation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &orientation._native
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker__set_orientation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_rw_position(self,  Vector3 rw_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rw_position._native
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker__set_rw_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_type(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker__set_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_hand(self):
    cdef godot_object *_owner = self.godot_owner

    cdef ARVRPositionalTracker_TrackerHand* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_hand,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_joy_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_joy_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_mesh,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_orientation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_basis* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_orientation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Basis.new_static(dereference(ret))

  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_rumble(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_rumble,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tracks_orientation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_tracks_orientation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tracks_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_tracks_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_transform(self,  bool adjust_by_reference_frame):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    cdef void *args[1]

    args[0] = &adjust_by_reference_frame
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_transform,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  get_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef classes.ARVRServer.ARVRServer_TrackerType* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_get_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_rumble(self,  float rumble):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rumble
    api_core.godot_method_bind_ptrcall(bind_arvrpositionaltracker_set_rumble,self.godot_owner,args,NULL)
    hello('hallo2')
