
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
cimport classes.Texture
cimport classes.Control 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_lineedit__editor_settings_changed
cdef godot_method_bind *bind_lineedit__gui_input
cdef godot_method_bind *bind_lineedit__text_changed
cdef godot_method_bind *bind_lineedit__toggle_draw_caret
cdef godot_method_bind *bind_lineedit_append_at_cursor
cdef godot_method_bind *bind_lineedit_clear
cdef godot_method_bind *bind_lineedit_cursor_get_blink_enabled
cdef godot_method_bind *bind_lineedit_cursor_get_blink_speed
cdef godot_method_bind *bind_lineedit_cursor_set_blink_enabled
cdef godot_method_bind *bind_lineedit_cursor_set_blink_speed
cdef godot_method_bind *bind_lineedit_deselect
cdef godot_method_bind *bind_lineedit_get_align
cdef godot_method_bind *bind_lineedit_get_cursor_position
cdef godot_method_bind *bind_lineedit_get_expand_to_text_length
cdef godot_method_bind *bind_lineedit_get_max_length
cdef godot_method_bind *bind_lineedit_get_menu
cdef godot_method_bind *bind_lineedit_get_placeholder
cdef godot_method_bind *bind_lineedit_get_placeholder_alpha
cdef godot_method_bind *bind_lineedit_get_right_icon
cdef godot_method_bind *bind_lineedit_get_secret_character
cdef godot_method_bind *bind_lineedit_get_text
cdef godot_method_bind *bind_lineedit_is_clear_button_enabled
cdef godot_method_bind *bind_lineedit_is_context_menu_enabled
cdef godot_method_bind *bind_lineedit_is_editable
cdef godot_method_bind *bind_lineedit_is_secret
cdef godot_method_bind *bind_lineedit_is_selecting_enabled
cdef godot_method_bind *bind_lineedit_is_shortcut_keys_enabled
cdef godot_method_bind *bind_lineedit_menu_option
cdef godot_method_bind *bind_lineedit_select
cdef godot_method_bind *bind_lineedit_select_all
cdef godot_method_bind *bind_lineedit_set_align
cdef godot_method_bind *bind_lineedit_set_clear_button_enabled
cdef godot_method_bind *bind_lineedit_set_context_menu_enabled
cdef godot_method_bind *bind_lineedit_set_cursor_position
cdef godot_method_bind *bind_lineedit_set_editable
cdef godot_method_bind *bind_lineedit_set_expand_to_text_length
cdef godot_method_bind *bind_lineedit_set_max_length
cdef godot_method_bind *bind_lineedit_set_placeholder
cdef godot_method_bind *bind_lineedit_set_placeholder_alpha
cdef godot_method_bind *bind_lineedit_set_right_icon
cdef godot_method_bind *bind_lineedit_set_secret
cdef godot_method_bind *bind_lineedit_set_secret_character
cdef godot_method_bind *bind_lineedit_set_selecting_enabled
cdef godot_method_bind *bind_lineedit_set_shortcut_keys_enabled
cdef godot_method_bind *bind_lineedit_set_text
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_lineedit__editor_settings_changed = api_core.godot_method_bind_get_method('LineEdit', '_editor_settings_changed')
  bind_lineedit__gui_input = api_core.godot_method_bind_get_method('LineEdit', '_gui_input')
  bind_lineedit__text_changed = api_core.godot_method_bind_get_method('LineEdit', '_text_changed')
  bind_lineedit__toggle_draw_caret = api_core.godot_method_bind_get_method('LineEdit', '_toggle_draw_caret')
  bind_lineedit_append_at_cursor = api_core.godot_method_bind_get_method('LineEdit', 'append_at_cursor')
  bind_lineedit_clear = api_core.godot_method_bind_get_method('LineEdit', 'clear')
  bind_lineedit_cursor_get_blink_enabled = api_core.godot_method_bind_get_method('LineEdit', 'cursor_get_blink_enabled')
  bind_lineedit_cursor_get_blink_speed = api_core.godot_method_bind_get_method('LineEdit', 'cursor_get_blink_speed')
  bind_lineedit_cursor_set_blink_enabled = api_core.godot_method_bind_get_method('LineEdit', 'cursor_set_blink_enabled')
  bind_lineedit_cursor_set_blink_speed = api_core.godot_method_bind_get_method('LineEdit', 'cursor_set_blink_speed')
  bind_lineedit_deselect = api_core.godot_method_bind_get_method('LineEdit', 'deselect')
  bind_lineedit_get_align = api_core.godot_method_bind_get_method('LineEdit', 'get_align')
  bind_lineedit_get_cursor_position = api_core.godot_method_bind_get_method('LineEdit', 'get_cursor_position')
  bind_lineedit_get_expand_to_text_length = api_core.godot_method_bind_get_method('LineEdit', 'get_expand_to_text_length')
  bind_lineedit_get_max_length = api_core.godot_method_bind_get_method('LineEdit', 'get_max_length')
  bind_lineedit_get_menu = api_core.godot_method_bind_get_method('LineEdit', 'get_menu')
  bind_lineedit_get_placeholder = api_core.godot_method_bind_get_method('LineEdit', 'get_placeholder')
  bind_lineedit_get_placeholder_alpha = api_core.godot_method_bind_get_method('LineEdit', 'get_placeholder_alpha')
  bind_lineedit_get_right_icon = api_core.godot_method_bind_get_method('LineEdit', 'get_right_icon')
  bind_lineedit_get_secret_character = api_core.godot_method_bind_get_method('LineEdit', 'get_secret_character')
  bind_lineedit_get_text = api_core.godot_method_bind_get_method('LineEdit', 'get_text')
  bind_lineedit_is_clear_button_enabled = api_core.godot_method_bind_get_method('LineEdit', 'is_clear_button_enabled')
  bind_lineedit_is_context_menu_enabled = api_core.godot_method_bind_get_method('LineEdit', 'is_context_menu_enabled')
  bind_lineedit_is_editable = api_core.godot_method_bind_get_method('LineEdit', 'is_editable')
  bind_lineedit_is_secret = api_core.godot_method_bind_get_method('LineEdit', 'is_secret')
  bind_lineedit_is_selecting_enabled = api_core.godot_method_bind_get_method('LineEdit', 'is_selecting_enabled')
  bind_lineedit_is_shortcut_keys_enabled = api_core.godot_method_bind_get_method('LineEdit', 'is_shortcut_keys_enabled')
  bind_lineedit_menu_option = api_core.godot_method_bind_get_method('LineEdit', 'menu_option')
  bind_lineedit_select = api_core.godot_method_bind_get_method('LineEdit', 'select')
  bind_lineedit_select_all = api_core.godot_method_bind_get_method('LineEdit', 'select_all')
  bind_lineedit_set_align = api_core.godot_method_bind_get_method('LineEdit', 'set_align')
  bind_lineedit_set_clear_button_enabled = api_core.godot_method_bind_get_method('LineEdit', 'set_clear_button_enabled')
  bind_lineedit_set_context_menu_enabled = api_core.godot_method_bind_get_method('LineEdit', 'set_context_menu_enabled')
  bind_lineedit_set_cursor_position = api_core.godot_method_bind_get_method('LineEdit', 'set_cursor_position')
  bind_lineedit_set_editable = api_core.godot_method_bind_get_method('LineEdit', 'set_editable')
  bind_lineedit_set_expand_to_text_length = api_core.godot_method_bind_get_method('LineEdit', 'set_expand_to_text_length')
  bind_lineedit_set_max_length = api_core.godot_method_bind_get_method('LineEdit', 'set_max_length')
  bind_lineedit_set_placeholder = api_core.godot_method_bind_get_method('LineEdit', 'set_placeholder')
  bind_lineedit_set_placeholder_alpha = api_core.godot_method_bind_get_method('LineEdit', 'set_placeholder_alpha')
  bind_lineedit_set_right_icon = api_core.godot_method_bind_get_method('LineEdit', 'set_right_icon')
  bind_lineedit_set_secret = api_core.godot_method_bind_get_method('LineEdit', 'set_secret')
  bind_lineedit_set_secret_character = api_core.godot_method_bind_get_method('LineEdit', 'set_secret_character')
  bind_lineedit_set_selecting_enabled = api_core.godot_method_bind_get_method('LineEdit', 'set_selecting_enabled')
  bind_lineedit_set_shortcut_keys_enabled = api_core.godot_method_bind_get_method('LineEdit', 'set_shortcut_keys_enabled')
  bind_lineedit_set_text = api_core.godot_method_bind_get_method('LineEdit', 'set_text')

