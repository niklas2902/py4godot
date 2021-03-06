from classes.Popup cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_popupmenu__get_items
cdef godot_method_bind *bind_popupmenu__gui_input
cdef godot_method_bind *bind_popupmenu__set_items
cdef godot_method_bind *bind_popupmenu__submenu_timeout
cdef godot_method_bind *bind_popupmenu_add_check_item
cdef godot_method_bind *bind_popupmenu_add_check_shortcut
cdef godot_method_bind *bind_popupmenu_add_icon_check_item
cdef godot_method_bind *bind_popupmenu_add_icon_check_shortcut
cdef godot_method_bind *bind_popupmenu_add_icon_item
cdef godot_method_bind *bind_popupmenu_add_icon_radio_check_item
cdef godot_method_bind *bind_popupmenu_add_icon_radio_check_shortcut
cdef godot_method_bind *bind_popupmenu_add_icon_shortcut
cdef godot_method_bind *bind_popupmenu_add_item
cdef godot_method_bind *bind_popupmenu_add_multistate_item
cdef godot_method_bind *bind_popupmenu_add_radio_check_item
cdef godot_method_bind *bind_popupmenu_add_radio_check_shortcut
cdef godot_method_bind *bind_popupmenu_add_separator
cdef godot_method_bind *bind_popupmenu_add_shortcut
cdef godot_method_bind *bind_popupmenu_add_submenu_item
cdef godot_method_bind *bind_popupmenu_clear
cdef godot_method_bind *bind_popupmenu_get_allow_search
cdef godot_method_bind *bind_popupmenu_get_item_accelerator
cdef godot_method_bind *bind_popupmenu_get_item_count
cdef godot_method_bind *bind_popupmenu_get_item_icon
cdef godot_method_bind *bind_popupmenu_get_item_id
cdef godot_method_bind *bind_popupmenu_get_item_index
cdef godot_method_bind *bind_popupmenu_get_item_metadata
cdef godot_method_bind *bind_popupmenu_get_item_shortcut
cdef godot_method_bind *bind_popupmenu_get_item_submenu
cdef godot_method_bind *bind_popupmenu_get_item_text
cdef godot_method_bind *bind_popupmenu_get_item_tooltip
cdef godot_method_bind *bind_popupmenu_get_submenu_popup_delay
cdef godot_method_bind *bind_popupmenu_is_hide_on_checkable_item_selection
cdef godot_method_bind *bind_popupmenu_is_hide_on_item_selection
cdef godot_method_bind *bind_popupmenu_is_hide_on_state_item_selection
cdef godot_method_bind *bind_popupmenu_is_hide_on_window_lose_focus
cdef godot_method_bind *bind_popupmenu_is_item_checkable
cdef godot_method_bind *bind_popupmenu_is_item_checked
cdef godot_method_bind *bind_popupmenu_is_item_disabled
cdef godot_method_bind *bind_popupmenu_is_item_radio_checkable
cdef godot_method_bind *bind_popupmenu_is_item_separator
cdef godot_method_bind *bind_popupmenu_is_item_shortcut_disabled
cdef godot_method_bind *bind_popupmenu_remove_item
cdef godot_method_bind *bind_popupmenu_set_allow_search
cdef godot_method_bind *bind_popupmenu_set_hide_on_checkable_item_selection
cdef godot_method_bind *bind_popupmenu_set_hide_on_item_selection
cdef godot_method_bind *bind_popupmenu_set_hide_on_state_item_selection
cdef godot_method_bind *bind_popupmenu_set_hide_on_window_lose_focus
cdef godot_method_bind *bind_popupmenu_set_item_accelerator
cdef godot_method_bind *bind_popupmenu_set_item_as_checkable
cdef godot_method_bind *bind_popupmenu_set_item_as_radio_checkable
cdef godot_method_bind *bind_popupmenu_set_item_as_separator
cdef godot_method_bind *bind_popupmenu_set_item_checked
cdef godot_method_bind *bind_popupmenu_set_item_disabled
cdef godot_method_bind *bind_popupmenu_set_item_icon
cdef godot_method_bind *bind_popupmenu_set_item_id
cdef godot_method_bind *bind_popupmenu_set_item_metadata
cdef godot_method_bind *bind_popupmenu_set_item_multistate
cdef godot_method_bind *bind_popupmenu_set_item_shortcut
cdef godot_method_bind *bind_popupmenu_set_item_shortcut_disabled
cdef godot_method_bind *bind_popupmenu_set_item_submenu
cdef godot_method_bind *bind_popupmenu_set_item_text
cdef godot_method_bind *bind_popupmenu_set_item_tooltip
cdef godot_method_bind *bind_popupmenu_set_submenu_popup_delay
cdef godot_method_bind *bind_popupmenu_toggle_item_checked
cdef godot_method_bind *bind_popupmenu_toggle_item_multistate
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_popupmenu__get_items = api_core.godot_method_bind_get_method('PopupMenu', '_get_items')
  bind_popupmenu__gui_input = api_core.godot_method_bind_get_method('PopupMenu', '_gui_input')
  bind_popupmenu__set_items = api_core.godot_method_bind_get_method('PopupMenu', '_set_items')
  bind_popupmenu__submenu_timeout = api_core.godot_method_bind_get_method('PopupMenu', '_submenu_timeout')
  bind_popupmenu_add_check_item = api_core.godot_method_bind_get_method('PopupMenu', 'add_check_item')
  bind_popupmenu_add_check_shortcut = api_core.godot_method_bind_get_method('PopupMenu', 'add_check_shortcut')
  bind_popupmenu_add_icon_check_item = api_core.godot_method_bind_get_method('PopupMenu', 'add_icon_check_item')
  bind_popupmenu_add_icon_check_shortcut = api_core.godot_method_bind_get_method('PopupMenu', 'add_icon_check_shortcut')
  bind_popupmenu_add_icon_item = api_core.godot_method_bind_get_method('PopupMenu', 'add_icon_item')
  bind_popupmenu_add_icon_radio_check_item = api_core.godot_method_bind_get_method('PopupMenu', 'add_icon_radio_check_item')
  bind_popupmenu_add_icon_radio_check_shortcut = api_core.godot_method_bind_get_method('PopupMenu', 'add_icon_radio_check_shortcut')
  bind_popupmenu_add_icon_shortcut = api_core.godot_method_bind_get_method('PopupMenu', 'add_icon_shortcut')
  bind_popupmenu_add_item = api_core.godot_method_bind_get_method('PopupMenu', 'add_item')
  bind_popupmenu_add_multistate_item = api_core.godot_method_bind_get_method('PopupMenu', 'add_multistate_item')
  bind_popupmenu_add_radio_check_item = api_core.godot_method_bind_get_method('PopupMenu', 'add_radio_check_item')
  bind_popupmenu_add_radio_check_shortcut = api_core.godot_method_bind_get_method('PopupMenu', 'add_radio_check_shortcut')
  bind_popupmenu_add_separator = api_core.godot_method_bind_get_method('PopupMenu', 'add_separator')
  bind_popupmenu_add_shortcut = api_core.godot_method_bind_get_method('PopupMenu', 'add_shortcut')
  bind_popupmenu_add_submenu_item = api_core.godot_method_bind_get_method('PopupMenu', 'add_submenu_item')
  bind_popupmenu_clear = api_core.godot_method_bind_get_method('PopupMenu', 'clear')
  bind_popupmenu_get_allow_search = api_core.godot_method_bind_get_method('PopupMenu', 'get_allow_search')
  bind_popupmenu_get_item_accelerator = api_core.godot_method_bind_get_method('PopupMenu', 'get_item_accelerator')
  bind_popupmenu_get_item_count = api_core.godot_method_bind_get_method('PopupMenu', 'get_item_count')
  bind_popupmenu_get_item_icon = api_core.godot_method_bind_get_method('PopupMenu', 'get_item_icon')
  bind_popupmenu_get_item_id = api_core.godot_method_bind_get_method('PopupMenu', 'get_item_id')
  bind_popupmenu_get_item_index = api_core.godot_method_bind_get_method('PopupMenu', 'get_item_index')
  bind_popupmenu_get_item_metadata = api_core.godot_method_bind_get_method('PopupMenu', 'get_item_metadata')
  bind_popupmenu_get_item_shortcut = api_core.godot_method_bind_get_method('PopupMenu', 'get_item_shortcut')
  bind_popupmenu_get_item_submenu = api_core.godot_method_bind_get_method('PopupMenu', 'get_item_submenu')
  bind_popupmenu_get_item_text = api_core.godot_method_bind_get_method('PopupMenu', 'get_item_text')
  bind_popupmenu_get_item_tooltip = api_core.godot_method_bind_get_method('PopupMenu', 'get_item_tooltip')
  bind_popupmenu_get_submenu_popup_delay = api_core.godot_method_bind_get_method('PopupMenu', 'get_submenu_popup_delay')
  bind_popupmenu_is_hide_on_checkable_item_selection = api_core.godot_method_bind_get_method('PopupMenu', 'is_hide_on_checkable_item_selection')
  bind_popupmenu_is_hide_on_item_selection = api_core.godot_method_bind_get_method('PopupMenu', 'is_hide_on_item_selection')
  bind_popupmenu_is_hide_on_state_item_selection = api_core.godot_method_bind_get_method('PopupMenu', 'is_hide_on_state_item_selection')
  bind_popupmenu_is_hide_on_window_lose_focus = api_core.godot_method_bind_get_method('PopupMenu', 'is_hide_on_window_lose_focus')
  bind_popupmenu_is_item_checkable = api_core.godot_method_bind_get_method('PopupMenu', 'is_item_checkable')
  bind_popupmenu_is_item_checked = api_core.godot_method_bind_get_method('PopupMenu', 'is_item_checked')
  bind_popupmenu_is_item_disabled = api_core.godot_method_bind_get_method('PopupMenu', 'is_item_disabled')
  bind_popupmenu_is_item_radio_checkable = api_core.godot_method_bind_get_method('PopupMenu', 'is_item_radio_checkable')
  bind_popupmenu_is_item_separator = api_core.godot_method_bind_get_method('PopupMenu', 'is_item_separator')
  bind_popupmenu_is_item_shortcut_disabled = api_core.godot_method_bind_get_method('PopupMenu', 'is_item_shortcut_disabled')
  bind_popupmenu_remove_item = api_core.godot_method_bind_get_method('PopupMenu', 'remove_item')
  bind_popupmenu_set_allow_search = api_core.godot_method_bind_get_method('PopupMenu', 'set_allow_search')
  bind_popupmenu_set_hide_on_checkable_item_selection = api_core.godot_method_bind_get_method('PopupMenu', 'set_hide_on_checkable_item_selection')
  bind_popupmenu_set_hide_on_item_selection = api_core.godot_method_bind_get_method('PopupMenu', 'set_hide_on_item_selection')
  bind_popupmenu_set_hide_on_state_item_selection = api_core.godot_method_bind_get_method('PopupMenu', 'set_hide_on_state_item_selection')
  bind_popupmenu_set_hide_on_window_lose_focus = api_core.godot_method_bind_get_method('PopupMenu', 'set_hide_on_window_lose_focus')
  bind_popupmenu_set_item_accelerator = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_accelerator')
  bind_popupmenu_set_item_as_checkable = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_as_checkable')
  bind_popupmenu_set_item_as_radio_checkable = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_as_radio_checkable')
  bind_popupmenu_set_item_as_separator = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_as_separator')
  bind_popupmenu_set_item_checked = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_checked')
  bind_popupmenu_set_item_disabled = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_disabled')
  bind_popupmenu_set_item_icon = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_icon')
  bind_popupmenu_set_item_id = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_id')
  bind_popupmenu_set_item_metadata = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_metadata')
  bind_popupmenu_set_item_multistate = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_multistate')
  bind_popupmenu_set_item_shortcut = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_shortcut')
  bind_popupmenu_set_item_shortcut_disabled = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_shortcut_disabled')
  bind_popupmenu_set_item_submenu = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_submenu')
  bind_popupmenu_set_item_text = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_text')
  bind_popupmenu_set_item_tooltip = api_core.godot_method_bind_get_method('PopupMenu', 'set_item_tooltip')
  bind_popupmenu_set_submenu_popup_delay = api_core.godot_method_bind_get_method('PopupMenu', 'set_submenu_popup_delay')
  bind_popupmenu_toggle_item_checked = api_core.godot_method_bind_get_method('PopupMenu', 'toggle_item_checked')
  bind_popupmenu_toggle_item_multistate = api_core.godot_method_bind_get_method('PopupMenu', 'toggle_item_multistate')

