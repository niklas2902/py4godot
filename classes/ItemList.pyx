
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.InputEvent
cimport classes.Texture
cimport classes.Texture
cimport classes.Texture
cimport classes.Control 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_itemlist__get_items
cdef godot_method_bind *bind_itemlist__gui_input
cdef godot_method_bind *bind_itemlist__scroll_changed
cdef godot_method_bind *bind_itemlist__set_items
cdef godot_method_bind *bind_itemlist_add_icon_item
cdef godot_method_bind *bind_itemlist_add_item
cdef godot_method_bind *bind_itemlist_clear
cdef godot_method_bind *bind_itemlist_ensure_current_is_visible
cdef godot_method_bind *bind_itemlist_get_allow_reselect
cdef godot_method_bind *bind_itemlist_get_allow_rmb_select
cdef godot_method_bind *bind_itemlist_get_fixed_column_width
cdef godot_method_bind *bind_itemlist_get_fixed_icon_size
cdef godot_method_bind *bind_itemlist_get_icon_mode
cdef godot_method_bind *bind_itemlist_get_icon_scale
cdef godot_method_bind *bind_itemlist_get_item_at_position
cdef godot_method_bind *bind_itemlist_get_item_count
cdef godot_method_bind *bind_itemlist_get_item_custom_bg_color
cdef godot_method_bind *bind_itemlist_get_item_custom_fg_color
cdef godot_method_bind *bind_itemlist_get_item_icon
cdef godot_method_bind *bind_itemlist_get_item_icon_modulate
cdef godot_method_bind *bind_itemlist_get_item_icon_region
cdef godot_method_bind *bind_itemlist_get_item_metadata
cdef godot_method_bind *bind_itemlist_get_item_text
cdef godot_method_bind *bind_itemlist_get_item_tooltip
cdef godot_method_bind *bind_itemlist_get_max_columns
cdef godot_method_bind *bind_itemlist_get_max_text_lines
cdef godot_method_bind *bind_itemlist_get_select_mode
cdef godot_method_bind *bind_itemlist_get_selected_items
cdef godot_method_bind *bind_itemlist_get_v_scroll
cdef godot_method_bind *bind_itemlist_has_auto_height
cdef godot_method_bind *bind_itemlist_is_anything_selected
cdef godot_method_bind *bind_itemlist_is_item_disabled
cdef godot_method_bind *bind_itemlist_is_item_icon_transposed
cdef godot_method_bind *bind_itemlist_is_item_selectable
cdef godot_method_bind *bind_itemlist_is_item_tooltip_enabled
cdef godot_method_bind *bind_itemlist_is_same_column_width
cdef godot_method_bind *bind_itemlist_is_selected
cdef godot_method_bind *bind_itemlist_move_item
cdef godot_method_bind *bind_itemlist_remove_item
cdef godot_method_bind *bind_itemlist_select
cdef godot_method_bind *bind_itemlist_set_allow_reselect
cdef godot_method_bind *bind_itemlist_set_allow_rmb_select
cdef godot_method_bind *bind_itemlist_set_auto_height
cdef godot_method_bind *bind_itemlist_set_fixed_column_width
cdef godot_method_bind *bind_itemlist_set_fixed_icon_size
cdef godot_method_bind *bind_itemlist_set_icon_mode
cdef godot_method_bind *bind_itemlist_set_icon_scale
cdef godot_method_bind *bind_itemlist_set_item_custom_bg_color
cdef godot_method_bind *bind_itemlist_set_item_custom_fg_color
cdef godot_method_bind *bind_itemlist_set_item_disabled
cdef godot_method_bind *bind_itemlist_set_item_icon
cdef godot_method_bind *bind_itemlist_set_item_icon_modulate
cdef godot_method_bind *bind_itemlist_set_item_icon_region
cdef godot_method_bind *bind_itemlist_set_item_icon_transposed
cdef godot_method_bind *bind_itemlist_set_item_metadata
cdef godot_method_bind *bind_itemlist_set_item_selectable
cdef godot_method_bind *bind_itemlist_set_item_text
cdef godot_method_bind *bind_itemlist_set_item_tooltip
cdef godot_method_bind *bind_itemlist_set_item_tooltip_enabled
cdef godot_method_bind *bind_itemlist_set_max_columns
cdef godot_method_bind *bind_itemlist_set_max_text_lines
cdef godot_method_bind *bind_itemlist_set_same_column_width
cdef godot_method_bind *bind_itemlist_set_select_mode
cdef godot_method_bind *bind_itemlist_sort_items_by_text
cdef godot_method_bind *bind_itemlist_unselect
cdef godot_method_bind *bind_itemlist_unselect_all
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_itemlist__get_items = api_core.godot_method_bind_get_method('ItemList', '_get_items')
  bind_itemlist__gui_input = api_core.godot_method_bind_get_method('ItemList', '_gui_input')
  bind_itemlist__scroll_changed = api_core.godot_method_bind_get_method('ItemList', '_scroll_changed')
  bind_itemlist__set_items = api_core.godot_method_bind_get_method('ItemList', '_set_items')
  bind_itemlist_add_icon_item = api_core.godot_method_bind_get_method('ItemList', 'add_icon_item')
  bind_itemlist_add_item = api_core.godot_method_bind_get_method('ItemList', 'add_item')
  bind_itemlist_clear = api_core.godot_method_bind_get_method('ItemList', 'clear')
  bind_itemlist_ensure_current_is_visible = api_core.godot_method_bind_get_method('ItemList', 'ensure_current_is_visible')
  bind_itemlist_get_allow_reselect = api_core.godot_method_bind_get_method('ItemList', 'get_allow_reselect')
  bind_itemlist_get_allow_rmb_select = api_core.godot_method_bind_get_method('ItemList', 'get_allow_rmb_select')
  bind_itemlist_get_fixed_column_width = api_core.godot_method_bind_get_method('ItemList', 'get_fixed_column_width')
  bind_itemlist_get_fixed_icon_size = api_core.godot_method_bind_get_method('ItemList', 'get_fixed_icon_size')
  bind_itemlist_get_icon_mode = api_core.godot_method_bind_get_method('ItemList', 'get_icon_mode')
  bind_itemlist_get_icon_scale = api_core.godot_method_bind_get_method('ItemList', 'get_icon_scale')
  bind_itemlist_get_item_at_position = api_core.godot_method_bind_get_method('ItemList', 'get_item_at_position')
  bind_itemlist_get_item_count = api_core.godot_method_bind_get_method('ItemList', 'get_item_count')
  bind_itemlist_get_item_custom_bg_color = api_core.godot_method_bind_get_method('ItemList', 'get_item_custom_bg_color')
  bind_itemlist_get_item_custom_fg_color = api_core.godot_method_bind_get_method('ItemList', 'get_item_custom_fg_color')
  bind_itemlist_get_item_icon = api_core.godot_method_bind_get_method('ItemList', 'get_item_icon')
  bind_itemlist_get_item_icon_modulate = api_core.godot_method_bind_get_method('ItemList', 'get_item_icon_modulate')
  bind_itemlist_get_item_icon_region = api_core.godot_method_bind_get_method('ItemList', 'get_item_icon_region')
  bind_itemlist_get_item_metadata = api_core.godot_method_bind_get_method('ItemList', 'get_item_metadata')
  bind_itemlist_get_item_text = api_core.godot_method_bind_get_method('ItemList', 'get_item_text')
  bind_itemlist_get_item_tooltip = api_core.godot_method_bind_get_method('ItemList', 'get_item_tooltip')
  bind_itemlist_get_max_columns = api_core.godot_method_bind_get_method('ItemList', 'get_max_columns')
  bind_itemlist_get_max_text_lines = api_core.godot_method_bind_get_method('ItemList', 'get_max_text_lines')
  bind_itemlist_get_select_mode = api_core.godot_method_bind_get_method('ItemList', 'get_select_mode')
  bind_itemlist_get_selected_items = api_core.godot_method_bind_get_method('ItemList', 'get_selected_items')
  bind_itemlist_get_v_scroll = api_core.godot_method_bind_get_method('ItemList', 'get_v_scroll')
  bind_itemlist_has_auto_height = api_core.godot_method_bind_get_method('ItemList', 'has_auto_height')
  bind_itemlist_is_anything_selected = api_core.godot_method_bind_get_method('ItemList', 'is_anything_selected')
  bind_itemlist_is_item_disabled = api_core.godot_method_bind_get_method('ItemList', 'is_item_disabled')
  bind_itemlist_is_item_icon_transposed = api_core.godot_method_bind_get_method('ItemList', 'is_item_icon_transposed')
  bind_itemlist_is_item_selectable = api_core.godot_method_bind_get_method('ItemList', 'is_item_selectable')
  bind_itemlist_is_item_tooltip_enabled = api_core.godot_method_bind_get_method('ItemList', 'is_item_tooltip_enabled')
  bind_itemlist_is_same_column_width = api_core.godot_method_bind_get_method('ItemList', 'is_same_column_width')
  bind_itemlist_is_selected = api_core.godot_method_bind_get_method('ItemList', 'is_selected')
  bind_itemlist_move_item = api_core.godot_method_bind_get_method('ItemList', 'move_item')
  bind_itemlist_remove_item = api_core.godot_method_bind_get_method('ItemList', 'remove_item')
  bind_itemlist_select = api_core.godot_method_bind_get_method('ItemList', 'select')
  bind_itemlist_set_allow_reselect = api_core.godot_method_bind_get_method('ItemList', 'set_allow_reselect')
  bind_itemlist_set_allow_rmb_select = api_core.godot_method_bind_get_method('ItemList', 'set_allow_rmb_select')
  bind_itemlist_set_auto_height = api_core.godot_method_bind_get_method('ItemList', 'set_auto_height')
  bind_itemlist_set_fixed_column_width = api_core.godot_method_bind_get_method('ItemList', 'set_fixed_column_width')
  bind_itemlist_set_fixed_icon_size = api_core.godot_method_bind_get_method('ItemList', 'set_fixed_icon_size')
  bind_itemlist_set_icon_mode = api_core.godot_method_bind_get_method('ItemList', 'set_icon_mode')
  bind_itemlist_set_icon_scale = api_core.godot_method_bind_get_method('ItemList', 'set_icon_scale')
  bind_itemlist_set_item_custom_bg_color = api_core.godot_method_bind_get_method('ItemList', 'set_item_custom_bg_color')
  bind_itemlist_set_item_custom_fg_color = api_core.godot_method_bind_get_method('ItemList', 'set_item_custom_fg_color')
  bind_itemlist_set_item_disabled = api_core.godot_method_bind_get_method('ItemList', 'set_item_disabled')
  bind_itemlist_set_item_icon = api_core.godot_method_bind_get_method('ItemList', 'set_item_icon')
  bind_itemlist_set_item_icon_modulate = api_core.godot_method_bind_get_method('ItemList', 'set_item_icon_modulate')
  bind_itemlist_set_item_icon_region = api_core.godot_method_bind_get_method('ItemList', 'set_item_icon_region')
  bind_itemlist_set_item_icon_transposed = api_core.godot_method_bind_get_method('ItemList', 'set_item_icon_transposed')
  bind_itemlist_set_item_metadata = api_core.godot_method_bind_get_method('ItemList', 'set_item_metadata')
  bind_itemlist_set_item_selectable = api_core.godot_method_bind_get_method('ItemList', 'set_item_selectable')
  bind_itemlist_set_item_text = api_core.godot_method_bind_get_method('ItemList', 'set_item_text')
  bind_itemlist_set_item_tooltip = api_core.godot_method_bind_get_method('ItemList', 'set_item_tooltip')
  bind_itemlist_set_item_tooltip_enabled = api_core.godot_method_bind_get_method('ItemList', 'set_item_tooltip_enabled')
  bind_itemlist_set_max_columns = api_core.godot_method_bind_get_method('ItemList', 'set_max_columns')
  bind_itemlist_set_max_text_lines = api_core.godot_method_bind_get_method('ItemList', 'set_max_text_lines')
  bind_itemlist_set_same_column_width = api_core.godot_method_bind_get_method('ItemList', 'set_same_column_width')
  bind_itemlist_set_select_mode = api_core.godot_method_bind_get_method('ItemList', 'set_select_mode')
  bind_itemlist_sort_items_by_text = api_core.godot_method_bind_get_method('ItemList', 'sort_items_by_text')
  bind_itemlist_unselect = api_core.godot_method_bind_get_method('ItemList', 'unselect')
  bind_itemlist_unselect_all = api_core.godot_method_bind_get_method('ItemList', 'unselect_all')

