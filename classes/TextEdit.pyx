from classes.Control cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_textedit__click_selection_held
cdef godot_method_bind *bind_textedit__cursor_changed_emit
cdef godot_method_bind *bind_textedit__gui_input
cdef godot_method_bind *bind_textedit__push_current_op
cdef godot_method_bind *bind_textedit__scroll_moved
cdef godot_method_bind *bind_textedit__text_changed_emit
cdef godot_method_bind *bind_textedit__toggle_draw_caret
cdef godot_method_bind *bind_textedit__update_wrap_at
cdef godot_method_bind *bind_textedit__v_scroll_input
cdef godot_method_bind *bind_textedit_add_color_region
cdef godot_method_bind *bind_textedit_add_keyword_color
cdef godot_method_bind *bind_textedit_can_fold
cdef godot_method_bind *bind_textedit_center_viewport_to_cursor
cdef godot_method_bind *bind_textedit_clear_colors
cdef godot_method_bind *bind_textedit_clear_undo_history
cdef godot_method_bind *bind_textedit_copy
cdef godot_method_bind *bind_textedit_cursor_get_blink_enabled
cdef godot_method_bind *bind_textedit_cursor_get_blink_speed
cdef godot_method_bind *bind_textedit_cursor_get_column
cdef godot_method_bind *bind_textedit_cursor_get_line
cdef godot_method_bind *bind_textedit_cursor_is_block_mode
cdef godot_method_bind *bind_textedit_cursor_set_blink_enabled
cdef godot_method_bind *bind_textedit_cursor_set_blink_speed
cdef godot_method_bind *bind_textedit_cursor_set_block_mode
cdef godot_method_bind *bind_textedit_cursor_set_column
cdef godot_method_bind *bind_textedit_cursor_set_line
cdef godot_method_bind *bind_textedit_cut
cdef godot_method_bind *bind_textedit_deselect
cdef godot_method_bind *bind_textedit_draw_minimap
cdef godot_method_bind *bind_textedit_fold_all_lines
cdef godot_method_bind *bind_textedit_fold_line
cdef godot_method_bind *bind_textedit_get_breakpoints
cdef godot_method_bind *bind_textedit_get_h_scroll
cdef godot_method_bind *bind_textedit_get_keyword_color
cdef godot_method_bind *bind_textedit_get_line
cdef godot_method_bind *bind_textedit_get_line_count
cdef godot_method_bind *bind_textedit_get_menu
cdef godot_method_bind *bind_textedit_get_minimap_width
cdef godot_method_bind *bind_textedit_get_selection_from_column
cdef godot_method_bind *bind_textedit_get_selection_from_line
cdef godot_method_bind *bind_textedit_get_selection_text
cdef godot_method_bind *bind_textedit_get_selection_to_column
cdef godot_method_bind *bind_textedit_get_selection_to_line
cdef godot_method_bind *bind_textedit_get_text
cdef godot_method_bind *bind_textedit_get_v_scroll
cdef godot_method_bind *bind_textedit_get_v_scroll_speed
cdef godot_method_bind *bind_textedit_get_word_under_cursor
cdef godot_method_bind *bind_textedit_has_keyword_color
cdef godot_method_bind *bind_textedit_insert_text_at_cursor
cdef godot_method_bind *bind_textedit_is_breakpoint_gutter_enabled
cdef godot_method_bind *bind_textedit_is_context_menu_enabled
cdef godot_method_bind *bind_textedit_is_drawing_fold_gutter
cdef godot_method_bind *bind_textedit_is_drawing_minimap
cdef godot_method_bind *bind_textedit_is_drawing_spaces
cdef godot_method_bind *bind_textedit_is_drawing_tabs
cdef godot_method_bind *bind_textedit_is_folded
cdef godot_method_bind *bind_textedit_is_hiding_enabled
cdef godot_method_bind *bind_textedit_is_highlight_all_occurrences_enabled
cdef godot_method_bind *bind_textedit_is_highlight_current_line_enabled
cdef godot_method_bind *bind_textedit_is_line_hidden
cdef godot_method_bind *bind_textedit_is_overriding_selected_font_color
cdef godot_method_bind *bind_textedit_is_readonly
cdef godot_method_bind *bind_textedit_is_right_click_moving_caret
cdef godot_method_bind *bind_textedit_is_selecting_enabled
cdef godot_method_bind *bind_textedit_is_selection_active
cdef godot_method_bind *bind_textedit_is_shortcut_keys_enabled
cdef godot_method_bind *bind_textedit_is_show_line_numbers_enabled
cdef godot_method_bind *bind_textedit_is_smooth_scroll_enabled
cdef godot_method_bind *bind_textedit_is_syntax_coloring_enabled
cdef godot_method_bind *bind_textedit_is_wrap_enabled
cdef godot_method_bind *bind_textedit_menu_option
cdef godot_method_bind *bind_textedit_paste
cdef godot_method_bind *bind_textedit_redo
cdef godot_method_bind *bind_textedit_remove_breakpoints
cdef godot_method_bind *bind_textedit_search
cdef godot_method_bind *bind_textedit_select
cdef godot_method_bind *bind_textedit_select_all
cdef godot_method_bind *bind_textedit_set_breakpoint_gutter_enabled
cdef godot_method_bind *bind_textedit_set_context_menu_enabled
cdef godot_method_bind *bind_textedit_set_draw_fold_gutter
cdef godot_method_bind *bind_textedit_set_draw_spaces
cdef godot_method_bind *bind_textedit_set_draw_tabs
cdef godot_method_bind *bind_textedit_set_h_scroll
cdef godot_method_bind *bind_textedit_set_hiding_enabled
cdef godot_method_bind *bind_textedit_set_highlight_all_occurrences
cdef godot_method_bind *bind_textedit_set_highlight_current_line
cdef godot_method_bind *bind_textedit_set_line_as_hidden
cdef godot_method_bind *bind_textedit_set_minimap_width
cdef godot_method_bind *bind_textedit_set_override_selected_font_color
cdef godot_method_bind *bind_textedit_set_readonly
cdef godot_method_bind *bind_textedit_set_right_click_moves_caret
cdef godot_method_bind *bind_textedit_set_selecting_enabled
cdef godot_method_bind *bind_textedit_set_shortcut_keys_enabled
cdef godot_method_bind *bind_textedit_set_show_line_numbers
cdef godot_method_bind *bind_textedit_set_smooth_scroll_enable
cdef godot_method_bind *bind_textedit_set_syntax_coloring
cdef godot_method_bind *bind_textedit_set_text
cdef godot_method_bind *bind_textedit_set_v_scroll
cdef godot_method_bind *bind_textedit_set_v_scroll_speed
cdef godot_method_bind *bind_textedit_set_wrap_enabled
cdef godot_method_bind *bind_textedit_toggle_fold_line
cdef godot_method_bind *bind_textedit_undo
cdef godot_method_bind *bind_textedit_unfold_line
cdef godot_method_bind *bind_textedit_unhide_all_lines
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_textedit__click_selection_held = api_core.godot_method_bind_get_method('TextEdit', '_click_selection_held')
  bind_textedit__cursor_changed_emit = api_core.godot_method_bind_get_method('TextEdit', '_cursor_changed_emit')
  bind_textedit__gui_input = api_core.godot_method_bind_get_method('TextEdit', '_gui_input')
  bind_textedit__push_current_op = api_core.godot_method_bind_get_method('TextEdit', '_push_current_op')
  bind_textedit__scroll_moved = api_core.godot_method_bind_get_method('TextEdit', '_scroll_moved')
  bind_textedit__text_changed_emit = api_core.godot_method_bind_get_method('TextEdit', '_text_changed_emit')
  bind_textedit__toggle_draw_caret = api_core.godot_method_bind_get_method('TextEdit', '_toggle_draw_caret')
  bind_textedit__update_wrap_at = api_core.godot_method_bind_get_method('TextEdit', '_update_wrap_at')
  bind_textedit__v_scroll_input = api_core.godot_method_bind_get_method('TextEdit', '_v_scroll_input')
  bind_textedit_add_color_region = api_core.godot_method_bind_get_method('TextEdit', 'add_color_region')
  bind_textedit_add_keyword_color = api_core.godot_method_bind_get_method('TextEdit', 'add_keyword_color')
  bind_textedit_can_fold = api_core.godot_method_bind_get_method('TextEdit', 'can_fold')
  bind_textedit_center_viewport_to_cursor = api_core.godot_method_bind_get_method('TextEdit', 'center_viewport_to_cursor')
  bind_textedit_clear_colors = api_core.godot_method_bind_get_method('TextEdit', 'clear_colors')
  bind_textedit_clear_undo_history = api_core.godot_method_bind_get_method('TextEdit', 'clear_undo_history')
  bind_textedit_copy = api_core.godot_method_bind_get_method('TextEdit', 'copy')
  bind_textedit_cursor_get_blink_enabled = api_core.godot_method_bind_get_method('TextEdit', 'cursor_get_blink_enabled')
  bind_textedit_cursor_get_blink_speed = api_core.godot_method_bind_get_method('TextEdit', 'cursor_get_blink_speed')
  bind_textedit_cursor_get_column = api_core.godot_method_bind_get_method('TextEdit', 'cursor_get_column')
  bind_textedit_cursor_get_line = api_core.godot_method_bind_get_method('TextEdit', 'cursor_get_line')
  bind_textedit_cursor_is_block_mode = api_core.godot_method_bind_get_method('TextEdit', 'cursor_is_block_mode')
  bind_textedit_cursor_set_blink_enabled = api_core.godot_method_bind_get_method('TextEdit', 'cursor_set_blink_enabled')
  bind_textedit_cursor_set_blink_speed = api_core.godot_method_bind_get_method('TextEdit', 'cursor_set_blink_speed')
  bind_textedit_cursor_set_block_mode = api_core.godot_method_bind_get_method('TextEdit', 'cursor_set_block_mode')
  bind_textedit_cursor_set_column = api_core.godot_method_bind_get_method('TextEdit', 'cursor_set_column')
  bind_textedit_cursor_set_line = api_core.godot_method_bind_get_method('TextEdit', 'cursor_set_line')
  bind_textedit_cut = api_core.godot_method_bind_get_method('TextEdit', 'cut')
  bind_textedit_deselect = api_core.godot_method_bind_get_method('TextEdit', 'deselect')
  bind_textedit_draw_minimap = api_core.godot_method_bind_get_method('TextEdit', 'draw_minimap')
  bind_textedit_fold_all_lines = api_core.godot_method_bind_get_method('TextEdit', 'fold_all_lines')
  bind_textedit_fold_line = api_core.godot_method_bind_get_method('TextEdit', 'fold_line')
  bind_textedit_get_breakpoints = api_core.godot_method_bind_get_method('TextEdit', 'get_breakpoints')
  bind_textedit_get_h_scroll = api_core.godot_method_bind_get_method('TextEdit', 'get_h_scroll')
  bind_textedit_get_keyword_color = api_core.godot_method_bind_get_method('TextEdit', 'get_keyword_color')
  bind_textedit_get_line = api_core.godot_method_bind_get_method('TextEdit', 'get_line')
  bind_textedit_get_line_count = api_core.godot_method_bind_get_method('TextEdit', 'get_line_count')
  bind_textedit_get_menu = api_core.godot_method_bind_get_method('TextEdit', 'get_menu')
  bind_textedit_get_minimap_width = api_core.godot_method_bind_get_method('TextEdit', 'get_minimap_width')
  bind_textedit_get_selection_from_column = api_core.godot_method_bind_get_method('TextEdit', 'get_selection_from_column')
  bind_textedit_get_selection_from_line = api_core.godot_method_bind_get_method('TextEdit', 'get_selection_from_line')
  bind_textedit_get_selection_text = api_core.godot_method_bind_get_method('TextEdit', 'get_selection_text')
  bind_textedit_get_selection_to_column = api_core.godot_method_bind_get_method('TextEdit', 'get_selection_to_column')
  bind_textedit_get_selection_to_line = api_core.godot_method_bind_get_method('TextEdit', 'get_selection_to_line')
  bind_textedit_get_text = api_core.godot_method_bind_get_method('TextEdit', 'get_text')
  bind_textedit_get_v_scroll = api_core.godot_method_bind_get_method('TextEdit', 'get_v_scroll')
  bind_textedit_get_v_scroll_speed = api_core.godot_method_bind_get_method('TextEdit', 'get_v_scroll_speed')
  bind_textedit_get_word_under_cursor = api_core.godot_method_bind_get_method('TextEdit', 'get_word_under_cursor')
  bind_textedit_has_keyword_color = api_core.godot_method_bind_get_method('TextEdit', 'has_keyword_color')
  bind_textedit_insert_text_at_cursor = api_core.godot_method_bind_get_method('TextEdit', 'insert_text_at_cursor')
  bind_textedit_is_breakpoint_gutter_enabled = api_core.godot_method_bind_get_method('TextEdit', 'is_breakpoint_gutter_enabled')
  bind_textedit_is_context_menu_enabled = api_core.godot_method_bind_get_method('TextEdit', 'is_context_menu_enabled')
  bind_textedit_is_drawing_fold_gutter = api_core.godot_method_bind_get_method('TextEdit', 'is_drawing_fold_gutter')
  bind_textedit_is_drawing_minimap = api_core.godot_method_bind_get_method('TextEdit', 'is_drawing_minimap')
  bind_textedit_is_drawing_spaces = api_core.godot_method_bind_get_method('TextEdit', 'is_drawing_spaces')
  bind_textedit_is_drawing_tabs = api_core.godot_method_bind_get_method('TextEdit', 'is_drawing_tabs')
  bind_textedit_is_folded = api_core.godot_method_bind_get_method('TextEdit', 'is_folded')
  bind_textedit_is_hiding_enabled = api_core.godot_method_bind_get_method('TextEdit', 'is_hiding_enabled')
  bind_textedit_is_highlight_all_occurrences_enabled = api_core.godot_method_bind_get_method('TextEdit', 'is_highlight_all_occurrences_enabled')
  bind_textedit_is_highlight_current_line_enabled = api_core.godot_method_bind_get_method('TextEdit', 'is_highlight_current_line_enabled')
  bind_textedit_is_line_hidden = api_core.godot_method_bind_get_method('TextEdit', 'is_line_hidden')
  bind_textedit_is_overriding_selected_font_color = api_core.godot_method_bind_get_method('TextEdit', 'is_overriding_selected_font_color')
  bind_textedit_is_readonly = api_core.godot_method_bind_get_method('TextEdit', 'is_readonly')
  bind_textedit_is_right_click_moving_caret = api_core.godot_method_bind_get_method('TextEdit', 'is_right_click_moving_caret')
  bind_textedit_is_selecting_enabled = api_core.godot_method_bind_get_method('TextEdit', 'is_selecting_enabled')
  bind_textedit_is_selection_active = api_core.godot_method_bind_get_method('TextEdit', 'is_selection_active')
  bind_textedit_is_shortcut_keys_enabled = api_core.godot_method_bind_get_method('TextEdit', 'is_shortcut_keys_enabled')
  bind_textedit_is_show_line_numbers_enabled = api_core.godot_method_bind_get_method('TextEdit', 'is_show_line_numbers_enabled')
  bind_textedit_is_smooth_scroll_enabled = api_core.godot_method_bind_get_method('TextEdit', 'is_smooth_scroll_enabled')
  bind_textedit_is_syntax_coloring_enabled = api_core.godot_method_bind_get_method('TextEdit', 'is_syntax_coloring_enabled')
  bind_textedit_is_wrap_enabled = api_core.godot_method_bind_get_method('TextEdit', 'is_wrap_enabled')
  bind_textedit_menu_option = api_core.godot_method_bind_get_method('TextEdit', 'menu_option')
  bind_textedit_paste = api_core.godot_method_bind_get_method('TextEdit', 'paste')
  bind_textedit_redo = api_core.godot_method_bind_get_method('TextEdit', 'redo')
  bind_textedit_remove_breakpoints = api_core.godot_method_bind_get_method('TextEdit', 'remove_breakpoints')
  bind_textedit_search = api_core.godot_method_bind_get_method('TextEdit', 'search')
  bind_textedit_select = api_core.godot_method_bind_get_method('TextEdit', 'select')
  bind_textedit_select_all = api_core.godot_method_bind_get_method('TextEdit', 'select_all')
  bind_textedit_set_breakpoint_gutter_enabled = api_core.godot_method_bind_get_method('TextEdit', 'set_breakpoint_gutter_enabled')
  bind_textedit_set_context_menu_enabled = api_core.godot_method_bind_get_method('TextEdit', 'set_context_menu_enabled')
  bind_textedit_set_draw_fold_gutter = api_core.godot_method_bind_get_method('TextEdit', 'set_draw_fold_gutter')
  bind_textedit_set_draw_spaces = api_core.godot_method_bind_get_method('TextEdit', 'set_draw_spaces')
  bind_textedit_set_draw_tabs = api_core.godot_method_bind_get_method('TextEdit', 'set_draw_tabs')
  bind_textedit_set_h_scroll = api_core.godot_method_bind_get_method('TextEdit', 'set_h_scroll')
  bind_textedit_set_hiding_enabled = api_core.godot_method_bind_get_method('TextEdit', 'set_hiding_enabled')
  bind_textedit_set_highlight_all_occurrences = api_core.godot_method_bind_get_method('TextEdit', 'set_highlight_all_occurrences')
  bind_textedit_set_highlight_current_line = api_core.godot_method_bind_get_method('TextEdit', 'set_highlight_current_line')
  bind_textedit_set_line_as_hidden = api_core.godot_method_bind_get_method('TextEdit', 'set_line_as_hidden')
  bind_textedit_set_minimap_width = api_core.godot_method_bind_get_method('TextEdit', 'set_minimap_width')
  bind_textedit_set_override_selected_font_color = api_core.godot_method_bind_get_method('TextEdit', 'set_override_selected_font_color')
  bind_textedit_set_readonly = api_core.godot_method_bind_get_method('TextEdit', 'set_readonly')
  bind_textedit_set_right_click_moves_caret = api_core.godot_method_bind_get_method('TextEdit', 'set_right_click_moves_caret')
  bind_textedit_set_selecting_enabled = api_core.godot_method_bind_get_method('TextEdit', 'set_selecting_enabled')
  bind_textedit_set_shortcut_keys_enabled = api_core.godot_method_bind_get_method('TextEdit', 'set_shortcut_keys_enabled')
  bind_textedit_set_show_line_numbers = api_core.godot_method_bind_get_method('TextEdit', 'set_show_line_numbers')
  bind_textedit_set_smooth_scroll_enable = api_core.godot_method_bind_get_method('TextEdit', 'set_smooth_scroll_enable')
  bind_textedit_set_syntax_coloring = api_core.godot_method_bind_get_method('TextEdit', 'set_syntax_coloring')
  bind_textedit_set_text = api_core.godot_method_bind_get_method('TextEdit', 'set_text')
  bind_textedit_set_v_scroll = api_core.godot_method_bind_get_method('TextEdit', 'set_v_scroll')
  bind_textedit_set_v_scroll_speed = api_core.godot_method_bind_get_method('TextEdit', 'set_v_scroll_speed')
  bind_textedit_set_wrap_enabled = api_core.godot_method_bind_get_method('TextEdit', 'set_wrap_enabled')
  bind_textedit_toggle_fold_line = api_core.godot_method_bind_get_method('TextEdit', 'toggle_fold_line')
  bind_textedit_undo = api_core.godot_method_bind_get_method('TextEdit', 'undo')
  bind_textedit_unfold_line = api_core.godot_method_bind_get_method('TextEdit', 'unfold_line')
  bind_textedit_unhide_all_lines = api_core.godot_method_bind_get_method('TextEdit', 'unhide_all_lines')

