from classes.Container cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_scrollcontainer__ensure_focused_visible
cdef godot_method_bind *bind_scrollcontainer__gui_input
cdef godot_method_bind *bind_scrollcontainer__scroll_moved
cdef godot_method_bind *bind_scrollcontainer__update_scrollbar_position
cdef godot_method_bind *bind_scrollcontainer_get_deadzone
cdef godot_method_bind *bind_scrollcontainer_get_h_scroll
cdef godot_method_bind *bind_scrollcontainer_get_h_scrollbar
cdef godot_method_bind *bind_scrollcontainer_get_v_scroll
cdef godot_method_bind *bind_scrollcontainer_get_v_scrollbar
cdef godot_method_bind *bind_scrollcontainer_is_following_focus
cdef godot_method_bind *bind_scrollcontainer_is_h_scroll_enabled
cdef godot_method_bind *bind_scrollcontainer_is_v_scroll_enabled
cdef godot_method_bind *bind_scrollcontainer_set_deadzone
cdef godot_method_bind *bind_scrollcontainer_set_enable_h_scroll
cdef godot_method_bind *bind_scrollcontainer_set_enable_v_scroll
cdef godot_method_bind *bind_scrollcontainer_set_follow_focus
cdef godot_method_bind *bind_scrollcontainer_set_h_scroll
cdef godot_method_bind *bind_scrollcontainer_set_v_scroll
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_scrollcontainer__ensure_focused_visible = api_core.godot_method_bind_get_method('ScrollContainer', '_ensure_focused_visible')
  bind_scrollcontainer__gui_input = api_core.godot_method_bind_get_method('ScrollContainer', '_gui_input')
  bind_scrollcontainer__scroll_moved = api_core.godot_method_bind_get_method('ScrollContainer', '_scroll_moved')
  bind_scrollcontainer__update_scrollbar_position = api_core.godot_method_bind_get_method('ScrollContainer', '_update_scrollbar_position')
  bind_scrollcontainer_get_deadzone = api_core.godot_method_bind_get_method('ScrollContainer', 'get_deadzone')
  bind_scrollcontainer_get_h_scroll = api_core.godot_method_bind_get_method('ScrollContainer', 'get_h_scroll')
  bind_scrollcontainer_get_h_scrollbar = api_core.godot_method_bind_get_method('ScrollContainer', 'get_h_scrollbar')
  bind_scrollcontainer_get_v_scroll = api_core.godot_method_bind_get_method('ScrollContainer', 'get_v_scroll')
  bind_scrollcontainer_get_v_scrollbar = api_core.godot_method_bind_get_method('ScrollContainer', 'get_v_scrollbar')
  bind_scrollcontainer_is_following_focus = api_core.godot_method_bind_get_method('ScrollContainer', 'is_following_focus')
  bind_scrollcontainer_is_h_scroll_enabled = api_core.godot_method_bind_get_method('ScrollContainer', 'is_h_scroll_enabled')
  bind_scrollcontainer_is_v_scroll_enabled = api_core.godot_method_bind_get_method('ScrollContainer', 'is_v_scroll_enabled')
  bind_scrollcontainer_set_deadzone = api_core.godot_method_bind_get_method('ScrollContainer', 'set_deadzone')
  bind_scrollcontainer_set_enable_h_scroll = api_core.godot_method_bind_get_method('ScrollContainer', 'set_enable_h_scroll')
  bind_scrollcontainer_set_enable_v_scroll = api_core.godot_method_bind_get_method('ScrollContainer', 'set_enable_v_scroll')
  bind_scrollcontainer_set_follow_focus = api_core.godot_method_bind_get_method('ScrollContainer', 'set_follow_focus')
  bind_scrollcontainer_set_h_scroll = api_core.godot_method_bind_get_method('ScrollContainer', 'set_h_scroll')
  bind_scrollcontainer_set_v_scroll = api_core.godot_method_bind_get_method('ScrollContainer', 'set_v_scroll')

############################Generated class###################################
cdef class ScrollContainer(Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ScrollContainer")())
##################################Generated Properties#########################################
  @property
  def follow_focus(self): 
    return self.get_follow_focus()
  @follow_focus.setter 
  def follow_focus(self,value): 
    self.set_follow_focus(value)
  @property
  def scroll_deadzone(self): 
    return self.get_scroll_deadzone()
  @scroll_deadzone.setter 
  def scroll_deadzone(self,value): 
    self.set_scroll_deadzone(value)
  @property
  def scroll_horizontal(self): 
    return self.get_scroll_horizontal()
  @scroll_horizontal.setter 
  def scroll_horizontal(self,value): 
    self.set_scroll_horizontal(value)
  @property
  def scroll_horizontal_enabled(self): 
    return self.get_scroll_horizontal_enabled()
  @scroll_horizontal_enabled.setter 
  def scroll_horizontal_enabled(self,value): 
    self.set_scroll_horizontal_enabled(value)
  @property
  def scroll_vertical(self): 
    return self.get_scroll_vertical()
  @scroll_vertical.setter 
  def scroll_vertical(self,value): 
    self.set_scroll_vertical(value)
  @property
  def scroll_vertical_enabled(self): 
    return self.get_scroll_vertical_enabled()
  @scroll_vertical_enabled.setter 
  def scroll_vertical_enabled(self,value): 
    self.set_scroll_vertical_enabled(value)

##################################Generated Methods#########################################
  def  _ensure_focused_visible(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer__ensure_focused_visible,self.godot_owner,[NULL,],NULL)
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer__gui_input,self.godot_owner,[NULL,],NULL)
  def  _scroll_moved(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer__scroll_moved,self.godot_owner,[NULL,],NULL)
  def  _update_scrollbar_position(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer__update_scrollbar_position,self.godot_owner,[NULL,],NULL)
  def  get_deadzone(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_get_deadzone,self.godot_owner,[NULL,],&ret)
  def  get_h_scroll(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_get_h_scroll,self.godot_owner,[NULL,],&ret)
  def  get_h_scrollbar(self):
    cdef godot_object *_owner = self.godot_owner
    cdef HScrollBar ret
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_get_h_scrollbar,self.godot_owner,[NULL,],&ret)
  def  get_v_scroll(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_get_v_scroll,self.godot_owner,[NULL,],&ret)
  def  get_v_scrollbar(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VScrollBar ret
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_get_v_scrollbar,self.godot_owner,[NULL,],&ret)
  def  is_following_focus(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_is_following_focus,self.godot_owner,[NULL,],&ret)
  def  is_h_scroll_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_is_h_scroll_enabled,self.godot_owner,[NULL,],&ret)
  def  is_v_scroll_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_is_v_scroll_enabled,self.godot_owner,[NULL,],&ret)
  def  set_deadzone(self, deadzone):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_set_deadzone,self.godot_owner,[NULL,],NULL)
  def  set_enable_h_scroll(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_set_enable_h_scroll,self.godot_owner,[NULL,],NULL)
  def  set_enable_v_scroll(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_set_enable_v_scroll,self.godot_owner,[NULL,],NULL)
  def  set_follow_focus(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_set_follow_focus,self.godot_owner,[NULL,],NULL)
  def  set_h_scroll(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_set_h_scroll,self.godot_owner,[NULL,],NULL)
  def  set_v_scroll(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_set_v_scroll,self.godot_owner,[NULL,],NULL)
