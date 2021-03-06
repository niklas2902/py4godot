from classes.Control cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_basebutton__gui_input
cdef godot_method_bind *bind_basebutton__pressed
cdef godot_method_bind *bind_basebutton__toggled
cdef godot_method_bind *bind_basebutton__unhandled_input
cdef godot_method_bind *bind_basebutton_get_action_mode
cdef godot_method_bind *bind_basebutton_get_button_group
cdef godot_method_bind *bind_basebutton_get_button_mask
cdef godot_method_bind *bind_basebutton_get_draw_mode
cdef godot_method_bind *bind_basebutton_get_enabled_focus_mode
cdef godot_method_bind *bind_basebutton_get_shortcut
cdef godot_method_bind *bind_basebutton_is_disabled
cdef godot_method_bind *bind_basebutton_is_hovered
cdef godot_method_bind *bind_basebutton_is_keep_pressed_outside
cdef godot_method_bind *bind_basebutton_is_pressed
cdef godot_method_bind *bind_basebutton_is_shortcut_in_tooltip_enabled
cdef godot_method_bind *bind_basebutton_is_toggle_mode
cdef godot_method_bind *bind_basebutton_set_action_mode
cdef godot_method_bind *bind_basebutton_set_button_group
cdef godot_method_bind *bind_basebutton_set_button_mask
cdef godot_method_bind *bind_basebutton_set_disabled
cdef godot_method_bind *bind_basebutton_set_enabled_focus_mode
cdef godot_method_bind *bind_basebutton_set_keep_pressed_outside
cdef godot_method_bind *bind_basebutton_set_pressed
cdef godot_method_bind *bind_basebutton_set_shortcut
cdef godot_method_bind *bind_basebutton_set_shortcut_in_tooltip
cdef godot_method_bind *bind_basebutton_set_toggle_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_basebutton__gui_input = api_core.godot_method_bind_get_method('BaseButton', '_gui_input')
  bind_basebutton__pressed = api_core.godot_method_bind_get_method('BaseButton', '_pressed')
  bind_basebutton__toggled = api_core.godot_method_bind_get_method('BaseButton', '_toggled')
  bind_basebutton__unhandled_input = api_core.godot_method_bind_get_method('BaseButton', '_unhandled_input')
  bind_basebutton_get_action_mode = api_core.godot_method_bind_get_method('BaseButton', 'get_action_mode')
  bind_basebutton_get_button_group = api_core.godot_method_bind_get_method('BaseButton', 'get_button_group')
  bind_basebutton_get_button_mask = api_core.godot_method_bind_get_method('BaseButton', 'get_button_mask')
  bind_basebutton_get_draw_mode = api_core.godot_method_bind_get_method('BaseButton', 'get_draw_mode')
  bind_basebutton_get_enabled_focus_mode = api_core.godot_method_bind_get_method('BaseButton', 'get_enabled_focus_mode')
  bind_basebutton_get_shortcut = api_core.godot_method_bind_get_method('BaseButton', 'get_shortcut')
  bind_basebutton_is_disabled = api_core.godot_method_bind_get_method('BaseButton', 'is_disabled')
  bind_basebutton_is_hovered = api_core.godot_method_bind_get_method('BaseButton', 'is_hovered')
  bind_basebutton_is_keep_pressed_outside = api_core.godot_method_bind_get_method('BaseButton', 'is_keep_pressed_outside')
  bind_basebutton_is_pressed = api_core.godot_method_bind_get_method('BaseButton', 'is_pressed')
  bind_basebutton_is_shortcut_in_tooltip_enabled = api_core.godot_method_bind_get_method('BaseButton', 'is_shortcut_in_tooltip_enabled')
  bind_basebutton_is_toggle_mode = api_core.godot_method_bind_get_method('BaseButton', 'is_toggle_mode')
  bind_basebutton_set_action_mode = api_core.godot_method_bind_get_method('BaseButton', 'set_action_mode')
  bind_basebutton_set_button_group = api_core.godot_method_bind_get_method('BaseButton', 'set_button_group')
  bind_basebutton_set_button_mask = api_core.godot_method_bind_get_method('BaseButton', 'set_button_mask')
  bind_basebutton_set_disabled = api_core.godot_method_bind_get_method('BaseButton', 'set_disabled')
  bind_basebutton_set_enabled_focus_mode = api_core.godot_method_bind_get_method('BaseButton', 'set_enabled_focus_mode')
  bind_basebutton_set_keep_pressed_outside = api_core.godot_method_bind_get_method('BaseButton', 'set_keep_pressed_outside')
  bind_basebutton_set_pressed = api_core.godot_method_bind_get_method('BaseButton', 'set_pressed')
  bind_basebutton_set_shortcut = api_core.godot_method_bind_get_method('BaseButton', 'set_shortcut')
  bind_basebutton_set_shortcut_in_tooltip = api_core.godot_method_bind_get_method('BaseButton', 'set_shortcut_in_tooltip')
  bind_basebutton_set_toggle_mode = api_core.godot_method_bind_get_method('BaseButton', 'set_toggle_mode')

