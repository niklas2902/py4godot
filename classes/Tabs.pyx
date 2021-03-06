from classes.Control cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_tabs__gui_input
cdef godot_method_bind *bind_tabs__on_mouse_exited
cdef godot_method_bind *bind_tabs__update_hover
cdef godot_method_bind *bind_tabs_add_tab
cdef godot_method_bind *bind_tabs_ensure_tab_visible
cdef godot_method_bind *bind_tabs_get_current_tab
cdef godot_method_bind *bind_tabs_get_drag_to_rearrange_enabled
cdef godot_method_bind *bind_tabs_get_offset_buttons_visible
cdef godot_method_bind *bind_tabs_get_scrolling_enabled
cdef godot_method_bind *bind_tabs_get_select_with_rmb
cdef godot_method_bind *bind_tabs_get_tab_align
cdef godot_method_bind *bind_tabs_get_tab_close_display_policy
cdef godot_method_bind *bind_tabs_get_tab_count
cdef godot_method_bind *bind_tabs_get_tab_disabled
cdef godot_method_bind *bind_tabs_get_tab_icon
cdef godot_method_bind *bind_tabs_get_tab_offset
cdef godot_method_bind *bind_tabs_get_tab_rect
cdef godot_method_bind *bind_tabs_get_tab_title
cdef godot_method_bind *bind_tabs_get_tabs_rearrange_group
cdef godot_method_bind *bind_tabs_move_tab
cdef godot_method_bind *bind_tabs_remove_tab
cdef godot_method_bind *bind_tabs_set_current_tab
cdef godot_method_bind *bind_tabs_set_drag_to_rearrange_enabled
cdef godot_method_bind *bind_tabs_set_scrolling_enabled
cdef godot_method_bind *bind_tabs_set_select_with_rmb
cdef godot_method_bind *bind_tabs_set_tab_align
cdef godot_method_bind *bind_tabs_set_tab_close_display_policy
cdef godot_method_bind *bind_tabs_set_tab_disabled
cdef godot_method_bind *bind_tabs_set_tab_icon
cdef godot_method_bind *bind_tabs_set_tab_title
cdef godot_method_bind *bind_tabs_set_tabs_rearrange_group
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_tabs__gui_input = api_core.godot_method_bind_get_method('Tabs', '_gui_input')
  bind_tabs__on_mouse_exited = api_core.godot_method_bind_get_method('Tabs', '_on_mouse_exited')
  bind_tabs__update_hover = api_core.godot_method_bind_get_method('Tabs', '_update_hover')
  bind_tabs_add_tab = api_core.godot_method_bind_get_method('Tabs', 'add_tab')
  bind_tabs_ensure_tab_visible = api_core.godot_method_bind_get_method('Tabs', 'ensure_tab_visible')
  bind_tabs_get_current_tab = api_core.godot_method_bind_get_method('Tabs', 'get_current_tab')
  bind_tabs_get_drag_to_rearrange_enabled = api_core.godot_method_bind_get_method('Tabs', 'get_drag_to_rearrange_enabled')
  bind_tabs_get_offset_buttons_visible = api_core.godot_method_bind_get_method('Tabs', 'get_offset_buttons_visible')
  bind_tabs_get_scrolling_enabled = api_core.godot_method_bind_get_method('Tabs', 'get_scrolling_enabled')
  bind_tabs_get_select_with_rmb = api_core.godot_method_bind_get_method('Tabs', 'get_select_with_rmb')
  bind_tabs_get_tab_align = api_core.godot_method_bind_get_method('Tabs', 'get_tab_align')
  bind_tabs_get_tab_close_display_policy = api_core.godot_method_bind_get_method('Tabs', 'get_tab_close_display_policy')
  bind_tabs_get_tab_count = api_core.godot_method_bind_get_method('Tabs', 'get_tab_count')
  bind_tabs_get_tab_disabled = api_core.godot_method_bind_get_method('Tabs', 'get_tab_disabled')
  bind_tabs_get_tab_icon = api_core.godot_method_bind_get_method('Tabs', 'get_tab_icon')
  bind_tabs_get_tab_offset = api_core.godot_method_bind_get_method('Tabs', 'get_tab_offset')
  bind_tabs_get_tab_rect = api_core.godot_method_bind_get_method('Tabs', 'get_tab_rect')
  bind_tabs_get_tab_title = api_core.godot_method_bind_get_method('Tabs', 'get_tab_title')
  bind_tabs_get_tabs_rearrange_group = api_core.godot_method_bind_get_method('Tabs', 'get_tabs_rearrange_group')
  bind_tabs_move_tab = api_core.godot_method_bind_get_method('Tabs', 'move_tab')
  bind_tabs_remove_tab = api_core.godot_method_bind_get_method('Tabs', 'remove_tab')
  bind_tabs_set_current_tab = api_core.godot_method_bind_get_method('Tabs', 'set_current_tab')
  bind_tabs_set_drag_to_rearrange_enabled = api_core.godot_method_bind_get_method('Tabs', 'set_drag_to_rearrange_enabled')
  bind_tabs_set_scrolling_enabled = api_core.godot_method_bind_get_method('Tabs', 'set_scrolling_enabled')
  bind_tabs_set_select_with_rmb = api_core.godot_method_bind_get_method('Tabs', 'set_select_with_rmb')
  bind_tabs_set_tab_align = api_core.godot_method_bind_get_method('Tabs', 'set_tab_align')
  bind_tabs_set_tab_close_display_policy = api_core.godot_method_bind_get_method('Tabs', 'set_tab_close_display_policy')
  bind_tabs_set_tab_disabled = api_core.godot_method_bind_get_method('Tabs', 'set_tab_disabled')
  bind_tabs_set_tab_icon = api_core.godot_method_bind_get_method('Tabs', 'set_tab_icon')
  bind_tabs_set_tab_title = api_core.godot_method_bind_get_method('Tabs', 'set_tab_title')
  bind_tabs_set_tabs_rearrange_group = api_core.godot_method_bind_get_method('Tabs', 'set_tabs_rearrange_group')

