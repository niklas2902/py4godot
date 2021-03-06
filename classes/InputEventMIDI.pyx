from classes.InputEvent cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventmidi_get_channel
cdef godot_method_bind *bind_inputeventmidi_get_controller_number
cdef godot_method_bind *bind_inputeventmidi_get_controller_value
cdef godot_method_bind *bind_inputeventmidi_get_instrument
cdef godot_method_bind *bind_inputeventmidi_get_message
cdef godot_method_bind *bind_inputeventmidi_get_pitch
cdef godot_method_bind *bind_inputeventmidi_get_pressure
cdef godot_method_bind *bind_inputeventmidi_get_velocity
cdef godot_method_bind *bind_inputeventmidi_set_channel
cdef godot_method_bind *bind_inputeventmidi_set_controller_number
cdef godot_method_bind *bind_inputeventmidi_set_controller_value
cdef godot_method_bind *bind_inputeventmidi_set_instrument
cdef godot_method_bind *bind_inputeventmidi_set_message
cdef godot_method_bind *bind_inputeventmidi_set_pitch
cdef godot_method_bind *bind_inputeventmidi_set_pressure
cdef godot_method_bind *bind_inputeventmidi_set_velocity
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventmidi_get_channel = api_core.godot_method_bind_get_method('InputEventMIDI', 'get_channel')
  bind_inputeventmidi_get_controller_number = api_core.godot_method_bind_get_method('InputEventMIDI', 'get_controller_number')
  bind_inputeventmidi_get_controller_value = api_core.godot_method_bind_get_method('InputEventMIDI', 'get_controller_value')
  bind_inputeventmidi_get_instrument = api_core.godot_method_bind_get_method('InputEventMIDI', 'get_instrument')
  bind_inputeventmidi_get_message = api_core.godot_method_bind_get_method('InputEventMIDI', 'get_message')
  bind_inputeventmidi_get_pitch = api_core.godot_method_bind_get_method('InputEventMIDI', 'get_pitch')
  bind_inputeventmidi_get_pressure = api_core.godot_method_bind_get_method('InputEventMIDI', 'get_pressure')
  bind_inputeventmidi_get_velocity = api_core.godot_method_bind_get_method('InputEventMIDI', 'get_velocity')
  bind_inputeventmidi_set_channel = api_core.godot_method_bind_get_method('InputEventMIDI', 'set_channel')
  bind_inputeventmidi_set_controller_number = api_core.godot_method_bind_get_method('InputEventMIDI', 'set_controller_number')
  bind_inputeventmidi_set_controller_value = api_core.godot_method_bind_get_method('InputEventMIDI', 'set_controller_value')
  bind_inputeventmidi_set_instrument = api_core.godot_method_bind_get_method('InputEventMIDI', 'set_instrument')
  bind_inputeventmidi_set_message = api_core.godot_method_bind_get_method('InputEventMIDI', 'set_message')
  bind_inputeventmidi_set_pitch = api_core.godot_method_bind_get_method('InputEventMIDI', 'set_pitch')
  bind_inputeventmidi_set_pressure = api_core.godot_method_bind_get_method('InputEventMIDI', 'set_pressure')
  bind_inputeventmidi_set_velocity = api_core.godot_method_bind_get_method('InputEventMIDI', 'set_velocity')

############################Generated class###################################
cdef class InputEventMIDI(InputEvent):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventMIDI")())
##################################Generated Properties#########################################
  @property
  def channel(self): 
    return self.get_channel()
  @channel.setter 
  def channel(self,value): 
    self.set_channel(value)
  @property
  def controller_number(self): 
    return self.get_controller_number()
  @controller_number.setter 
  def controller_number(self,value): 
    self.set_controller_number(value)
  @property
  def controller_value(self): 
    return self.get_controller_value()
  @controller_value.setter 
  def controller_value(self,value): 
    self.set_controller_value(value)
  @property
  def instrument(self): 
    return self.get_instrument()
  @instrument.setter 
  def instrument(self,value): 
    self.set_instrument(value)
  @property
  def message(self): 
    return self.get_message()
  @message.setter 
  def message(self,value): 
    self.set_message(value)
  @property
  def pitch(self): 
    return self.get_pitch()
  @pitch.setter 
  def pitch(self,value): 
    self.set_pitch(value)
  @property
  def pressure(self): 
    return self.get_pressure()
  @pressure.setter 
  def pressure(self,value): 
    self.set_pressure(value)
  @property
  def velocity(self): 
    return self.get_velocity()
  @velocity.setter 
  def velocity(self,value): 
    self.set_velocity(value)

##################################Generated Methods#########################################
  def  get_channel(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_get_channel,self.godot_owner,[NULL,],&ret)
  def  get_controller_number(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_get_controller_number,self.godot_owner,[NULL,],&ret)
  def  get_controller_value(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_get_controller_value,self.godot_owner,[NULL,],&ret)
  def  get_instrument(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_get_instrument,self.godot_owner,[NULL,],&ret)
  def  get_message(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_get_message,self.godot_owner,[NULL,],&ret)
  def  get_pitch(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_get_pitch,self.godot_owner,[NULL,],&ret)
  def  get_pressure(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_get_pressure,self.godot_owner,[NULL,],&ret)
  def  get_velocity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_get_velocity,self.godot_owner,[NULL,],&ret)
  def  set_channel(self, channel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_set_channel,self.godot_owner,[NULL,],NULL)
  def  set_controller_number(self, controller_number):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_set_controller_number,self.godot_owner,[NULL,],NULL)
  def  set_controller_value(self, controller_value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_set_controller_value,self.godot_owner,[NULL,],NULL)
  def  set_instrument(self, instrument):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_set_instrument,self.godot_owner,[NULL,],NULL)
  def  set_message(self, message):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_set_message,self.godot_owner,[NULL,],NULL)
  def  set_pitch(self, pitch):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_set_pitch,self.godot_owner,[NULL,],NULL)
  def  set_pressure(self, pressure):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_set_pressure,self.godot_owner,[NULL,],NULL)
  def  set_velocity(self, velocity):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmidi_set_velocity,self.godot_owner,[NULL,],NULL)