############################Generated class###################################
cdef class PopupMenu(Popup):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PopupMenu")())
##################################Generated Properties#########################################
  @property
  def allow_search(self): 
    return self.get_allow_search()
  @allow_search.setter 
  def allow_search(self,value): 
    self.set_allow_search(value)
  @property
  def hide_on_checkable_item_selection(self): 
    return self.get_hide_on_checkable_item_selection()
  @hide_on_checkable_item_selection.setter 
  def hide_on_checkable_item_selection(self,value): 
    self.set_hide_on_checkable_item_selection(value)
  @property
  def hide_on_item_selection(self): 
    return self.get_hide_on_item_selection()
  @hide_on_item_selection.setter 
  def hide_on_item_selection(self,value): 
    self.set_hide_on_item_selection(value)
  @property
  def hide_on_state_item_selection(self): 
    return self.get_hide_on_state_item_selection()
  @hide_on_state_item_selection.setter 
  def hide_on_state_item_selection(self,value): 
    self.set_hide_on_state_item_selection(value)
  @property
  def items(self): 
    return self.get_items()
  @items.setter 
  def items(self,value): 
    self.set_items(value)
  @property
  def submenu_popup_delay(self): 
    return self.get_submenu_popup_delay()
  @submenu_popup_delay.setter 
  def submenu_popup_delay(self,value): 
    self.set_submenu_popup_delay(value)

