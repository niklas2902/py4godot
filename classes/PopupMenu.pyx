
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
cimport classes.InputEvent
cimport classes.ShortCut
cimport classes.Texture
cimport classes.Texture
cimport classes.ShortCut
cimport classes.Texture
cimport classes.Texture
cimport classes.Texture
cimport classes.ShortCut
cimport classes.Texture
cimport classes.ShortCut
cimport classes.ShortCut
cimport classes.ShortCut
cimport classes.Texture
cimport classes.ShortCut
cimport classes.Popup 

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
cdef class PopupMenu(classes.Popup.Popup):
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

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_popupmenu__get_items,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_items(self,  Array arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_popupmenu__set_items,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _submenu_timeout(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_popupmenu__submenu_timeout,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  add_check_item(self,  String label,  int id,  int accel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &label._native
    args[1] = &id
    args[2] = &accel
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_check_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_check_shortcut(self,  classes.ShortCut.ShortCut shortcut,  int id,  bool global_):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = shortcut.godot_owner
    args[1] = &id
    args[2] = &global_
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_check_shortcut,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_icon_check_item(self,  classes.Texture.Texture texture,  String label,  int id,  int accel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = texture.godot_owner
    args[1] = &label._native
    args[2] = &id
    args[3] = &accel
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_icon_check_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_icon_check_shortcut(self,  classes.Texture.Texture texture,  classes.ShortCut.ShortCut shortcut,  int id,  bool global_):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = texture.godot_owner
    args[1] = shortcut.godot_owner
    args[2] = &id
    args[3] = &global_
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_icon_check_shortcut,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_icon_item(self,  classes.Texture.Texture texture,  String label,  int id,  int accel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = texture.godot_owner
    args[1] = &label._native
    args[2] = &id
    args[3] = &accel
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_icon_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_icon_radio_check_item(self,  classes.Texture.Texture texture,  String label,  int id,  int accel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = texture.godot_owner
    args[1] = &label._native
    args[2] = &id
    args[3] = &accel
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_icon_radio_check_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_icon_radio_check_shortcut(self,  classes.Texture.Texture texture,  classes.ShortCut.ShortCut shortcut,  int id,  bool global_):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = texture.godot_owner
    args[1] = shortcut.godot_owner
    args[2] = &id
    args[3] = &global_
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_icon_radio_check_shortcut,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_icon_shortcut(self,  classes.Texture.Texture texture,  classes.ShortCut.ShortCut shortcut,  int id,  bool global_):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = texture.godot_owner
    args[1] = shortcut.godot_owner
    args[2] = &id
    args[3] = &global_
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_icon_shortcut,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_item(self,  String label,  int id,  int accel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &label._native
    args[1] = &id
    args[2] = &accel
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_multistate_item(self,  String label,  int max_states,  int default_state,  int id,  int accel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &label._native
    args[1] = &max_states
    args[2] = &default_state
    args[3] = &id
    args[4] = &accel
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_multistate_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_radio_check_item(self,  String label,  int id,  int accel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &label._native
    args[1] = &id
    args[2] = &accel
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_radio_check_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_radio_check_shortcut(self,  classes.ShortCut.ShortCut shortcut,  int id,  bool global_):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = shortcut.godot_owner
    args[1] = &id
    args[2] = &global_
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_radio_check_shortcut,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_separator(self,  String label):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &label._native
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_separator,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_shortcut(self,  classes.ShortCut.ShortCut shortcut,  int id,  bool global_):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = shortcut.godot_owner
    args[1] = &id
    args[2] = &global_
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_shortcut,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_submenu_item(self,  String label,  String submenu,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &label._native
    args[1] = &submenu._native
    args[2] = &id
    api_core.godot_method_bind_ptrcall(bind_popupmenu_add_submenu_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_popupmenu_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_allow_search(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_allow_search,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_accelerator(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_accelerator,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_icon(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_icon,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_item_id(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_index(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_index,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_metadata(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_metadata,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_item_shortcut(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_shortcut,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_item_submenu(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_submenu,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_item_text(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_text,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_item_tooltip(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_item_tooltip,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_submenu_popup_delay(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_popupmenu_get_submenu_popup_delay,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_hide_on_checkable_item_selection(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_hide_on_checkable_item_selection,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_hide_on_item_selection(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_hide_on_item_selection,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_hide_on_state_item_selection(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_hide_on_state_item_selection,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_hide_on_window_lose_focus(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_hide_on_window_lose_focus,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_item_checkable(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_item_checkable,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_item_checked(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_item_checked,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_item_disabled(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_item_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_item_radio_checkable(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_item_radio_checkable,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_item_separator(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_item_separator,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_item_shortcut_disabled(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_is_item_shortcut_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_item(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_remove_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_allow_search(self,  bool allow):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &allow
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_allow_search,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hide_on_checkable_item_selection(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_hide_on_checkable_item_selection,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hide_on_item_selection(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_hide_on_item_selection,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hide_on_state_item_selection(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_hide_on_state_item_selection,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hide_on_window_lose_focus(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_hide_on_window_lose_focus,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_accelerator(self,  int idx,  int accel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &accel
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_accelerator,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_as_checkable(self,  int idx,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_as_checkable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_as_radio_checkable(self,  int idx,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_as_radio_checkable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_as_separator(self,  int idx,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_as_separator,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_checked(self,  int idx,  bool checked):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &checked
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_checked,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_disabled(self,  int idx,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &disabled
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_icon(self,  int idx,  classes.Texture.Texture icon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = icon.godot_owner
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_icon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_id(self,  int idx,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_metadata(self,  int idx,  Variant metadata):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &metadata._native
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_metadata,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_multistate(self,  int idx,  int state):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &state
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_multistate,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_shortcut(self,  int idx,  classes.ShortCut.ShortCut shortcut,  bool global_):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &idx
    args[1] = shortcut.godot_owner
    args[2] = &global_
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_shortcut,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_shortcut_disabled(self,  int idx,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &disabled
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_shortcut_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_submenu(self,  int idx,  String submenu):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &submenu._native
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_submenu,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_text(self,  int idx,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &text._native
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_text,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_tooltip(self,  int idx,  String tooltip):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &tooltip._native
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_item_tooltip,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_submenu_popup_delay(self,  float seconds):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &seconds
    api_core.godot_method_bind_ptrcall(bind_popupmenu_set_submenu_popup_delay,self.godot_owner,args,NULL)
    hello('hallo2')
  def  toggle_item_checked(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_toggle_item_checked,self.godot_owner,args,NULL)
    hello('hallo2')
  def  toggle_item_multistate(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_popupmenu_toggle_item_multistate,self.godot_owner,args,NULL)
    hello('hallo2')
