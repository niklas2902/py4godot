from classes.Button cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_optionbutton__focused
cdef godot_method_bind *bind_optionbutton__get_items
cdef godot_method_bind *bind_optionbutton__select_int
cdef godot_method_bind *bind_optionbutton__selected
cdef godot_method_bind *bind_optionbutton__set_items
cdef godot_method_bind *bind_optionbutton_add_icon_item
cdef godot_method_bind *bind_optionbutton_add_item
cdef godot_method_bind *bind_optionbutton_add_separator
cdef godot_method_bind *bind_optionbutton_clear
cdef godot_method_bind *bind_optionbutton_get_item_count
cdef godot_method_bind *bind_optionbutton_get_item_icon
cdef godot_method_bind *bind_optionbutton_get_item_id
cdef godot_method_bind *bind_optionbutton_get_item_index
cdef godot_method_bind *bind_optionbutton_get_item_metadata
cdef godot_method_bind *bind_optionbutton_get_item_text
cdef godot_method_bind *bind_optionbutton_get_popup
cdef godot_method_bind *bind_optionbutton_get_selected
cdef godot_method_bind *bind_optionbutton_get_selected_id
cdef godot_method_bind *bind_optionbutton_get_selected_metadata
cdef godot_method_bind *bind_optionbutton_is_item_disabled
cdef godot_method_bind *bind_optionbutton_remove_item
cdef godot_method_bind *bind_optionbutton_select
cdef godot_method_bind *bind_optionbutton_set_item_disabled
cdef godot_method_bind *bind_optionbutton_set_item_icon
cdef godot_method_bind *bind_optionbutton_set_item_id
cdef godot_method_bind *bind_optionbutton_set_item_metadata
cdef godot_method_bind *bind_optionbutton_set_item_text
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_optionbutton__focused = api_core.godot_method_bind_get_method('OptionButton', '_focused')
  bind_optionbutton__get_items = api_core.godot_method_bind_get_method('OptionButton', '_get_items')
  bind_optionbutton__select_int = api_core.godot_method_bind_get_method('OptionButton', '_select_int')
  bind_optionbutton__selected = api_core.godot_method_bind_get_method('OptionButton', '_selected')
  bind_optionbutton__set_items = api_core.godot_method_bind_get_method('OptionButton', '_set_items')
  bind_optionbutton_add_icon_item = api_core.godot_method_bind_get_method('OptionButton', 'add_icon_item')
  bind_optionbutton_add_item = api_core.godot_method_bind_get_method('OptionButton', 'add_item')
  bind_optionbutton_add_separator = api_core.godot_method_bind_get_method('OptionButton', 'add_separator')
  bind_optionbutton_clear = api_core.godot_method_bind_get_method('OptionButton', 'clear')
  bind_optionbutton_get_item_count = api_core.godot_method_bind_get_method('OptionButton', 'get_item_count')
  bind_optionbutton_get_item_icon = api_core.godot_method_bind_get_method('OptionButton', 'get_item_icon')
  bind_optionbutton_get_item_id = api_core.godot_method_bind_get_method('OptionButton', 'get_item_id')
  bind_optionbutton_get_item_index = api_core.godot_method_bind_get_method('OptionButton', 'get_item_index')
  bind_optionbutton_get_item_metadata = api_core.godot_method_bind_get_method('OptionButton', 'get_item_metadata')
  bind_optionbutton_get_item_text = api_core.godot_method_bind_get_method('OptionButton', 'get_item_text')
  bind_optionbutton_get_popup = api_core.godot_method_bind_get_method('OptionButton', 'get_popup')
  bind_optionbutton_get_selected = api_core.godot_method_bind_get_method('OptionButton', 'get_selected')
  bind_optionbutton_get_selected_id = api_core.godot_method_bind_get_method('OptionButton', 'get_selected_id')
  bind_optionbutton_get_selected_metadata = api_core.godot_method_bind_get_method('OptionButton', 'get_selected_metadata')
  bind_optionbutton_is_item_disabled = api_core.godot_method_bind_get_method('OptionButton', 'is_item_disabled')
  bind_optionbutton_remove_item = api_core.godot_method_bind_get_method('OptionButton', 'remove_item')
  bind_optionbutton_select = api_core.godot_method_bind_get_method('OptionButton', 'select')
  bind_optionbutton_set_item_disabled = api_core.godot_method_bind_get_method('OptionButton', 'set_item_disabled')
  bind_optionbutton_set_item_icon = api_core.godot_method_bind_get_method('OptionButton', 'set_item_icon')
  bind_optionbutton_set_item_id = api_core.godot_method_bind_get_method('OptionButton', 'set_item_id')
  bind_optionbutton_set_item_metadata = api_core.godot_method_bind_get_method('OptionButton', 'set_item_metadata')
  bind_optionbutton_set_item_text = api_core.godot_method_bind_get_method('OptionButton', 'set_item_text')