############################Generated class###################################
cdef class ItemList(classes.Control.Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ItemList")())
##################################Generated Properties#########################################
  @property
  def allow_reselect(self): 
    return self.get_allow_reselect()
  @allow_reselect.setter 
  def allow_reselect(self,value): 
    self.set_allow_reselect(value)
  @property
  def allow_rmb_select(self): 
    return self.get_allow_rmb_select()
  @allow_rmb_select.setter 
  def allow_rmb_select(self,value): 
    self.set_allow_rmb_select(value)
  @property
  def auto_height(self): 
    return self.get_auto_height()
  @auto_height.setter 
  def auto_height(self,value): 
    self.set_auto_height(value)
  @property
  def fixed_column_width(self): 
    return self.get_fixed_column_width()
  @fixed_column_width.setter 
  def fixed_column_width(self,value): 
    self.set_fixed_column_width(value)
  @property
  def fixed_icon_size(self): 
    return self.get_fixed_icon_size()
  @fixed_icon_size.setter 
  def fixed_icon_size(self,value): 
    self.set_fixed_icon_size(value)
  @property
  def icon_mode(self): 
    return self.get_icon_mode()
  @icon_mode.setter 
  def icon_mode(self,value): 
    self.set_icon_mode(value)
  @property
  def icon_scale(self): 
    return self.get_icon_scale()
  @icon_scale.setter 
  def icon_scale(self,value): 
    self.set_icon_scale(value)
  @property
  def items(self): 
    return self.get_items()
  @items.setter 
  def items(self,value): 
    self.set_items(value)
  @property
  def max_columns(self): 
    return self.get_max_columns()
  @max_columns.setter 
  def max_columns(self,value): 
    self.set_max_columns(value)
  @property
  def max_text_lines(self): 
    return self.get_max_text_lines()
  @max_text_lines.setter 
  def max_text_lines(self,value): 
    self.set_max_text_lines(value)
  @property
  def same_column_width(self): 
    return self.get_same_column_width()
  @same_column_width.setter 
  def same_column_width(self,value): 
    self.set_same_column_width(value)
  @property
  def select_mode(self): 
    return self.get_select_mode()
  @select_mode.setter 
  def select_mode(self,value): 
    self.set_select_mode(value)

##################################Generated Methods#########################################
  def  _get_items(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist__get_items,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_itemlist__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _scroll_changed(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_itemlist__scroll_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_items(self,  Array arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_itemlist__set_items,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_icon_item(self,  classes.Texture.Texture icon,  bool selectable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = icon.godot_owner
    args[1] = &selectable
    api_core.godot_method_bind_ptrcall(bind_itemlist_add_icon_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_item(self,  String text,  classes.Texture.Texture icon,  bool selectable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &text._native
    args[1] = icon.godot_owner
    args[2] = &selectable
    api_core.godot_method_bind_ptrcall(bind_itemlist_add_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_itemlist_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  ensure_current_is_visible(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_itemlist_ensure_current_is_visible,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_allow_reselect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_get_allow_reselect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_allow_rmb_select(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_get_allow_rmb_select,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fixed_column_width(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_get_fixed_column_width,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fixed_icon_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_get_fixed_icon_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_icon_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef IconMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_get_icon_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_icon_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_get_icon_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_at_position(self,  Vector2 position,  bool exact):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &position._native
    args[1] = &exact
    api_core.godot_method_bind_ptrcall(bind_itemlist_get_item_at_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_get_item_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_custom_bg_color(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_get_item_custom_bg_color,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_item_custom_fg_color(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_get_item_custom_fg_color,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_item_icon(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_get_item_icon,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_item_icon_modulate(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_get_item_icon_modulate,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_item_icon_region(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_get_item_icon_region,self.godot_owner,args,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_item_metadata(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_get_item_metadata,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_item_text(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_get_item_text,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_item_tooltip(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_get_item_tooltip,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_max_columns(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_get_max_columns,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_max_text_lines(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_get_max_text_lines,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_select_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef SelectMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_get_select_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_selected_items(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_get_selected_items,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_v_scroll(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_get_v_scroll,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  has_auto_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_has_auto_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_anything_selected(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_is_anything_selected,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_item_disabled(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_is_item_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_item_icon_transposed(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_is_item_icon_transposed,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_item_selectable(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_is_item_selectable,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_item_tooltip_enabled(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_is_item_tooltip_enabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_same_column_width(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_itemlist_is_same_column_width,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_selected(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_is_selected,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  move_item(self,  int from_idx,  int to_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &from_idx
    args[1] = &to_idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_move_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_item(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_remove_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  select(self,  int idx,  bool single):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &single
    api_core.godot_method_bind_ptrcall(bind_itemlist_select,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_allow_reselect(self,  bool allow):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &allow
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_allow_reselect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_allow_rmb_select(self,  bool allow):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &allow
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_allow_rmb_select,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_auto_height(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_auto_height,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fixed_column_width(self,  int width):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &width
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_fixed_column_width,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fixed_icon_size(self,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size._native
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_fixed_icon_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_icon_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_icon_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_icon_scale(self,  float scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scale
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_icon_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_custom_bg_color(self,  int idx,  Color custom_bg_color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &custom_bg_color._native
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_item_custom_bg_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_custom_fg_color(self,  int idx,  Color custom_fg_color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &custom_fg_color._native
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_item_custom_fg_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_disabled(self,  int idx,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &disabled
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_item_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_icon(self,  int idx,  classes.Texture.Texture icon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = icon.godot_owner
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_item_icon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_icon_modulate(self,  int idx,  Color modulate):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &modulate._native
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_item_icon_modulate,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_icon_region(self,  int idx,  Rect2 rect):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &rect._native
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_item_icon_region,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_icon_transposed(self,  int idx,  bool transposed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &transposed
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_item_icon_transposed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_metadata(self,  int idx,  Variant metadata):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &metadata._native
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_item_metadata,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_selectable(self,  int idx,  bool selectable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &selectable
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_item_selectable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_text(self,  int idx,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &text._native
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_item_text,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_tooltip(self,  int idx,  String tooltip):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &tooltip._native
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_item_tooltip,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_tooltip_enabled(self,  int idx,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_item_tooltip_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_max_columns(self,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_max_columns,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_max_text_lines(self,  int lines):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &lines
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_max_text_lines,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_same_column_width(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_same_column_width,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_select_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_itemlist_set_select_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  sort_items_by_text(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_itemlist_sort_items_by_text,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  unselect(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_itemlist_unselect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  unselect_all(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_itemlist_unselect_all,self.godot_owner,NULL,NULL)
    hello('hallo2')