############################Generated class###################################
cdef class LineEdit(classes.Control.Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("LineEdit")())
##################################Generated Properties#########################################
  @property
  def align(self): 
    return self.get_align()
  @align.setter 
  def align(self,value): 
    self.set_align(value)
  @property
  def caret_blink(self): 
    return self.get_caret_blink()
  @caret_blink.setter 
  def caret_blink(self,value): 
    self.set_caret_blink(value)
  @property
  def caret_blink_speed(self): 
    return self.get_caret_blink_speed()
  @caret_blink_speed.setter 
  def caret_blink_speed(self,value): 
    self.set_caret_blink_speed(value)
  @property
  def caret_position(self): 
    return self.get_caret_position()
  @caret_position.setter 
  def caret_position(self,value): 
    self.set_caret_position(value)
  @property
  def clear_button_enabled(self): 
    return self.get_clear_button_enabled()
  @clear_button_enabled.setter 
  def clear_button_enabled(self,value): 
    self.set_clear_button_enabled(value)
  @property
  def context_menu_enabled(self): 
    return self.get_context_menu_enabled()
  @context_menu_enabled.setter 
  def context_menu_enabled(self,value): 
    self.set_context_menu_enabled(value)
  @property
  def editable(self): 
    return self.get_editable()
  @editable.setter 
  def editable(self,value): 
    self.set_editable(value)
  @property
  def expand_to_text_length(self): 
    return self.get_expand_to_text_length()
  @expand_to_text_length.setter 
  def expand_to_text_length(self,value): 
    self.set_expand_to_text_length(value)
  @property
  def max_length(self): 
    return self.get_max_length()
  @max_length.setter 
  def max_length(self,value): 
    self.set_max_length(value)
  @property
  def placeholder_alpha(self): 
    return self.get_placeholder_alpha()
  @placeholder_alpha.setter 
  def placeholder_alpha(self,value): 
    self.set_placeholder_alpha(value)
  @property
  def placeholder_text(self): 
    return self.get_placeholder_text()
  @placeholder_text.setter 
  def placeholder_text(self,value): 
    self.set_placeholder_text(value)
  @property
  def right_icon(self): 
    return self.get_right_icon()
  @right_icon.setter 
  def right_icon(self,value): 
    self.set_right_icon(value)
  @property
  def secret(self): 
    return self.get_secret()
  @secret.setter 
  def secret(self,value): 
    self.set_secret(value)
  @property
  def secret_character(self): 
    return self.get_secret_character()
  @secret_character.setter 
  def secret_character(self,value): 
    self.set_secret_character(value)
  @property
  def selecting_enabled(self): 
    return self.get_selecting_enabled()
  @selecting_enabled.setter 
  def selecting_enabled(self,value): 
    self.set_selecting_enabled(value)
  @property
  def shortcut_keys_enabled(self): 
    return self.get_shortcut_keys_enabled()
  @shortcut_keys_enabled.setter 
  def shortcut_keys_enabled(self,value): 
    self.set_shortcut_keys_enabled(value)
  @property
  def text(self): 
    return self.get_text()
  @text.setter 
  def text(self,value): 
    self.set_text(value)

