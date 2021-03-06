from classes.Container cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_tabcontainer__child_renamed_callback
cdef godot_method_bind *bind_tabcontainer__gui_input
cdef godot_method_bind *bind_tabcontainer__on_mouse_exited
cdef godot_method_bind *bind_tabcontainer__on_theme_changed
cdef godot_method_bind *bind_tabcontainer__update_current_tab
cdef godot_method_bind *bind_tabcontainer_are_tabs_visible
cdef godot_method_bind *bind_tabcontainer_get_current_tab
cdef godot_method_bind *bind_tabcontainer_get_current_tab_control
cdef godot_method_bind *bind_tabcontainer_get_drag_to_rearrange_enabled
cdef godot_method_bind *bind_tabcontainer_get_popup
cdef godot_method_bind *bind_tabcontainer_get_previous_tab
cdef godot_method_bind *bind_tabcontainer_get_tab_align
cdef godot_method_bind *bind_tabcontainer_get_tab_control
cdef godot_method_bind *bind_tabcontainer_get_tab_count
cdef godot_method_bind *bind_tabcontainer_get_tab_disabled
cdef godot_method_bind *bind_tabcontainer_get_tab_icon
cdef godot_method_bind *bind_tabcontainer_get_tab_title
cdef godot_method_bind *bind_tabcontainer_get_tabs_rearrange_group
cdef godot_method_bind *bind_tabcontainer_get_use_hidden_tabs_for_min_size
cdef godot_method_bind *bind_tabcontainer_set_current_tab
cdef godot_method_bind *bind_tabcontainer_set_drag_to_rearrange_enabled
cdef godot_method_bind *bind_tabcontainer_set_popup
cdef godot_method_bind *bind_tabcontainer_set_tab_align
cdef godot_method_bind *bind_tabcontainer_set_tab_disabled
cdef godot_method_bind *bind_tabcontainer_set_tab_icon
cdef godot_method_bind *bind_tabcontainer_set_tab_title
cdef godot_method_bind *bind_tabcontainer_set_tabs_rearrange_group
cdef godot_method_bind *bind_tabcontainer_set_tabs_visible
cdef godot_method_bind *bind_tabcontainer_set_use_hidden_tabs_for_min_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_tabcontainer__child_renamed_callback = api_core.godot_method_bind_get_method('TabContainer', '_child_renamed_callback')
  bind_tabcontainer__gui_input = api_core.godot_method_bind_get_method('TabContainer', '_gui_input')
  bind_tabcontainer__on_mouse_exited = api_core.godot_method_bind_get_method('TabContainer', '_on_mouse_exited')
  bind_tabcontainer__on_theme_changed = api_core.godot_method_bind_get_method('TabContainer', '_on_theme_changed')
  bind_tabcontainer__update_current_tab = api_core.godot_method_bind_get_method('TabContainer', '_update_current_tab')
  bind_tabcontainer_are_tabs_visible = api_core.godot_method_bind_get_method('TabContainer', 'are_tabs_visible')
  bind_tabcontainer_get_current_tab = api_core.godot_method_bind_get_method('TabContainer', 'get_current_tab')
  bind_tabcontainer_get_current_tab_control = api_core.godot_method_bind_get_method('TabContainer', 'get_current_tab_control')
  bind_tabcontainer_get_drag_to_rearrange_enabled = api_core.godot_method_bind_get_method('TabContainer', 'get_drag_to_rearrange_enabled')
  bind_tabcontainer_get_popup = api_core.godot_method_bind_get_method('TabContainer', 'get_popup')
  bind_tabcontainer_get_previous_tab = api_core.godot_method_bind_get_method('TabContainer', 'get_previous_tab')
  bind_tabcontainer_get_tab_align = api_core.godot_method_bind_get_method('TabContainer', 'get_tab_align')
  bind_tabcontainer_get_tab_control = api_core.godot_method_bind_get_method('TabContainer', 'get_tab_control')
  bind_tabcontainer_get_tab_count = api_core.godot_method_bind_get_method('TabContainer', 'get_tab_count')
  bind_tabcontainer_get_tab_disabled = api_core.godot_method_bind_get_method('TabContainer', 'get_tab_disabled')
  bind_tabcontainer_get_tab_icon = api_core.godot_method_bind_get_method('TabContainer', 'get_tab_icon')
  bind_tabcontainer_get_tab_title = api_core.godot_method_bind_get_method('TabContainer', 'get_tab_title')
  bind_tabcontainer_get_tabs_rearrange_group = api_core.godot_method_bind_get_method('TabContainer', 'get_tabs_rearrange_group')
  bind_tabcontainer_get_use_hidden_tabs_for_min_size = api_core.godot_method_bind_get_method('TabContainer', 'get_use_hidden_tabs_for_min_size')
  bind_tabcontainer_set_current_tab = api_core.godot_method_bind_get_method('TabContainer', 'set_current_tab')
  bind_tabcontainer_set_drag_to_rearrange_enabled = api_core.godot_method_bind_get_method('TabContainer', 'set_drag_to_rearrange_enabled')
  bind_tabcontainer_set_popup = api_core.godot_method_bind_get_method('TabContainer', 'set_popup')
  bind_tabcontainer_set_tab_align = api_core.godot_method_bind_get_method('TabContainer', 'set_tab_align')
  bind_tabcontainer_set_tab_disabled = api_core.godot_method_bind_get_method('TabContainer', 'set_tab_disabled')
  bind_tabcontainer_set_tab_icon = api_core.godot_method_bind_get_method('TabContainer', 'set_tab_icon')
  bind_tabcontainer_set_tab_title = api_core.godot_method_bind_get_method('TabContainer', 'set_tab_title')
  bind_tabcontainer_set_tabs_rearrange_group = api_core.godot_method_bind_get_method('TabContainer', 'set_tabs_rearrange_group')
  bind_tabcontainer_set_tabs_visible = api_core.godot_method_bind_get_method('TabContainer', 'set_tabs_visible')
  bind_tabcontainer_set_use_hidden_tabs_for_min_size = api_core.godot_method_bind_get_method('TabContainer', 'set_use_hidden_tabs_for_min_size')