############################Generated class###################################
cdef class BaseButton(Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("BaseButton")())
##################################Generated Properties#########################################
  @property
  def action_mode(self): 
    return self.get_action_mode()
  @action_mode.setter 
  def action_mode(self,value): 
    self.set_action_mode(value)
  @property
  def button_mask(self): 
    return self.get_button_mask()
  @button_mask.setter 
  def button_mask(self,value): 
    self.set_button_mask(value)
  @property
  def disabled(self): 
    return self.get_disabled()
  @disabled.setter 
  def disabled(self,value): 
    self.set_disabled(value)
  @property
  def enabled_focus_mode(self): 
    return self.get_enabled_focus_mode()
  @enabled_focus_mode.setter 
  def enabled_focus_mode(self,value): 
    self.set_enabled_focus_mode(value)
  @property
  def group(self): 
    return self.get_group()
  @group.setter 
  def group(self,value): 
    self.set_group(value)
  @property
  def keep_pressed_outside(self): 
    return self.get_keep_pressed_outside()
  @keep_pressed_outside.setter 
  def keep_pressed_outside(self,value): 
    self.set_keep_pressed_outside(value)
  @property
  def pressed(self): 
    return self.get_pressed()
  @pressed.setter 
  def pressed(self,value): 
    self.set_pressed(value)
  @property
  def shortcut(self): 
    return self.get_shortcut()
  @shortcut.setter 
  def shortcut(self,value): 
    self.set_shortcut(value)
  @property
  def shortcut_in_tooltip(self): 
    return self.get_shortcut_in_tooltip()
  @shortcut_in_tooltip.setter 
  def shortcut_in_tooltip(self,value): 
    self.set_shortcut_in_tooltip(value)
  @property
  def toggle_mode(self): 
    return self.get_toggle_mode()
  @toggle_mode.setter 
  def toggle_mode(self,value): 
    self.set_toggle_mode(value)

##################################Generated Methods#########################################
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton__gui_input,self.godot_owner,[NULL,],NULL)
  def  _pressed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton__pressed,self.godot_owner,[NULL,],NULL)
  def  _toggled(self, button_pressed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton__toggled,self.godot_owner,[NULL,],NULL)
  def  _unhandled_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton__unhandled_input,self.godot_owner,[NULL,],NULL)
  def  get_action_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef BaseButton::ActionMode ret
    api_core.godot_method_bind_ptrcall(bind_basebutton_get_action_mode,self.godot_owner,[NULL,],&ret)
  def  get_button_group(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ButtonGroup ret
    api_core.godot_method_bind_ptrcall(bind_basebutton_get_button_group,self.godot_owner,[NULL,],&ret)
  def  get_button_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_basebutton_get_button_mask,self.godot_owner,[NULL,],&ret)
  def  get_draw_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef BaseButton::DrawMode ret
    api_core.godot_method_bind_ptrcall(bind_basebutton_get_draw_mode,self.godot_owner,[NULL,],&ret)
  def  get_enabled_focus_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Control::FocusMode ret
    api_core.godot_method_bind_ptrcall(bind_basebutton_get_enabled_focus_mode,self.godot_owner,[NULL,],&ret)
  def  get_shortcut(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ShortCut ret
    api_core.godot_method_bind_ptrcall(bind_basebutton_get_shortcut,self.godot_owner,[NULL,],&ret)
  def  is_disabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_basebutton_is_disabled,self.godot_owner,[NULL,],&ret)
  def  is_hovered(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_basebutton_is_hovered,self.godot_owner,[NULL,],&ret)
  def  is_keep_pressed_outside(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_basebutton_is_keep_pressed_outside,self.godot_owner,[NULL,],&ret)
  def  is_pressed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_basebutton_is_pressed,self.godot_owner,[NULL,],&ret)
  def  is_shortcut_in_tooltip_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_basebutton_is_shortcut_in_tooltip_enabled,self.godot_owner,[NULL,],&ret)
  def  is_toggle_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_basebutton_is_toggle_mode,self.godot_owner,[NULL,],&ret)
  def  set_action_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton_set_action_mode,self.godot_owner,[NULL,],NULL)
  def  set_button_group(self, button_group):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton_set_button_group,self.godot_owner,[NULL,],NULL)
  def  set_button_mask(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton_set_button_mask,self.godot_owner,[NULL,],NULL)
  def  set_disabled(self, disabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton_set_disabled,self.godot_owner,[NULL,],NULL)
  def  set_enabled_focus_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton_set_enabled_focus_mode,self.godot_owner,[NULL,],NULL)
  def  set_keep_pressed_outside(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton_set_keep_pressed_outside,self.godot_owner,[NULL,],NULL)
  def  set_pressed(self, pressed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton_set_pressed,self.godot_owner,[NULL,],NULL)
  def  set_shortcut(self, shortcut):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton_set_shortcut,self.godot_owner,[NULL,],NULL)
  def  set_shortcut_in_tooltip(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton_set_shortcut_in_tooltip,self.godot_owner,[NULL,],NULL)
  def  set_toggle_mode(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_basebutton_set_toggle_mode,self.godot_owner,[NULL,],NULL)
