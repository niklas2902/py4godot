
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
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Control 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_tree__gui_input
cdef godot_method_bind *bind_tree__popup_select
cdef godot_method_bind *bind_tree__range_click_timeout
cdef godot_method_bind *bind_tree__scroll_moved
cdef godot_method_bind *bind_tree__text_editor_enter
cdef godot_method_bind *bind_tree__text_editor_modal_close
cdef godot_method_bind *bind_tree__value_editor_changed
cdef godot_method_bind *bind_tree_are_column_titles_visible
cdef godot_method_bind *bind_tree_clear
cdef godot_method_bind *bind_tree_create_item
cdef godot_method_bind *bind_tree_ensure_cursor_is_visible
cdef godot_method_bind *bind_tree_get_allow_reselect
cdef godot_method_bind *bind_tree_get_allow_rmb_select
cdef godot_method_bind *bind_tree_get_column_at_position
cdef godot_method_bind *bind_tree_get_column_title
cdef godot_method_bind *bind_tree_get_column_width
cdef godot_method_bind *bind_tree_get_columns
cdef godot_method_bind *bind_tree_get_custom_popup_rect
cdef godot_method_bind *bind_tree_get_drop_mode_flags
cdef godot_method_bind *bind_tree_get_drop_section_at_position
cdef godot_method_bind *bind_tree_get_edited
cdef godot_method_bind *bind_tree_get_edited_column
cdef godot_method_bind *bind_tree_get_item_area_rect
cdef godot_method_bind *bind_tree_get_item_at_position
cdef godot_method_bind *bind_tree_get_next_selected
cdef godot_method_bind *bind_tree_get_pressed_button
cdef godot_method_bind *bind_tree_get_root
cdef godot_method_bind *bind_tree_get_scroll
cdef godot_method_bind *bind_tree_get_select_mode
cdef godot_method_bind *bind_tree_get_selected
cdef godot_method_bind *bind_tree_get_selected_column
cdef godot_method_bind *bind_tree_is_folding_hidden
cdef godot_method_bind *bind_tree_is_root_hidden
cdef godot_method_bind *bind_tree_set_allow_reselect
cdef godot_method_bind *bind_tree_set_allow_rmb_select
cdef godot_method_bind *bind_tree_set_column_expand
cdef godot_method_bind *bind_tree_set_column_min_width
cdef godot_method_bind *bind_tree_set_column_title
cdef godot_method_bind *bind_tree_set_column_titles_visible
cdef godot_method_bind *bind_tree_set_columns
cdef godot_method_bind *bind_tree_set_drop_mode_flags
cdef godot_method_bind *bind_tree_set_hide_folding
cdef godot_method_bind *bind_tree_set_hide_root
cdef godot_method_bind *bind_tree_set_select_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_tree__gui_input = api_core.godot_method_bind_get_method('Tree', '_gui_input')
  bind_tree__popup_select = api_core.godot_method_bind_get_method('Tree', '_popup_select')
  bind_tree__range_click_timeout = api_core.godot_method_bind_get_method('Tree', '_range_click_timeout')
  bind_tree__scroll_moved = api_core.godot_method_bind_get_method('Tree', '_scroll_moved')
  bind_tree__text_editor_enter = api_core.godot_method_bind_get_method('Tree', '_text_editor_enter')
  bind_tree__text_editor_modal_close = api_core.godot_method_bind_get_method('Tree', '_text_editor_modal_close')
  bind_tree__value_editor_changed = api_core.godot_method_bind_get_method('Tree', '_value_editor_changed')
  bind_tree_are_column_titles_visible = api_core.godot_method_bind_get_method('Tree', 'are_column_titles_visible')
  bind_tree_clear = api_core.godot_method_bind_get_method('Tree', 'clear')
  bind_tree_create_item = api_core.godot_method_bind_get_method('Tree', 'create_item')
  bind_tree_ensure_cursor_is_visible = api_core.godot_method_bind_get_method('Tree', 'ensure_cursor_is_visible')
  bind_tree_get_allow_reselect = api_core.godot_method_bind_get_method('Tree', 'get_allow_reselect')
  bind_tree_get_allow_rmb_select = api_core.godot_method_bind_get_method('Tree', 'get_allow_rmb_select')
  bind_tree_get_column_at_position = api_core.godot_method_bind_get_method('Tree', 'get_column_at_position')
  bind_tree_get_column_title = api_core.godot_method_bind_get_method('Tree', 'get_column_title')
  bind_tree_get_column_width = api_core.godot_method_bind_get_method('Tree', 'get_column_width')
  bind_tree_get_columns = api_core.godot_method_bind_get_method('Tree', 'get_columns')
  bind_tree_get_custom_popup_rect = api_core.godot_method_bind_get_method('Tree', 'get_custom_popup_rect')
  bind_tree_get_drop_mode_flags = api_core.godot_method_bind_get_method('Tree', 'get_drop_mode_flags')
  bind_tree_get_drop_section_at_position = api_core.godot_method_bind_get_method('Tree', 'get_drop_section_at_position')
  bind_tree_get_edited = api_core.godot_method_bind_get_method('Tree', 'get_edited')
  bind_tree_get_edited_column = api_core.godot_method_bind_get_method('Tree', 'get_edited_column')
  bind_tree_get_item_area_rect = api_core.godot_method_bind_get_method('Tree', 'get_item_area_rect')
  bind_tree_get_item_at_position = api_core.godot_method_bind_get_method('Tree', 'get_item_at_position')
  bind_tree_get_next_selected = api_core.godot_method_bind_get_method('Tree', 'get_next_selected')
  bind_tree_get_pressed_button = api_core.godot_method_bind_get_method('Tree', 'get_pressed_button')
  bind_tree_get_root = api_core.godot_method_bind_get_method('Tree', 'get_root')
  bind_tree_get_scroll = api_core.godot_method_bind_get_method('Tree', 'get_scroll')
  bind_tree_get_select_mode = api_core.godot_method_bind_get_method('Tree', 'get_select_mode')
  bind_tree_get_selected = api_core.godot_method_bind_get_method('Tree', 'get_selected')
  bind_tree_get_selected_column = api_core.godot_method_bind_get_method('Tree', 'get_selected_column')
  bind_tree_is_folding_hidden = api_core.godot_method_bind_get_method('Tree', 'is_folding_hidden')
  bind_tree_is_root_hidden = api_core.godot_method_bind_get_method('Tree', 'is_root_hidden')
  bind_tree_set_allow_reselect = api_core.godot_method_bind_get_method('Tree', 'set_allow_reselect')
  bind_tree_set_allow_rmb_select = api_core.godot_method_bind_get_method('Tree', 'set_allow_rmb_select')
  bind_tree_set_column_expand = api_core.godot_method_bind_get_method('Tree', 'set_column_expand')
  bind_tree_set_column_min_width = api_core.godot_method_bind_get_method('Tree', 'set_column_min_width')
  bind_tree_set_column_title = api_core.godot_method_bind_get_method('Tree', 'set_column_title')
  bind_tree_set_column_titles_visible = api_core.godot_method_bind_get_method('Tree', 'set_column_titles_visible')
  bind_tree_set_columns = api_core.godot_method_bind_get_method('Tree', 'set_columns')
  bind_tree_set_drop_mode_flags = api_core.godot_method_bind_get_method('Tree', 'set_drop_mode_flags')
  bind_tree_set_hide_folding = api_core.godot_method_bind_get_method('Tree', 'set_hide_folding')
  bind_tree_set_hide_root = api_core.godot_method_bind_get_method('Tree', 'set_hide_root')
  bind_tree_set_select_mode = api_core.godot_method_bind_get_method('Tree', 'set_select_mode')