############################Generated class###################################
cdef class OptionButton(Button):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("OptionButton")())
##################################Generated Properties#########################################
  @property
  def items(self): 
    return self.get_items()
  @items.setter 
  def items(self,value): 
    self.set_items(value)
  @property
  def selected(self): 
    return self.get_selected()
  @selected.setter 
  def selected(self,value): 
    self.set_selected(value)

##################################Generated Methods#########################################
  def  _focused(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton__focused,self.godot_owner,[NULL,],NULL)
  def  _get_items(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_optionbutton__get_items,self.godot_owner,[NULL,],&ret)
  def  _select_int(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton__select_int,self.godot_owner,[NULL,],NULL)
  def  _selected(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton__selected,self.godot_owner,[NULL,],NULL)
  def  _set_items(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton__set_items,self.godot_owner,[NULL,],NULL)
  def  add_icon_item(self, texturelabelid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton_add_icon_item,self.godot_owner,[NULL,],NULL)
  def  add_item(self, labelid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton_add_item,self.godot_owner,[NULL,],NULL)
  def  add_separator(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton_add_separator,self.godot_owner,[NULL,],NULL)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton_clear,self.godot_owner,[NULL,],NULL)
  def  get_item_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_item_count,self.godot_owner,[NULL,],&ret)
  def  get_item_icon(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_item_icon,self.godot_owner,[NULL,],&ret)
  def  get_item_id(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_item_id,self.godot_owner,[NULL,],&ret)
  def  get_item_index(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_item_index,self.godot_owner,[NULL,],&ret)
  def  get_item_metadata(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_item_metadata,self.godot_owner,[NULL,],&ret)
  def  get_item_text(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_item_text,self.godot_owner,[NULL,],&ret)
  def  get_popup(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PopupMenu ret
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_popup,self.godot_owner,[NULL,],&ret)
  def  get_selected(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_selected,self.godot_owner,[NULL,],&ret)
  def  get_selected_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_selected_id,self.godot_owner,[NULL,],&ret)
  def  get_selected_metadata(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_selected_metadata,self.godot_owner,[NULL,],&ret)
  def  is_item_disabled(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_optionbutton_is_item_disabled,self.godot_owner,[NULL,],&ret)
  def  remove_item(self, idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton_remove_item,self.godot_owner,[NULL,],NULL)
  def  select(self, idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton_select,self.godot_owner,[NULL,],NULL)
  def  set_item_disabled(self, idxdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton_set_item_disabled,self.godot_owner,[NULL,],NULL)
  def  set_item_icon(self, idxtexture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton_set_item_icon,self.godot_owner,[NULL,],NULL)
  def  set_item_id(self, idxid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton_set_item_id,self.godot_owner,[NULL,],NULL)
  def  set_item_metadata(self, idxmetadata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton_set_item_metadata,self.godot_owner,[NULL,],NULL)
  def  set_item_text(self, idxtext):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton_set_item_text,self.godot_owner,[NULL,],NULL)
