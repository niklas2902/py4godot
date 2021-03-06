from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_arvrcontroller_get_controller_id
cdef godot_method_bind *bind_arvrcontroller_get_controller_name
cdef godot_method_bind *bind_arvrcontroller_get_hand
cdef godot_method_bind *bind_arvrcontroller_get_is_active
cdef godot_method_bind *bind_arvrcontroller_get_joystick_axis
cdef godot_method_bind *bind_arvrcontroller_get_joystick_id
cdef godot_method_bind *bind_arvrcontroller_get_mesh
cdef godot_method_bind *bind_arvrcontroller_get_rumble
cdef godot_method_bind *bind_arvrcontroller_is_button_pressed
cdef godot_method_bind *bind_arvrcontroller_set_controller_id
cdef godot_method_bind *bind_arvrcontroller_set_rumble
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_arvrcontroller_get_controller_id = api_core.godot_method_bind_get_method('ARVRController', 'get_controller_id')
  bind_arvrcontroller_get_controller_name = api_core.godot_method_bind_get_method('ARVRController', 'get_controller_name')
  bind_arvrcontroller_get_hand = api_core.godot_method_bind_get_method('ARVRController', 'get_hand')
  bind_arvrcontroller_get_is_active = api_core.godot_method_bind_get_method('ARVRController', 'get_is_active')
  bind_arvrcontroller_get_joystick_axis = api_core.godot_method_bind_get_method('ARVRController', 'get_joystick_axis')
  bind_arvrcontroller_get_joystick_id = api_core.godot_method_bind_get_method('ARVRController', 'get_joystick_id')
  bind_arvrcontroller_get_mesh = api_core.godot_method_bind_get_method('ARVRController', 'get_mesh')
  bind_arvrcontroller_get_rumble = api_core.godot_method_bind_get_method('ARVRController', 'get_rumble')
  bind_arvrcontroller_is_button_pressed = api_core.godot_method_bind_get_method('ARVRController', 'is_button_pressed')
  bind_arvrcontroller_set_controller_id = api_core.godot_method_bind_get_method('ARVRController', 'set_controller_id')
  bind_arvrcontroller_set_rumble = api_core.godot_method_bind_get_method('ARVRController', 'set_rumble')

############################Generated class###################################
cdef class ARVRController(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ARVRController")())
##################################Generated Properties#########################################
  @property
  def controller_id(self): 
    return self.get_controller_id()
  @controller_id.setter 
  def controller_id(self,value): 
    self.set_controller_id(value)
  @property
  def rumble(self): 
    return self.get_rumble()
  @rumble.setter 
  def rumble(self,value): 
    self.set_rumble(value)

##################################Generated Methods#########################################
  def  get_controller_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_controller_id,self.godot_owner,[NULL,],&ret)
  def  get_controller_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_controller_name,self.godot_owner,[NULL,],&ret)
  def  get_hand(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ARVRPositionalTracker::TrackerHand ret
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_hand,self.godot_owner,[NULL,],&ret)
  def  get_is_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_is_active,self.godot_owner,[NULL,],&ret)
  def  get_joystick_axis(self, axis):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_joystick_axis,self.godot_owner,[NULL,],&ret)
  def  get_joystick_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_joystick_id,self.godot_owner,[NULL,],&ret)
  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh ret
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_mesh,self.godot_owner,[NULL,],&ret)
  def  get_rumble(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_rumble,self.godot_owner,[NULL,],&ret)
  def  is_button_pressed(self, button):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_is_button_pressed,self.godot_owner,[NULL,],&ret)
  def  set_controller_id(self, controller_id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_set_controller_id,self.godot_owner,[NULL,],NULL)
  def  set_rumble(self, rumble):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_set_rumble,self.godot_owner,[NULL,],NULL)