##################################Generated Methods#########################################
  def  _editor_settings_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_lineedit__editor_settings_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_lineedit__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _text_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_lineedit__text_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _toggle_draw_caret(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_lineedit__toggle_draw_caret,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  append_at_cursor(self,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &text._native
    api_core.godot_method_bind_ptrcall(bind_lineedit_append_at_cursor,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_lineedit_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  cursor_get_blink_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_cursor_get_blink_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  cursor_get_blink_speed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_cursor_get_blink_speed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  cursor_set_blink_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_lineedit_cursor_set_blink_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  cursor_set_blink_speed(self,  float blink_speed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &blink_speed
    api_core.godot_method_bind_ptrcall(bind_lineedit_cursor_set_blink_speed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  deselect(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_lineedit_deselect,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_align(self):
    cdef godot_object *_owner = self.godot_owner

    cdef LineEdit_Align* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_get_align,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_cursor_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_get_cursor_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_expand_to_text_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_get_expand_to_text_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_max_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_get_max_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_menu(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_get_menu,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_placeholder(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_get_placeholder,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_placeholder_alpha(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_get_placeholder_alpha,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_right_icon(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_get_right_icon,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_secret_character(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_get_secret_character,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_text(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_get_text,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  is_clear_button_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_is_clear_button_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_context_menu_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_is_context_menu_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_editable(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_is_editable,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_secret(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_is_secret,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_selecting_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_is_selecting_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_shortcut_keys_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineedit_is_shortcut_keys_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  menu_option(self,  int option):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &option
    api_core.godot_method_bind_ptrcall(bind_lineedit_menu_option,self.godot_owner,args,NULL)
    hello('hallo2')
  def  select(self,  int from_,  int to):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &from_
    args[1] = &to
    api_core.godot_method_bind_ptrcall(bind_lineedit_select,self.godot_owner,args,NULL)
    hello('hallo2')
  def  select_all(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_lineedit_select_all,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_align(self,  int align):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &align
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_align,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_clear_button_enabled(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_clear_button_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_context_menu_enabled(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_context_menu_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_cursor_position(self,  int position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_cursor_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_editable(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_editable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_expand_to_text_length(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_expand_to_text_length,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_max_length(self,  int chars):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &chars
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_max_length,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_placeholder(self,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &text._native
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_placeholder,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_placeholder_alpha(self,  float alpha):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &alpha
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_placeholder_alpha,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_right_icon(self,  classes.Texture.Texture icon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = icon.godot_owner
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_right_icon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_secret(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_secret,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_secret_character(self,  String character):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &character._native
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_secret_character,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_selecting_enabled(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_selecting_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shortcut_keys_enabled(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_shortcut_keys_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_text(self,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &text._native
    api_core.godot_method_bind_ptrcall(bind_lineedit_set_text,self.godot_owner,args,NULL)
    hello('hallo2')
