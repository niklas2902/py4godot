from classes.Control cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_richtextlabel__gui_input
cdef godot_method_bind *bind_richtextlabel__scroll_changed
cdef godot_method_bind *bind_richtextlabel_add_image
cdef godot_method_bind *bind_richtextlabel_add_text
cdef godot_method_bind *bind_richtextlabel_append_bbcode
cdef godot_method_bind *bind_richtextlabel_clear
cdef godot_method_bind *bind_richtextlabel_get_bbcode
cdef godot_method_bind *bind_richtextlabel_get_content_height
cdef godot_method_bind *bind_richtextlabel_get_effects
cdef godot_method_bind *bind_richtextlabel_get_line_count
cdef godot_method_bind *bind_richtextlabel_get_percent_visible
cdef godot_method_bind *bind_richtextlabel_get_tab_size
cdef godot_method_bind *bind_richtextlabel_get_text
cdef godot_method_bind *bind_richtextlabel_get_total_character_count
cdef godot_method_bind *bind_richtextlabel_get_v_scroll
cdef godot_method_bind *bind_richtextlabel_get_visible_characters
cdef godot_method_bind *bind_richtextlabel_get_visible_line_count
cdef godot_method_bind *bind_richtextlabel_install_effect
cdef godot_method_bind *bind_richtextlabel_is_meta_underlined
cdef godot_method_bind *bind_richtextlabel_is_overriding_selected_font_color
cdef godot_method_bind *bind_richtextlabel_is_scroll_active
cdef godot_method_bind *bind_richtextlabel_is_scroll_following
cdef godot_method_bind *bind_richtextlabel_is_selection_enabled
cdef godot_method_bind *bind_richtextlabel_is_using_bbcode
cdef godot_method_bind *bind_richtextlabel_newline
cdef godot_method_bind *bind_richtextlabel_parse_bbcode
cdef godot_method_bind *bind_richtextlabel_parse_expressions_for_values
cdef godot_method_bind *bind_richtextlabel_pop
cdef godot_method_bind *bind_richtextlabel_push_align
cdef godot_method_bind *bind_richtextlabel_push_bold
cdef godot_method_bind *bind_richtextlabel_push_bold_italics
cdef godot_method_bind *bind_richtextlabel_push_cell
cdef godot_method_bind *bind_richtextlabel_push_color
cdef godot_method_bind *bind_richtextlabel_push_font
cdef godot_method_bind *bind_richtextlabel_push_indent
cdef godot_method_bind *bind_richtextlabel_push_italics
cdef godot_method_bind *bind_richtextlabel_push_list
cdef godot_method_bind *bind_richtextlabel_push_meta
cdef godot_method_bind *bind_richtextlabel_push_mono
cdef godot_method_bind *bind_richtextlabel_push_normal
cdef godot_method_bind *bind_richtextlabel_push_strikethrough
cdef godot_method_bind *bind_richtextlabel_push_table
cdef godot_method_bind *bind_richtextlabel_push_underline
cdef godot_method_bind *bind_richtextlabel_remove_line
cdef godot_method_bind *bind_richtextlabel_scroll_to_line
cdef godot_method_bind *bind_richtextlabel_set_bbcode
cdef godot_method_bind *bind_richtextlabel_set_effects
cdef godot_method_bind *bind_richtextlabel_set_meta_underline
cdef godot_method_bind *bind_richtextlabel_set_override_selected_font_color
cdef godot_method_bind *bind_richtextlabel_set_percent_visible
cdef godot_method_bind *bind_richtextlabel_set_scroll_active
cdef godot_method_bind *bind_richtextlabel_set_scroll_follow
cdef godot_method_bind *bind_richtextlabel_set_selection_enabled
cdef godot_method_bind *bind_richtextlabel_set_tab_size
cdef godot_method_bind *bind_richtextlabel_set_table_column_expand
cdef godot_method_bind *bind_richtextlabel_set_text
cdef godot_method_bind *bind_richtextlabel_set_use_bbcode
cdef godot_method_bind *bind_richtextlabel_set_visible_characters
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_richtextlabel__gui_input = api_core.godot_method_bind_get_method('RichTextLabel', '_gui_input')
  bind_richtextlabel__scroll_changed = api_core.godot_method_bind_get_method('RichTextLabel', '_scroll_changed')
  bind_richtextlabel_add_image = api_core.godot_method_bind_get_method('RichTextLabel', 'add_image')
  bind_richtextlabel_add_text = api_core.godot_method_bind_get_method('RichTextLabel', 'add_text')
  bind_richtextlabel_append_bbcode = api_core.godot_method_bind_get_method('RichTextLabel', 'append_bbcode')
  bind_richtextlabel_clear = api_core.godot_method_bind_get_method('RichTextLabel', 'clear')
  bind_richtextlabel_get_bbcode = api_core.godot_method_bind_get_method('RichTextLabel', 'get_bbcode')
  bind_richtextlabel_get_content_height = api_core.godot_method_bind_get_method('RichTextLabel', 'get_content_height')
  bind_richtextlabel_get_effects = api_core.godot_method_bind_get_method('RichTextLabel', 'get_effects')
  bind_richtextlabel_get_line_count = api_core.godot_method_bind_get_method('RichTextLabel', 'get_line_count')
  bind_richtextlabel_get_percent_visible = api_core.godot_method_bind_get_method('RichTextLabel', 'get_percent_visible')
  bind_richtextlabel_get_tab_size = api_core.godot_method_bind_get_method('RichTextLabel', 'get_tab_size')
  bind_richtextlabel_get_text = api_core.godot_method_bind_get_method('RichTextLabel', 'get_text')
  bind_richtextlabel_get_total_character_count = api_core.godot_method_bind_get_method('RichTextLabel', 'get_total_character_count')
  bind_richtextlabel_get_v_scroll = api_core.godot_method_bind_get_method('RichTextLabel', 'get_v_scroll')
  bind_richtextlabel_get_visible_characters = api_core.godot_method_bind_get_method('RichTextLabel', 'get_visible_characters')
  bind_richtextlabel_get_visible_line_count = api_core.godot_method_bind_get_method('RichTextLabel', 'get_visible_line_count')
  bind_richtextlabel_install_effect = api_core.godot_method_bind_get_method('RichTextLabel', 'install_effect')
  bind_richtextlabel_is_meta_underlined = api_core.godot_method_bind_get_method('RichTextLabel', 'is_meta_underlined')
  bind_richtextlabel_is_overriding_selected_font_color = api_core.godot_method_bind_get_method('RichTextLabel', 'is_overriding_selected_font_color')
  bind_richtextlabel_is_scroll_active = api_core.godot_method_bind_get_method('RichTextLabel', 'is_scroll_active')
  bind_richtextlabel_is_scroll_following = api_core.godot_method_bind_get_method('RichTextLabel', 'is_scroll_following')
  bind_richtextlabel_is_selection_enabled = api_core.godot_method_bind_get_method('RichTextLabel', 'is_selection_enabled')
  bind_richtextlabel_is_using_bbcode = api_core.godot_method_bind_get_method('RichTextLabel', 'is_using_bbcode')
  bind_richtextlabel_newline = api_core.godot_method_bind_get_method('RichTextLabel', 'newline')
  bind_richtextlabel_parse_bbcode = api_core.godot_method_bind_get_method('RichTextLabel', 'parse_bbcode')
  bind_richtextlabel_parse_expressions_for_values = api_core.godot_method_bind_get_method('RichTextLabel', 'parse_expressions_for_values')
  bind_richtextlabel_pop = api_core.godot_method_bind_get_method('RichTextLabel', 'pop')
  bind_richtextlabel_push_align = api_core.godot_method_bind_get_method('RichTextLabel', 'push_align')
  bind_richtextlabel_push_bold = api_core.godot_method_bind_get_method('RichTextLabel', 'push_bold')
  bind_richtextlabel_push_bold_italics = api_core.godot_method_bind_get_method('RichTextLabel', 'push_bold_italics')
  bind_richtextlabel_push_cell = api_core.godot_method_bind_get_method('RichTextLabel', 'push_cell')
  bind_richtextlabel_push_color = api_core.godot_method_bind_get_method('RichTextLabel', 'push_color')
  bind_richtextlabel_push_font = api_core.godot_method_bind_get_method('RichTextLabel', 'push_font')
  bind_richtextlabel_push_indent = api_core.godot_method_bind_get_method('RichTextLabel', 'push_indent')
  bind_richtextlabel_push_italics = api_core.godot_method_bind_get_method('RichTextLabel', 'push_italics')
  bind_richtextlabel_push_list = api_core.godot_method_bind_get_method('RichTextLabel', 'push_list')
  bind_richtextlabel_push_meta = api_core.godot_method_bind_get_method('RichTextLabel', 'push_meta')
  bind_richtextlabel_push_mono = api_core.godot_method_bind_get_method('RichTextLabel', 'push_mono')
  bind_richtextlabel_push_normal = api_core.godot_method_bind_get_method('RichTextLabel', 'push_normal')
  bind_richtextlabel_push_strikethrough = api_core.godot_method_bind_get_method('RichTextLabel', 'push_strikethrough')
  bind_richtextlabel_push_table = api_core.godot_method_bind_get_method('RichTextLabel', 'push_table')
  bind_richtextlabel_push_underline = api_core.godot_method_bind_get_method('RichTextLabel', 'push_underline')
  bind_richtextlabel_remove_line = api_core.godot_method_bind_get_method('RichTextLabel', 'remove_line')
  bind_richtextlabel_scroll_to_line = api_core.godot_method_bind_get_method('RichTextLabel', 'scroll_to_line')
  bind_richtextlabel_set_bbcode = api_core.godot_method_bind_get_method('RichTextLabel', 'set_bbcode')
  bind_richtextlabel_set_effects = api_core.godot_method_bind_get_method('RichTextLabel', 'set_effects')
  bind_richtextlabel_set_meta_underline = api_core.godot_method_bind_get_method('RichTextLabel', 'set_meta_underline')
  bind_richtextlabel_set_override_selected_font_color = api_core.godot_method_bind_get_method('RichTextLabel', 'set_override_selected_font_color')
  bind_richtextlabel_set_percent_visible = api_core.godot_method_bind_get_method('RichTextLabel', 'set_percent_visible')
  bind_richtextlabel_set_scroll_active = api_core.godot_method_bind_get_method('RichTextLabel', 'set_scroll_active')
  bind_richtextlabel_set_scroll_follow = api_core.godot_method_bind_get_method('RichTextLabel', 'set_scroll_follow')
  bind_richtextlabel_set_selection_enabled = api_core.godot_method_bind_get_method('RichTextLabel', 'set_selection_enabled')
  bind_richtextlabel_set_tab_size = api_core.godot_method_bind_get_method('RichTextLabel', 'set_tab_size')
  bind_richtextlabel_set_table_column_expand = api_core.godot_method_bind_get_method('RichTextLabel', 'set_table_column_expand')
  bind_richtextlabel_set_text = api_core.godot_method_bind_get_method('RichTextLabel', 'set_text')
  bind_richtextlabel_set_use_bbcode = api_core.godot_method_bind_get_method('RichTextLabel', 'set_use_bbcode')
  bind_richtextlabel_set_visible_characters = api_core.godot_method_bind_get_method('RichTextLabel', 'set_visible_characters')

