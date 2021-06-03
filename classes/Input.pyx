
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.InputEvent
cimport classes.Resource
cimport classes.Object 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_input_action_press
cdef godot_method_bind *bind_input_action_release
cdef godot_method_bind *bind_input_add_joy_mapping
cdef godot_method_bind *bind_input_get_accelerometer
cdef godot_method_bind *bind_input_get_action_strength
cdef godot_method_bind *bind_input_get_connected_joypads
cdef godot_method_bind *bind_input_get_current_cursor_shape
cdef godot_method_bind *bind_input_get_gravity
cdef godot_method_bind *bind_input_get_gyroscope
cdef godot_method_bind *bind_input_get_joy_axis
cdef godot_method_bind *bind_input_get_joy_axis_index_from_string
cdef godot_method_bind *bind_input_get_joy_axis_string
cdef godot_method_bind *bind_input_get_joy_button_index_from_string
cdef godot_method_bind *bind_input_get_joy_button_string
cdef godot_method_bind *bind_input_get_joy_guid
cdef godot_method_bind *bind_input_get_joy_name
cdef godot_method_bind *bind_input_get_joy_vibration_duration
cdef godot_method_bind *bind_input_get_joy_vibration_strength
cdef godot_method_bind *bind_input_get_last_mouse_speed
cdef godot_method_bind *bind_input_get_magnetometer
cdef godot_method_bind *bind_input_get_mouse_button_mask
cdef godot_method_bind *bind_input_get_mouse_mode
cdef godot_method_bind *bind_input_is_action_just_pressed
cdef godot_method_bind *bind_input_is_action_just_released
cdef godot_method_bind *bind_input_is_action_pressed
cdef godot_method_bind *bind_input_is_joy_button_pressed
cdef godot_method_bind *bind_input_is_joy_known
cdef godot_method_bind *bind_input_is_key_pressed
cdef godot_method_bind *bind_input_is_mouse_button_pressed
cdef godot_method_bind *bind_input_joy_connection_changed
cdef godot_method_bind *bind_input_parse_input_event
cdef godot_method_bind *bind_input_remove_joy_mapping
cdef godot_method_bind *bind_input_set_custom_mouse_cursor
cdef godot_method_bind *bind_input_set_default_cursor_shape
cdef godot_method_bind *bind_input_set_mouse_mode
cdef godot_method_bind *bind_input_set_use_accumulated_input
cdef godot_method_bind *bind_input_start_joy_vibration
cdef godot_method_bind *bind_input_stop_joy_vibration
cdef godot_method_bind *bind_input_vibrate_handheld
cdef godot_method_bind *bind_input_warp_mouse_position
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_input_action_press = api_core.godot_method_bind_get_method('Input', 'action_press')
  bind_input_action_release = api_core.godot_method_bind_get_method('Input', 'action_release')
  bind_input_add_joy_mapping = api_core.godot_method_bind_get_method('Input', 'add_joy_mapping')
  bind_input_get_accelerometer = api_core.godot_method_bind_get_method('Input', 'get_accelerometer')
  bind_input_get_action_strength = api_core.godot_method_bind_get_method('Input', 'get_action_strength')
  bind_input_get_connected_joypads = api_core.godot_method_bind_get_method('Input', 'get_connected_joypads')
  bind_input_get_current_cursor_shape = api_core.godot_method_bind_get_method('Input', 'get_current_cursor_shape')
  bind_input_get_gravity = api_core.godot_method_bind_get_method('Input', 'get_gravity')
  bind_input_get_gyroscope = api_core.godot_method_bind_get_method('Input', 'get_gyroscope')
  bind_input_get_joy_axis = api_core.godot_method_bind_get_method('Input', 'get_joy_axis')
  bind_input_get_joy_axis_index_from_string = api_core.godot_method_bind_get_method('Input', 'get_joy_axis_index_from_string')
  bind_input_get_joy_axis_string = api_core.godot_method_bind_get_method('Input', 'get_joy_axis_string')
  bind_input_get_joy_button_index_from_string = api_core.godot_method_bind_get_method('Input', 'get_joy_button_index_from_string')
  bind_input_get_joy_button_string = api_core.godot_method_bind_get_method('Input', 'get_joy_button_string')
  bind_input_get_joy_guid = api_core.godot_method_bind_get_method('Input', 'get_joy_guid')
  bind_input_get_joy_name = api_core.godot_method_bind_get_method('Input', 'get_joy_name')
  bind_input_get_joy_vibration_duration = api_core.godot_method_bind_get_method('Input', 'get_joy_vibration_duration')
  bind_input_get_joy_vibration_strength = api_core.godot_method_bind_get_method('Input', 'get_joy_vibration_strength')
  bind_input_get_last_mouse_speed = api_core.godot_method_bind_get_method('Input', 'get_last_mouse_speed')
  bind_input_get_magnetometer = api_core.godot_method_bind_get_method('Input', 'get_magnetometer')
  bind_input_get_mouse_button_mask = api_core.godot_method_bind_get_method('Input', 'get_mouse_button_mask')
  bind_input_get_mouse_mode = api_core.godot_method_bind_get_method('Input', 'get_mouse_mode')
  bind_input_is_action_just_pressed = api_core.godot_method_bind_get_method('Input', 'is_action_just_pressed')
  bind_input_is_action_just_released = api_core.godot_method_bind_get_method('Input', 'is_action_just_released')
  bind_input_is_action_pressed = api_core.godot_method_bind_get_method('Input', 'is_action_pressed')
  bind_input_is_joy_button_pressed = api_core.godot_method_bind_get_method('Input', 'is_joy_button_pressed')
  bind_input_is_joy_known = api_core.godot_method_bind_get_method('Input', 'is_joy_known')
  bind_input_is_key_pressed = api_core.godot_method_bind_get_method('Input', 'is_key_pressed')
  bind_input_is_mouse_button_pressed = api_core.godot_method_bind_get_method('Input', 'is_mouse_button_pressed')
  bind_input_joy_connection_changed = api_core.godot_method_bind_get_method('Input', 'joy_connection_changed')
  bind_input_parse_input_event = api_core.godot_method_bind_get_method('Input', 'parse_input_event')
  bind_input_remove_joy_mapping = api_core.godot_method_bind_get_method('Input', 'remove_joy_mapping')
  bind_input_set_custom_mouse_cursor = api_core.godot_method_bind_get_method('Input', 'set_custom_mouse_cursor')
  bind_input_set_default_cursor_shape = api_core.godot_method_bind_get_method('Input', 'set_default_cursor_shape')
  bind_input_set_mouse_mode = api_core.godot_method_bind_get_method('Input', 'set_mouse_mode')
  bind_input_set_use_accumulated_input = api_core.godot_method_bind_get_method('Input', 'set_use_accumulated_input')
  bind_input_start_joy_vibration = api_core.godot_method_bind_get_method('Input', 'start_joy_vibration')
  bind_input_stop_joy_vibration = api_core.godot_method_bind_get_method('Input', 'stop_joy_vibration')
  bind_input_vibrate_handheld = api_core.godot_method_bind_get_method('Input', 'vibrate_handheld')
  bind_input_warp_mouse_position = api_core.godot_method_bind_get_method('Input', 'warp_mouse_position')