############################Generated class###################################
cdef class TextEdit(Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TextEdit")())
##################################Generated Properties#########################################
  @property
  def breakpoint_gutter(self): 
    return self.get_breakpoint_gutter()
  @breakpoint_gutter.setter 
  def breakpoint_gutter(self,value): 
    self.set_breakpoint_gutter(value)
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
  def caret_block_mode(self): 
    return self.get_caret_block_mode()
  @caret_block_mode.setter 
  def caret_block_mode(self,value): 
    self.set_caret_block_mode(value)
  @property
  def caret_moving_by_right_click(self): 
    return self.get_caret_moving_by_right_click()
  @caret_moving_by_right_click.setter 
  def caret_moving_by_right_click(self,value): 
    self.set_caret_moving_by_right_click(value)
  @property
  def context_menu_enabled(self): 
    return self.get_context_menu_enabled()
  @context_menu_enabled.setter 
  def context_menu_enabled(self,value): 
    self.set_context_menu_enabled(value)
  @property
  def draw_spaces(self): 
    return self.get_draw_spaces()
  @draw_spaces.setter 
  def draw_spaces(self,value): 
    self.set_draw_spaces(value)
  @property
  def draw_tabs(self): 
    return self.get_draw_tabs()
  @draw_tabs.setter 
  def draw_tabs(self,value): 
    self.set_draw_tabs(value)
  @property
  def fold_gutter(self): 
    return self.get_fold_gutter()
  @fold_gutter.setter 
  def fold_gutter(self,value): 
    self.set_fold_gutter(value)
  @property
  def hiding_enabled(self): 
    return self.get_hiding_enabled()
  @hiding_enabled.setter 
  def hiding_enabled(self,value): 
    self.set_hiding_enabled(value)
  @property
  def highlight_all_occurrences(self): 
    return self.get_highlight_all_occurrences()
  @highlight_all_occurrences.setter 
  def highlight_all_occurrences(self,value): 
    self.set_highlight_all_occurrences(value)
  @property
  def highlight_current_line(self): 
    return self.get_highlight_current_line()
  @highlight_current_line.setter 
  def highlight_current_line(self,value): 
    self.set_highlight_current_line(value)
  @property
  def minimap_draw(self): 
    return self.get_minimap_draw()
  @minimap_draw.setter 
  def minimap_draw(self,value): 
    self.set_minimap_draw(value)
  @property
  def minimap_width(self): 
    return self.get_minimap_width()
  @minimap_width.setter 
  def minimap_width(self,value): 
    self.set_minimap_width(value)
  @property
  def override_selected_font_color(self): 
    return self.get_override_selected_font_color()
  @override_selected_font_color.setter 
  def override_selected_font_color(self,value): 
    self.set_override_selected_font_color(value)
  @property
  def readonly(self): 
    return self.get_readonly()
  @readonly.setter 
  def readonly(self,value): 
    self.set_readonly(value)
  @property
  def scroll_horizontal(self): 
    return self.get_scroll_horizontal()
  @scroll_horizontal.setter 
  def scroll_horizontal(self,value): 
    self.set_scroll_horizontal(value)
  @property
  def scroll_vertical(self): 
    return self.get_scroll_vertical()
  @scroll_vertical.setter 
  def scroll_vertical(self,value): 
    self.set_scroll_vertical(value)
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
  def show_line_numbers(self): 
    return self.get_show_line_numbers()
  @show_line_numbers.setter 
  def show_line_numbers(self,value): 
    self.set_show_line_numbers(value)
  @property
  def smooth_scrolling(self): 
    return self.get_smooth_scrolling()
  @smooth_scrolling.setter 
  def smooth_scrolling(self,value): 
    self.set_smooth_scrolling(value)
  @property
  def syntax_highlighting(self): 
    return self.get_syntax_highlighting()
  @syntax_highlighting.setter 
  def syntax_highlighting(self,value): 
    self.set_syntax_highlighting(value)
  @property
  def text(self): 
    return self.get_text()
  @text.setter 
  def text(self,value): 
    self.set_text(value)
  @property
  def v_scroll_speed(self): 
    return self.get_v_scroll_speed()
  @v_scroll_speed.setter 
  def v_scroll_speed(self,value): 
    self.set_v_scroll_speed(value)
  @property
  def wrap_enabled(self): 
    return self.get_wrap_enabled()
  @wrap_enabled.setter 
  def wrap_enabled(self,value): 
    self.set_wrap_enabled(value)

##################################Generated Methods#########################################
  def  _click_selection_held(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit__click_selection_held,self.godot_owner,[NULL,],NULL)
  def  _cursor_changed_emit(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit__cursor_changed_emit,self.godot_owner,[NULL,],NULL)
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit__gui_input,self.godot_owner,[NULL,],NULL)
  def  _push_current_op(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit__push_current_op,self.godot_owner,[NULL,],NULL)
  def  _scroll_moved(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit__scroll_moved,self.godot_owner,[NULL,],NULL)
  def  _text_changed_emit(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit__text_changed_emit,self.godot_owner,[NULL,],NULL)
  def  _toggle_draw_caret(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit__toggle_draw_caret,self.godot_owner,[NULL,],NULL)
  def  _update_wrap_at(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit__update_wrap_at,self.godot_owner,[NULL,],NULL)
  def  _v_scroll_input(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit__v_scroll_input,self.godot_owner,[NULL,],NULL)
  def  add_color_region(self, begin_keyend_keycolorline_only):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_add_color_region,self.godot_owner,[NULL,],NULL)
  def  add_keyword_color(self, keywordcolor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_add_keyword_color,self.godot_owner,[NULL,],NULL)
  def  can_fold(self, line):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_can_fold,self.godot_owner,[NULL,],&ret)
  def  center_viewport_to_cursor(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_center_viewport_to_cursor,self.godot_owner,[NULL,],NULL)
  def  clear_colors(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_clear_colors,self.godot_owner,[NULL,],NULL)
  def  clear_undo_history(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_clear_undo_history,self.godot_owner,[NULL,],NULL)
  def  copy(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_copy,self.godot_owner,[NULL,],NULL)
  def  cursor_get_blink_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_cursor_get_blink_enabled,self.godot_owner,[NULL,],&ret)
  def  cursor_get_blink_speed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_textedit_cursor_get_blink_speed,self.godot_owner,[NULL,],&ret)
  def  cursor_get_column(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_textedit_cursor_get_column,self.godot_owner,[NULL,],&ret)
  def  cursor_get_line(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_textedit_cursor_get_line,self.godot_owner,[NULL,],&ret)
  def  cursor_is_block_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_cursor_is_block_mode,self.godot_owner,[NULL,],&ret)
  def  cursor_set_blink_enabled(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_cursor_set_blink_enabled,self.godot_owner,[NULL,],NULL)
  def  cursor_set_blink_speed(self, blink_speed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_cursor_set_blink_speed,self.godot_owner,[NULL,],NULL)
  def  cursor_set_block_mode(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_cursor_set_block_mode,self.godot_owner,[NULL,],NULL)
  def  cursor_set_column(self, columnadjust_viewport):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_cursor_set_column,self.godot_owner,[NULL,],NULL)
  def  cursor_set_line(self, lineadjust_viewportcan_be_hiddenwrap_index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_cursor_set_line,self.godot_owner,[NULL,],NULL)
  def  cut(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_cut,self.godot_owner,[NULL,],NULL)
  def  deselect(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_deselect,self.godot_owner,[NULL,],NULL)
  def  draw_minimap(self, draw):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_draw_minimap,self.godot_owner,[NULL,],NULL)
  def  fold_all_lines(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_fold_all_lines,self.godot_owner,[NULL,],NULL)
  def  fold_line(self, line):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_fold_line,self.godot_owner,[NULL,],NULL)
  def  get_breakpoints(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_breakpoints,self.godot_owner,[NULL,],&ret)
  def  get_h_scroll(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_h_scroll,self.godot_owner,[NULL,],&ret)
  def  get_keyword_color(self, keyword):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_keyword_color,self.godot_owner,[NULL,],&ret)
  def  get_line(self, line):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_line,self.godot_owner,[NULL,],&ret)
  def  get_line_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_line_count,self.godot_owner,[NULL,],&ret)
  def  get_menu(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PopupMenu ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_menu,self.godot_owner,[NULL,],&ret)
  def  get_minimap_width(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_minimap_width,self.godot_owner,[NULL,],&ret)
  def  get_selection_from_column(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_selection_from_column,self.godot_owner,[NULL,],&ret)
  def  get_selection_from_line(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_selection_from_line,self.godot_owner,[NULL,],&ret)
  def  get_selection_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_selection_text,self.godot_owner,[NULL,],&ret)
  def  get_selection_to_column(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_selection_to_column,self.godot_owner,[NULL,],&ret)
  def  get_selection_to_line(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_selection_to_line,self.godot_owner,[NULL,],&ret)
  def  get_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_text,self.godot_owner,[NULL,],&ret)
  def  get_v_scroll(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_v_scroll,self.godot_owner,[NULL,],&ret)
  def  get_v_scroll_speed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_v_scroll_speed,self.godot_owner,[NULL,],&ret)
  def  get_word_under_cursor(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_textedit_get_word_under_cursor,self.godot_owner,[NULL,],&ret)
  def  has_keyword_color(self, keyword):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_has_keyword_color,self.godot_owner,[NULL,],&ret)
  def  insert_text_at_cursor(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_insert_text_at_cursor,self.godot_owner,[NULL,],NULL)
  def  is_breakpoint_gutter_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_breakpoint_gutter_enabled,self.godot_owner,[NULL,],&ret)
  def  is_context_menu_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_context_menu_enabled,self.godot_owner,[NULL,],&ret)
  def  is_drawing_fold_gutter(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_drawing_fold_gutter,self.godot_owner,[NULL,],&ret)
  def  is_drawing_minimap(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_drawing_minimap,self.godot_owner,[NULL,],&ret)
  def  is_drawing_spaces(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_drawing_spaces,self.godot_owner,[NULL,],&ret)
  def  is_drawing_tabs(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_drawing_tabs,self.godot_owner,[NULL,],&ret)
  def  is_folded(self, line):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_folded,self.godot_owner,[NULL,],&ret)
  def  is_hiding_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_hiding_enabled,self.godot_owner,[NULL,],&ret)
  def  is_highlight_all_occurrences_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_highlight_all_occurrences_enabled,self.godot_owner,[NULL,],&ret)
  def  is_highlight_current_line_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_highlight_current_line_enabled,self.godot_owner,[NULL,],&ret)
  def  is_line_hidden(self, line):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_line_hidden,self.godot_owner,[NULL,],&ret)
  def  is_overriding_selected_font_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_overriding_selected_font_color,self.godot_owner,[NULL,],&ret)
  def  is_readonly(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_readonly,self.godot_owner,[NULL,],&ret)
  def  is_right_click_moving_caret(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_right_click_moving_caret,self.godot_owner,[NULL,],&ret)
  def  is_selecting_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_selecting_enabled,self.godot_owner,[NULL,],&ret)
  def  is_selection_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_selection_active,self.godot_owner,[NULL,],&ret)
  def  is_shortcut_keys_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_shortcut_keys_enabled,self.godot_owner,[NULL,],&ret)
  def  is_show_line_numbers_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_show_line_numbers_enabled,self.godot_owner,[NULL,],&ret)
  def  is_smooth_scroll_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_smooth_scroll_enabled,self.godot_owner,[NULL,],&ret)
  def  is_syntax_coloring_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_syntax_coloring_enabled,self.godot_owner,[NULL,],&ret)
  def  is_wrap_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textedit_is_wrap_enabled,self.godot_owner,[NULL,],&ret)
  def  menu_option(self, option):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_menu_option,self.godot_owner,[NULL,],NULL)
  def  paste(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_paste,self.godot_owner,[NULL,],NULL)
  def  redo(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_redo,self.godot_owner,[NULL,],NULL)
  def  remove_breakpoints(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_remove_breakpoints,self.godot_owner,[NULL,],NULL)
  def  search(self, keyflagsfrom_linefrom_column):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_textedit_search,self.godot_owner,[NULL,],&ret)
  def  select(self, from_linefrom_columnto_lineto_column):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_select,self.godot_owner,[NULL,],NULL)
  def  select_all(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_select_all,self.godot_owner,[NULL,],NULL)
  def  set_breakpoint_gutter_enabled(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_breakpoint_gutter_enabled,self.godot_owner,[NULL,],NULL)
  def  set_context_menu_enabled(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_context_menu_enabled,self.godot_owner,[NULL,],NULL)
  def  set_draw_fold_gutter(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_draw_fold_gutter,self.godot_owner,[NULL,],NULL)
  def  set_draw_spaces(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_draw_spaces,self.godot_owner,[NULL,],NULL)
  def  set_draw_tabs(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_draw_tabs,self.godot_owner,[NULL,],NULL)
  def  set_h_scroll(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_h_scroll,self.godot_owner,[NULL,],NULL)
  def  set_hiding_enabled(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_hiding_enabled,self.godot_owner,[NULL,],NULL)
  def  set_highlight_all_occurrences(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_highlight_all_occurrences,self.godot_owner,[NULL,],NULL)
  def  set_highlight_current_line(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_highlight_current_line,self.godot_owner,[NULL,],NULL)
  def  set_line_as_hidden(self, lineenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_line_as_hidden,self.godot_owner,[NULL,],NULL)
  def  set_minimap_width(self, width):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_minimap_width,self.godot_owner,[NULL,],NULL)
  def  set_override_selected_font_color(self, override):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_override_selected_font_color,self.godot_owner,[NULL,],NULL)
  def  set_readonly(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_readonly,self.godot_owner,[NULL,],NULL)
  def  set_right_click_moves_caret(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_right_click_moves_caret,self.godot_owner,[NULL,],NULL)
  def  set_selecting_enabled(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_selecting_enabled,self.godot_owner,[NULL,],NULL)
  def  set_shortcut_keys_enabled(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_shortcut_keys_enabled,self.godot_owner,[NULL,],NULL)
  def  set_show_line_numbers(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_show_line_numbers,self.godot_owner,[NULL,],NULL)
  def  set_smooth_scroll_enable(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_smooth_scroll_enable,self.godot_owner,[NULL,],NULL)
  def  set_syntax_coloring(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_syntax_coloring,self.godot_owner,[NULL,],NULL)
  def  set_text(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_text,self.godot_owner,[NULL,],NULL)
  def  set_v_scroll(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_v_scroll,self.godot_owner,[NULL,],NULL)
  def  set_v_scroll_speed(self, speed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_v_scroll_speed,self.godot_owner,[NULL,],NULL)
  def  set_wrap_enabled(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_set_wrap_enabled,self.godot_owner,[NULL,],NULL)
  def  toggle_fold_line(self, line):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_toggle_fold_line,self.godot_owner,[NULL,],NULL)
  def  undo(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_undo,self.godot_owner,[NULL,],NULL)
  def  unfold_line(self, line):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_unfold_line,self.godot_owner,[NULL,],NULL)
  def  unhide_all_lines(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textedit_unhide_all_lines,self.godot_owner,[NULL,],NULL)