############################Generated class###################################
cdef class TabContainer(Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TabContainer")())
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
  def tab_align(self): 
    return self.get_tab_align()
  @tab_align.setter 
  def tab_align(self,value): 
    self.set_tab_align(value)
  @property
  def tabs_visible(self): 
    return self.get_tabs_visible()
  @tabs_visible.setter 
  def tabs_visible(self,value): 
    self.set_tabs_visible(value)
  @property
  def use_hidden_tabs_for_min_size(self): 
    return self.get_use_hidden_tabs_for_min_size()
  @use_hidden_tabs_for_min_size.setter 
  def use_hidden_tabs_for_min_size(self,value): 
    self.set_use_hidden_tabs_for_min_size(value)

##################################Generated Methods#########################################
  def  _child_renamed_callback(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer__child_renamed_callback,self.godot_owner,[NULL,],NULL)
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer__gui_input,self.godot_owner,[NULL,],NULL)
  def  _on_mouse_exited(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer__on_mouse_exited,self.godot_owner,[NULL,],NULL)
  def  _on_theme_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer__on_theme_changed,self.godot_owner,[NULL,],NULL)
  def  _update_current_tab(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer__update_current_tab,self.godot_owner,[NULL,],NULL)
  def  are_tabs_visible(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_are_tabs_visible,self.godot_owner,[NULL,],&ret)
  def  get_current_tab(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_current_tab,self.godot_owner,[NULL,],&ret)
  def  get_current_tab_control(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Control ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_current_tab_control,self.godot_owner,[NULL,],&ret)
  def  get_drag_to_rearrange_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_drag_to_rearrange_enabled,self.godot_owner,[NULL,],&ret)
  def  get_popup(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Popup ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_popup,self.godot_owner,[NULL,],&ret)
  def  get_previous_tab(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_previous_tab,self.godot_owner,[NULL,],&ret)
  def  get_tab_align(self):
    cdef godot_object *_owner = self.godot_owner
    cdef TabContainer::TabAlign ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_tab_align,self.godot_owner,[NULL,],&ret)
  def  get_tab_control(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Control ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_tab_control,self.godot_owner,[NULL,],&ret)
  def  get_tab_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_tab_count,self.godot_owner,[NULL,],&ret)
  def  get_tab_disabled(self, tab_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_tab_disabled,self.godot_owner,[NULL,],&ret)
  def  get_tab_icon(self, tab_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_tab_icon,self.godot_owner,[NULL,],&ret)
  def  get_tab_title(self, tab_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_tab_title,self.godot_owner,[NULL,],&ret)
  def  get_tabs_rearrange_group(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_tabs_rearrange_group,self.godot_owner,[NULL,],&ret)
  def  get_use_hidden_tabs_for_min_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_get_use_hidden_tabs_for_min_size,self.godot_owner,[NULL,],&ret)
  def  set_current_tab(self, tab_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_set_current_tab,self.godot_owner,[NULL,],NULL)
  def  set_drag_to_rearrange_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_set_drag_to_rearrange_enabled,self.godot_owner,[NULL,],NULL)
  def  set_popup(self, popup):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_set_popup,self.godot_owner,[NULL,],NULL)
  def  set_tab_align(self, align):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_set_tab_align,self.godot_owner,[NULL,],NULL)
  def  set_tab_disabled(self, tab_idxdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_set_tab_disabled,self.godot_owner,[NULL,],NULL)
  def  set_tab_icon(self, tab_idxicon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_set_tab_icon,self.godot_owner,[NULL,],NULL)
  def  set_tab_title(self, tab_idxtitle):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_set_tab_title,self.godot_owner,[NULL,],NULL)
  def  set_tabs_rearrange_group(self, group_id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_set_tabs_rearrange_group,self.godot_owner,[NULL,],NULL)
  def  set_tabs_visible(self, visible):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_set_tabs_visible,self.godot_owner,[NULL,],NULL)
  def  set_use_hidden_tabs_for_min_size(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabcontainer_set_use_hidden_tabs_for_min_size,self.godot_owner,[NULL,],NULL)