############################Generated class###################################
cdef class Input(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Input")())
##################################Generated Methods#########################################
  def  action_press(self,  String action,  float strength):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &action._native
    args[1] = &strength
    api_core.godot_method_bind_ptrcall(bind_input_action_press,self.godot_owner,args,NULL)
    hello('hallo2')
  def  action_release(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_input_action_release,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_joy_mapping(self,  String mapping,  bool update_existing):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &mapping._native
    args[1] = &update_existing
    api_core.godot_method_bind_ptrcall(bind_input_add_joy_mapping,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_accelerometer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_input_get_accelerometer,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_action_strength(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_input_get_action_strength,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_connected_joypads(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_input_get_connected_joypads,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_current_cursor_shape(self):
    cdef godot_object *_owner = self.godot_owner

    cdef CursorShape* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_input_get_current_cursor_shape,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_gravity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_input_get_gravity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_gyroscope(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_input_get_gyroscope,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_joy_axis(self,  int device,  int axis):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &device
    args[1] = &axis
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_axis,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_joy_axis_index_from_string(self,  String axis):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &axis._native
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_axis_index_from_string,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_joy_axis_string(self,  int axis_index):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &axis_index
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_axis_string,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_joy_button_index_from_string(self,  String button):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &button._native
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_button_index_from_string,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_joy_button_string(self,  int button_index):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &button_index
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_button_string,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_joy_guid(self,  int device):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &device
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_guid,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_joy_name(self,  int device):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &device
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_joy_vibration_duration(self,  int device):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &device
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_vibration_duration,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_joy_vibration_strength(self,  int device):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &device
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_vibration_strength,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_last_mouse_speed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_input_get_last_mouse_speed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_magnetometer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_input_get_magnetometer,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_mouse_button_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_input_get_mouse_button_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_mouse_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef MouseMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_input_get_mouse_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_action_just_pressed(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_input_is_action_just_pressed,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_action_just_released(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_input_is_action_just_released,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_action_pressed(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_input_is_action_pressed,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_joy_button_pressed(self,  int device,  int button):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &device
    args[1] = &button
    api_core.godot_method_bind_ptrcall(bind_input_is_joy_button_pressed,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_joy_known(self,  int device):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &device
    api_core.godot_method_bind_ptrcall(bind_input_is_joy_known,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_key_pressed(self,  int scancode):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &scancode
    api_core.godot_method_bind_ptrcall(bind_input_is_key_pressed,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_mouse_button_pressed(self,  int button):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &button
    api_core.godot_method_bind_ptrcall(bind_input_is_mouse_button_pressed,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  joy_connection_changed(self,  int device,  bool connected,  String name,  String guid):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &device
    args[1] = &connected
    args[2] = &name._native
    args[3] = &guid._native
    api_core.godot_method_bind_ptrcall(bind_input_joy_connection_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  parse_input_event(self,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_parse_input_event,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_joy_mapping(self,  String guid):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &guid._native
    api_core.godot_method_bind_ptrcall(bind_input_remove_joy_mapping,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_custom_mouse_cursor(self,  classes.Resource.Resource image,  int shape,  Vector2 hotspot):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = image.godot_owner
    args[1] = &shape
    args[2] = &hotspot._native
    api_core.godot_method_bind_ptrcall(bind_input_set_custom_mouse_cursor,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_default_cursor_shape(self,  int shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &shape
    api_core.godot_method_bind_ptrcall(bind_input_set_default_cursor_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mouse_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_input_set_mouse_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_accumulated_input(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_input_set_use_accumulated_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  start_joy_vibration(self,  int device,  float weak_magnitude,  float strong_magnitude,  float duration):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &device
    args[1] = &weak_magnitude
    args[2] = &strong_magnitude
    args[3] = &duration
    api_core.godot_method_bind_ptrcall(bind_input_start_joy_vibration,self.godot_owner,args,NULL)
    hello('hallo2')
  def  stop_joy_vibration(self,  int device):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &device
    api_core.godot_method_bind_ptrcall(bind_input_stop_joy_vibration,self.godot_owner,args,NULL)
    hello('hallo2')
  def  vibrate_handheld(self,  int duration_ms):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &duration_ms
    api_core.godot_method_bind_ptrcall(bind_input_vibrate_handheld,self.godot_owner,args,NULL)
    hello('hallo2')
  def  warp_mouse_position(self,  Vector2 to):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &to._native
    api_core.godot_method_bind_ptrcall(bind_input_warp_mouse_position,self.godot_owner,args,NULL)
    hello('hallo2')