############################Generated class###################################
cdef class Tabs(Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Tabs")())
##################################Generated Properties#########################################
  @property
  def current_tab(self): 
    return self.get_current_tab()
  @current_tab.setter 
  def current_tab(self,value): 
    self.set_current_tab(value)
  @property
  def drag_to_rearrange_enabled(self): 
    return self.get_drag_to_rearrange_enabled()
  @drag_to_rearrange_enabled.setter 
  def drag_to_rearrange_enabled(self,value): 
    self.set_drag_to_rearrange_enabled(value)
  @property
  def scrolling_enabled(self): 
    return self.get_scrolling_enabled()
  @scrolling_enabled.setter 
  def scrolling_enabled(self,value): 
    self.set_scrolling_enabled(value)
  @property
  def tab_align(self): 
    return self.get_tab_align()
  @tab_align.setter 
  def tab_align(self,value): 
    self.set_tab_align(value)
  @property
  def tab_close_display_policy(self): 
    return self.get_tab_close_display_policy()
  @tab_close_display_policy.setter 
  def tab_close_display_policy(self,value): 
    self.set_tab_close_display_policy(value)

##################################Generated Methods#########################################
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs__gui_input,self.godot_owner,[NULL,],NULL)
  def  _on_mouse_exited(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs__on_mouse_exited,self.godot_owner,[NULL,],NULL)
  def  _update_hover(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs__update_hover,self.godot_owner,[NULL,],NULL)
  def  add_tab(self, titleicon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_add_tab,self.godot_owner,[NULL,],NULL)
  def  ensure_tab_visible(self, idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_ensure_tab_visible,self.godot_owner,[NULL,],NULL)
  def  get_current_tab(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_current_tab,self.godot_owner,[NULL,],&ret)
  def  get_drag_to_rearrange_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_drag_to_rearrange_enabled,self.godot_owner,[NULL,],&ret)
  def  get_offset_buttons_visible(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_offset_buttons_visible,self.godot_owner,[NULL,],&ret)
  def  get_scrolling_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_scrolling_enabled,self.godot_owner,[NULL,],&ret)
  def  get_select_with_rmb(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_select_with_rmb,self.godot_owner,[NULL,],&ret)
  def  get_tab_align(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Tabs::TabAlign ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_align,self.godot_owner,[NULL,],&ret)
  def  get_tab_close_display_policy(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Tabs::CloseButtonDisplayPolicy ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_close_display_policy,self.godot_owner,[NULL,],&ret)
  def  get_tab_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_count,self.godot_owner,[NULL,],&ret)
  def  get_tab_disabled(self, tab_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_disabled,self.godot_owner,[NULL,],&ret)
  def  get_tab_icon(self, tab_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_icon,self.godot_owner,[NULL,],&ret)
  def  get_tab_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_offset,self.godot_owner,[NULL,],&ret)
  def  get_tab_rect(self, tab_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_rect,self.godot_owner,[NULL,],&ret)
  def  get_tab_title(self, tab_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_title,self.godot_owner,[NULL,],&ret)
  def  get_tabs_rearrange_group(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tabs_rearrange_group,self.godot_owner,[NULL,],&ret)
  def  move_tab(self, from_, to):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_move_tab,self.godot_owner,[NULL,],NULL)
  def  remove_tab(self, tab_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_remove_tab,self.godot_owner,[NULL,],NULL)
  def  set_current_tab(self, tab_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_set_current_tab,self.godot_owner,[NULL,],NULL)
  def  set_drag_to_rearrange_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_set_drag_to_rearrange_enabled,self.godot_owner,[NULL,],NULL)
  def  set_scrolling_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_set_scrolling_enabled,self.godot_owner,[NULL,],NULL)
  def  set_select_with_rmb(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_set_select_with_rmb,self.godot_owner,[NULL,],NULL)
  def  set_tab_align(self, align):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_set_tab_align,self.godot_owner,[NULL,],NULL)
  def  set_tab_close_display_policy(self, policy):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_set_tab_close_display_policy,self.godot_owner,[NULL,],NULL)
  def  set_tab_disabled(self, tab_idxdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_set_tab_disabled,self.godot_owner,[NULL,],NULL)
  def  set_tab_icon(self, tab_idxicon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_set_tab_icon,self.godot_owner,[NULL,],NULL)
  def  set_tab_title(self, tab_idxtitle):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_set_tab_title,self.godot_owner,[NULL,],NULL)
  def  set_tabs_rearrange_group(self, group_id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_set_tabs_rearrange_group,self.godot_owner,[NULL,],NULL)
