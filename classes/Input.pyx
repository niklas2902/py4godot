from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class Input(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Input")())
##################################Generated Methods#########################################
  def  action_press(self, actionstrength):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_action_press,self.godot_owner,[NULL,],NULL)
  def  action_release(self, action):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_action_release,self.godot_owner,[NULL,],NULL)
  def  add_joy_mapping(self, mappingupdate_existing):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_add_joy_mapping,self.godot_owner,[NULL,],NULL)
  def  get_accelerometer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_input_get_accelerometer,self.godot_owner,[NULL,],&ret)
  def  get_action_strength(self, action):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_input_get_action_strength,self.godot_owner,[NULL,],&ret)
  def  get_connected_joypads(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_input_get_connected_joypads,self.godot_owner,[NULL,],&ret)
  def  get_current_cursor_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Input::CursorShape ret
    api_core.godot_method_bind_ptrcall(bind_input_get_current_cursor_shape,self.godot_owner,[NULL,],&ret)
  def  get_gravity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_input_get_gravity,self.godot_owner,[NULL,],&ret)
  def  get_gyroscope(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_input_get_gyroscope,self.godot_owner,[NULL,],&ret)
  def  get_joy_axis(self, deviceaxis):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_axis,self.godot_owner,[NULL,],&ret)
  def  get_joy_axis_index_from_string(self, axis):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_axis_index_from_string,self.godot_owner,[NULL,],&ret)
  def  get_joy_axis_string(self, axis_index):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_axis_string,self.godot_owner,[NULL,],&ret)
  def  get_joy_button_index_from_string(self, button):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_button_index_from_string,self.godot_owner,[NULL,],&ret)
  def  get_joy_button_string(self, button_index):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_button_string,self.godot_owner,[NULL,],&ret)
  def  get_joy_guid(self, device):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_guid,self.godot_owner,[NULL,],&ret)
  def  get_joy_name(self, device):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_name,self.godot_owner,[NULL,],&ret)
  def  get_joy_vibration_duration(self, device):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_vibration_duration,self.godot_owner,[NULL,],&ret)
  def  get_joy_vibration_strength(self, device):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_input_get_joy_vibration_strength,self.godot_owner,[NULL,],&ret)
  def  get_last_mouse_speed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_input_get_last_mouse_speed,self.godot_owner,[NULL,],&ret)
  def  get_magnetometer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_input_get_magnetometer,self.godot_owner,[NULL,],&ret)
  def  get_mouse_button_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_input_get_mouse_button_mask,self.godot_owner,[NULL,],&ret)
  def  get_mouse_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Input::MouseMode ret
    api_core.godot_method_bind_ptrcall(bind_input_get_mouse_mode,self.godot_owner,[NULL,],&ret)
  def  is_action_just_pressed(self, action):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_input_is_action_just_pressed,self.godot_owner,[NULL,],&ret)
  def  is_action_just_released(self, action):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_input_is_action_just_released,self.godot_owner,[NULL,],&ret)
  def  is_action_pressed(self, action):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_input_is_action_pressed,self.godot_owner,[NULL,],&ret)
  def  is_joy_button_pressed(self, devicebutton):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_input_is_joy_button_pressed,self.godot_owner,[NULL,],&ret)
  def  is_joy_known(self, device):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_input_is_joy_known,self.godot_owner,[NULL,],&ret)
  def  is_key_pressed(self, scancode):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_input_is_key_pressed,self.godot_owner,[NULL,],&ret)
  def  is_mouse_button_pressed(self, button):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_input_is_mouse_button_pressed,self.godot_owner,[NULL,],&ret)
  def  joy_connection_changed(self, deviceconnectednameguid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_joy_connection_changed,self.godot_owner,[NULL,],NULL)
  def  parse_input_event(self, event):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_parse_input_event,self.godot_owner,[NULL,],NULL)
  def  remove_joy_mapping(self, guid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_remove_joy_mapping,self.godot_owner,[NULL,],NULL)
  def  set_custom_mouse_cursor(self, imageshapehotspot):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_set_custom_mouse_cursor,self.godot_owner,[NULL,],NULL)
  def  set_default_cursor_shape(self, shape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_set_default_cursor_shape,self.godot_owner,[NULL,],NULL)
  def  set_mouse_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_set_mouse_mode,self.godot_owner,[NULL,],NULL)
  def  set_use_accumulated_input(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_set_use_accumulated_input,self.godot_owner,[NULL,],NULL)
  def  start_joy_vibration(self, deviceweak_magnitudestrong_magnitudeduration):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_start_joy_vibration,self.godot_owner,[NULL,],NULL)
  def  stop_joy_vibration(self, device):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_stop_joy_vibration,self.godot_owner,[NULL,],NULL)
  def  vibrate_handheld(self, duration_ms):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_vibrate_handheld,self.godot_owner,[NULL,],NULL)
  def  warp_mouse_position(self, to):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_input_warp_mouse_position,self.godot_owner,[NULL,],NULL)