############################Generated class###################################
cdef class Tree(classes.Control.Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Tree")())
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
  def columns(self): 
    return self.get_columns()
  @columns.setter 
  def columns(self,value): 
    self.set_columns(value)
  @property
  def drop_mode_flags(self): 
    return self.get_drop_mode_flags()
  @drop_mode_flags.setter 
  def drop_mode_flags(self,value): 
    self.set_drop_mode_flags(value)
  @property
  def hide_folding(self): 
    return self.get_hide_folding()
  @hide_folding.setter 
  def hide_folding(self,value): 
    self.set_hide_folding(value)
  @property
  def hide_root(self): 
    return self.get_hide_root()
  @hide_root.setter 
  def hide_root(self,value): 
    self.set_hide_root(value)
  @property
  def select_mode(self): 
    return self.get_select_mode()
  @select_mode.setter 
  def select_mode(self,value): 
    self.set_select_mode(value)

##################################Generated Methods#########################################
  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tree__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _popup_select(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_tree__popup_select,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _range_click_timeout(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tree__range_click_timeout,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _scroll_moved(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_tree__scroll_moved,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _text_editor_enter(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_tree__text_editor_enter,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _text_editor_modal_close(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tree__text_editor_modal_close,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _value_editor_changed(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_tree__value_editor_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  are_column_titles_visible(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_are_column_titles_visible,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tree_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  create_item(self,  classes.Object.Object parent,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = parent.godot_owner
    args[1] = &idx
    api_core.godot_method_bind_ptrcall(bind_tree_create_item,self.godot_owner,args,&ret)
    hello('hallo2')
  def  ensure_cursor_is_visible(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tree_ensure_cursor_is_visible,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_allow_reselect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_allow_reselect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_allow_rmb_select(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_allow_rmb_select,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_column_at_position(self,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_tree_get_column_at_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_column_title(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_tree_get_column_title,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_column_width(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_tree_get_column_width,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_columns(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_columns,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_custom_popup_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_custom_popup_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_drop_mode_flags(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_drop_mode_flags,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_drop_section_at_position(self,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_tree_get_drop_section_at_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_edited(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_edited,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_edited_column(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_edited_column,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_area_rect(self,  classes.Object.Object item,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    cdef void *args[2]

    args[0] = item.godot_owner
    args[1] = &column
    api_core.godot_method_bind_ptrcall(bind_tree_get_item_area_rect,self.godot_owner,args,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_item_at_position(self,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_tree_get_item_at_position,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_next_selected(self,  classes.Object.Object from_):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = from_.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tree_get_next_selected,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_pressed_button(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_pressed_button,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_root(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_root,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_scroll(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_scroll,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_select_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Tree_SelectMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_select_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_selected(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_selected,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_selected_column(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_get_selected_column,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_folding_hidden(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_is_folding_hidden,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_root_hidden(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tree_is_root_hidden,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_allow_reselect(self,  bool allow):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &allow
    api_core.godot_method_bind_ptrcall(bind_tree_set_allow_reselect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_allow_rmb_select(self,  bool allow):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &allow
    api_core.godot_method_bind_ptrcall(bind_tree_set_allow_rmb_select,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_column_expand(self,  int column,  bool expand):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &expand
    api_core.godot_method_bind_ptrcall(bind_tree_set_column_expand,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_column_min_width(self,  int column,  int min_width):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &min_width
    api_core.godot_method_bind_ptrcall(bind_tree_set_column_min_width,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_column_title(self,  int column,  String title):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &title._native
    api_core.godot_method_bind_ptrcall(bind_tree_set_column_title,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_column_titles_visible(self,  bool visible):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &visible
    api_core.godot_method_bind_ptrcall(bind_tree_set_column_titles_visible,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_columns(self,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_tree_set_columns,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_drop_mode_flags(self,  int flags):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flags
    api_core.godot_method_bind_ptrcall(bind_tree_set_drop_mode_flags,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hide_folding(self,  bool hide):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &hide
    api_core.godot_method_bind_ptrcall(bind_tree_set_hide_folding,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hide_root(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_tree_set_hide_root,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_select_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_tree_set_select_mode,self.godot_owner,args,NULL)
    hello('hallo2')