##################################Generated Methods#########################################
  def  _get_items(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu__get_items,self.godot_owner,[NULL,],&ret)
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu__gui_input,self.godot_owner,[NULL,],NULL)
  def  _set_items(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu__set_items,self.godot_owner,[NULL,],NULL)
  def  _submenu_timeout(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu__submenu_timeout,self.godot_owner,[NULL,],NULL)
  def  add_check_item(self, labelidaccel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_check_item,self.godot_owner,[NULL,],NULL)
  def  add_check_shortcut(self, shortcutidglobal_):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_check_shortcut,self.godot_owner,[NULL,],NULL)
  def  add_icon_check_item(self, texturelabelidaccel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_icon_check_item,self.godot_owner,[NULL,],NULL)
  def  add_icon_check_shortcut(self, textureshortcutidglobal_):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_icon_check_shortcut,self.godot_owner,[NULL,],NULL)
  def  add_icon_item(self, texturelabelidaccel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_icon_item,self.godot_owner,[NULL,],NULL)
  def  add_icon_radio_check_item(self, texturelabelidaccel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_icon_radio_check_item,self.godot_owner,[NULL,],NULL)
  def  add_icon_radio_check_shortcut(self, textureshortcutidglobal_):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_icon_radio_check_shortcut,self.godot_owner,[NULL,],NULL)
  def  add_icon_shortcut(self, textureshortcutidglobal_):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_icon_shortcut,self.godot_owner,[NULL,],NULL)
  def  add_item(self, labelidaccel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_item,self.godot_owner,[NULL,],NULL)
  def  add_multistate_item(self, labelmax_statesdefault_stateidaccel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_multistate_item,self.godot_owner,[NULL,],NULL)
  def  add_radio_check_item(self, labelidaccel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_radio_check_item,self.godot_owner,[NULL,],NULL)
  def  add_radio_check_shortcut(self, shortcutidglobal_):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_radio_check_shortcut,self.godot_owner,[NULL,],NULL)
  def  add_separator(self, label):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_separator,self.godot_owner,[NULL,],NULL)
  def  add_shortcut(self, shortcutidglobal_):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_shortcut,self.godot_owner,[NULL,],NULL)
  def  add_submenu_item(self, labelsubmenuid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_submenu_item,self.godot_owner,[NULL,],NULL)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_clear,self.godot_owner,[NULL,],NULL)
  def  get_allow_search(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_allow_search,self.godot_owner,[NULL,],&ret)
  def  get_item_accelerator(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_accelerator,self.godot_owner,[NULL,],&ret)
  def  get_item_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_count,self.godot_owner,[NULL,],&ret)
  def  get_item_icon(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_icon,self.godot_owner,[NULL,],&ret)
  def  get_item_id(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_id,self.godot_owner,[NULL,],&ret)
  def  get_item_index(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_index,self.godot_owner,[NULL,],&ret)
  def  get_item_metadata(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_metadata,self.godot_owner,[NULL,],&ret)
  def  get_item_shortcut(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef ShortCut ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_shortcut,self.godot_owner,[NULL,],&ret)
  def  get_item_submenu(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_submenu,self.godot_owner,[NULL,],&ret)
  def  get_item_text(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_text,self.godot_owner,[NULL,],&ret)
  def  get_item_tooltip(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_tooltip,self.godot_owner,[NULL,],&ret)
  def  get_submenu_popup_delay(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_submenu_popup_delay,self.godot_owner,[NULL,],&ret)
  def  is_hide_on_checkable_item_selection(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_hide_on_checkable_item_selection,self.godot_owner,[NULL,],&ret)
  def  is_hide_on_item_selection(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_hide_on_item_selection,self.godot_owner,[NULL,],&ret)
  def  is_hide_on_state_item_selection(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_hide_on_state_item_selection,self.godot_owner,[NULL,],&ret)
  def  is_hide_on_window_lose_focus(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_hide_on_window_lose_focus,self.godot_owner,[NULL,],&ret)
  def  is_item_checkable(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_item_checkable,self.godot_owner,[NULL,],&ret)
  def  is_item_checked(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_item_checked,self.godot_owner,[NULL,],&ret)
  def  is_item_disabled(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_item_disabled,self.godot_owner,[NULL,],&ret)
  def  is_item_radio_checkable(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_item_radio_checkable,self.godot_owner,[NULL,],&ret)
  def  is_item_separator(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_item_separator,self.godot_owner,[NULL,],&ret)
  def  is_item_shortcut_disabled(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_item_shortcut_disabled,self.godot_owner,[NULL,],&ret)
  def  remove_item(self, idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_remove_item,self.godot_owner,[NULL,],NULL)
  def  set_allow_search(self, allow):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_allow_search,self.godot_owner,[NULL,],NULL)
  def  set_hide_on_checkable_item_selection(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_hide_on_checkable_item_selection,self.godot_owner,[NULL,],NULL)
  def  set_hide_on_item_selection(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_hide_on_item_selection,self.godot_owner,[NULL,],NULL)
  def  set_hide_on_state_item_selection(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_hide_on_state_item_selection,self.godot_owner,[NULL,],NULL)
  def  set_hide_on_window_lose_focus(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_hide_on_window_lose_focus,self.godot_owner,[NULL,],NULL)
  def  set_item_accelerator(self, idxaccel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_accelerator,self.godot_owner,[NULL,],NULL)
  def  set_item_as_checkable(self, idxenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_as_checkable,self.godot_owner,[NULL,],NULL)
  def  set_item_as_radio_checkable(self, idxenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_as_radio_checkable,self.godot_owner,[NULL,],NULL)
  def  set_item_as_separator(self, idxenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_as_separator,self.godot_owner,[NULL,],NULL)
  def  set_item_checked(self, idxchecked):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_checked,self.godot_owner,[NULL,],NULL)
  def  set_item_disabled(self, idxdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_disabled,self.godot_owner,[NULL,],NULL)
  def  set_item_icon(self, idxicon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_icon,self.godot_owner,[NULL,],NULL)
  def  set_item_id(self, idxid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_id,self.godot_owner,[NULL,],NULL)
  def  set_item_metadata(self, idxmetadata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_metadata,self.godot_owner,[NULL,],NULL)
  def  set_item_multistate(self, idxstate):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_multistate,self.godot_owner,[NULL,],NULL)
  def  set_item_shortcut(self, idxshortcutglobal_):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_shortcut,self.godot_owner,[NULL,],NULL)
  def  set_item_shortcut_disabled(self, idxdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_shortcut_disabled,self.godot_owner,[NULL,],NULL)
  def  set_item_submenu(self, idxsubmenu):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_submenu,self.godot_owner,[NULL,],NULL)
  def  set_item_text(self, idxtext):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_text,self.godot_owner,[NULL,],NULL)
  def  set_item_tooltip(self, idxtooltip):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_tooltip,self.godot_owner,[NULL,],NULL)
  def  set_submenu_popup_delay(self, seconds):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_submenu_popup_delay,self.godot_owner,[NULL,],NULL)
  def  toggle_item_checked(self, idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_toggle_item_checked,self.godot_owner,[NULL,],NULL)
  def  toggle_item_multistate(self, idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_toggle_item_multistate,self.godot_owner,[NULL,],NULL)