############################Generated class###################################
cdef class RichTextLabel(Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RichTextLabel")())
##################################Generated Properties#########################################
  @property
  def bbcode_enabled(self): 
    return self.get_bbcode_enabled()
  @bbcode_enabled.setter 
  def bbcode_enabled(self,value): 
    self.set_bbcode_enabled(value)
  @property
  def bbcode_text(self): 
    return self.get_bbcode_text()
  @bbcode_text.setter 
  def bbcode_text(self,value): 
    self.set_bbcode_text(value)
  @property
  def custom_effects(self): 
    return self.get_custom_effects()
  @custom_effects.setter 
  def custom_effects(self,value): 
    self.set_custom_effects(value)
  @property
  def meta_underlined(self): 
    return self.get_meta_underlined()
  @meta_underlined.setter 
  def meta_underlined(self,value): 
    self.set_meta_underlined(value)
  @property
  def override_selected_font_color(self): 
    return self.get_override_selected_font_color()
  @override_selected_font_color.setter 
  def override_selected_font_color(self,value): 
    self.set_override_selected_font_color(value)
  @property
  def percent_visible(self): 
    return self.get_percent_visible()
  @percent_visible.setter 
  def percent_visible(self,value): 
    self.set_percent_visible(value)
  @property
  def scroll_active(self): 
    return self.get_scroll_active()
  @scroll_active.setter 
  def scroll_active(self,value): 
    self.set_scroll_active(value)
  @property
  def scroll_following(self): 
    return self.get_scroll_following()
  @scroll_following.setter 
  def scroll_following(self,value): 
    self.set_scroll_following(value)
  @property
  def selection_enabled(self): 
    return self.get_selection_enabled()
  @selection_enabled.setter 
  def selection_enabled(self,value): 
    self.set_selection_enabled(value)
  @property
  def tab_size(self): 
    return self.get_tab_size()
  @tab_size.setter 
  def tab_size(self,value): 
    self.set_tab_size(value)
  @property
  def text(self): 
    return self.get_text()
  @text.setter 
  def text(self,value): 
    self.set_text(value)
  @property
  def visible_characters(self): 
    return self.get_visible_characters()
  @visible_characters.setter 
  def visible_characters(self,value): 
    self.set_visible_characters(value)

##################################Generated Methods#########################################
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel__gui_input,self.godot_owner,[NULL,],NULL)
  def  _scroll_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel__scroll_changed,self.godot_owner,[NULL,],NULL)
  def  add_image(self, imagewidthheight):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_add_image,self.godot_owner,[NULL,],NULL)
  def  add_text(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_add_text,self.godot_owner,[NULL,],NULL)
  def  append_bbcode(self, bbcode):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_append_bbcode,self.godot_owner,[NULL,],&ret)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_clear,self.godot_owner,[NULL,],NULL)
  def  get_bbcode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_get_bbcode,self.godot_owner,[NULL,],&ret)
  def  get_content_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_get_content_height,self.godot_owner,[NULL,],&ret)
  def  get_effects(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_get_effects,self.godot_owner,[NULL,],&ret)
  def  get_line_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_get_line_count,self.godot_owner,[NULL,],&ret)
  def  get_percent_visible(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_get_percent_visible,self.godot_owner,[NULL,],&ret)
  def  get_tab_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_get_tab_size,self.godot_owner,[NULL,],&ret)
  def  get_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_get_text,self.godot_owner,[NULL,],&ret)
  def  get_total_character_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_get_total_character_count,self.godot_owner,[NULL,],&ret)
  def  get_v_scroll(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VScrollBar ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_get_v_scroll,self.godot_owner,[NULL,],&ret)
  def  get_visible_characters(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_get_visible_characters,self.godot_owner,[NULL,],&ret)
  def  get_visible_line_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_get_visible_line_count,self.godot_owner,[NULL,],&ret)
  def  install_effect(self, effect):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_install_effect,self.godot_owner,[NULL,],NULL)
  def  is_meta_underlined(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_is_meta_underlined,self.godot_owner,[NULL,],&ret)
  def  is_overriding_selected_font_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_is_overriding_selected_font_color,self.godot_owner,[NULL,],&ret)
  def  is_scroll_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_is_scroll_active,self.godot_owner,[NULL,],&ret)
  def  is_scroll_following(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_is_scroll_following,self.godot_owner,[NULL,],&ret)
  def  is_selection_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_is_selection_enabled,self.godot_owner,[NULL,],&ret)
  def  is_using_bbcode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_is_using_bbcode,self.godot_owner,[NULL,],&ret)
  def  newline(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_newline,self.godot_owner,[NULL,],NULL)
  def  parse_bbcode(self, bbcode):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_parse_bbcode,self.godot_owner,[NULL,],&ret)
  def  parse_expressions_for_values(self, expressions):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_parse_expressions_for_values,self.godot_owner,[NULL,],&ret)
  def  pop(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_pop,self.godot_owner,[NULL,],NULL)
  def  push_align(self, align):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_align,self.godot_owner,[NULL,],NULL)
  def  push_bold(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_bold,self.godot_owner,[NULL,],NULL)
  def  push_bold_italics(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_bold_italics,self.godot_owner,[NULL,],NULL)
  def  push_cell(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_cell,self.godot_owner,[NULL,],NULL)
  def  push_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_color,self.godot_owner,[NULL,],NULL)
  def  push_font(self, font):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_font,self.godot_owner,[NULL,],NULL)
  def  push_indent(self, level):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_indent,self.godot_owner,[NULL,],NULL)
  def  push_italics(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_italics,self.godot_owner,[NULL,],NULL)
  def  push_list(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_list,self.godot_owner,[NULL,],NULL)
  def  push_meta(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_meta,self.godot_owner,[NULL,],NULL)
  def  push_mono(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_mono,self.godot_owner,[NULL,],NULL)
  def  push_normal(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_normal,self.godot_owner,[NULL,],NULL)
  def  push_strikethrough(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_strikethrough,self.godot_owner,[NULL,],NULL)
  def  push_table(self, columns):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_table,self.godot_owner,[NULL,],NULL)
  def  push_underline(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_push_underline,self.godot_owner,[NULL,],NULL)
  def  remove_line(self, line):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_remove_line,self.godot_owner,[NULL,],&ret)
  def  scroll_to_line(self, line):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_scroll_to_line,self.godot_owner,[NULL,],NULL)
  def  set_bbcode(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_bbcode,self.godot_owner,[NULL,],NULL)
  def  set_effects(self, effects):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_effects,self.godot_owner,[NULL,],NULL)
  def  set_meta_underline(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_meta_underline,self.godot_owner,[NULL,],NULL)
  def  set_override_selected_font_color(self, override):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_override_selected_font_color,self.godot_owner,[NULL,],NULL)
  def  set_percent_visible(self, percent_visible):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_percent_visible,self.godot_owner,[NULL,],NULL)
  def  set_scroll_active(self, active):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_scroll_active,self.godot_owner,[NULL,],NULL)
  def  set_scroll_follow(self, follow):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_scroll_follow,self.godot_owner,[NULL,],NULL)
  def  set_selection_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_selection_enabled,self.godot_owner,[NULL,],NULL)
  def  set_tab_size(self, spaces):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_tab_size,self.godot_owner,[NULL,],NULL)
  def  set_table_column_expand(self, columnexpandratio):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_table_column_expand,self.godot_owner,[NULL,],NULL)
  def  set_text(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_text,self.godot_owner,[NULL,],NULL)
  def  set_use_bbcode(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_use_bbcode,self.godot_owner,[NULL,],NULL)
  def  set_visible_characters(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_richtextlabel_set_visible_characters,self.godot_owner,[NULL,],NULL)
