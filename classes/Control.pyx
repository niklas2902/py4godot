from classes.CanvasItem cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_control__clips_input
cdef godot_method_bind *bind_control__get_minimum_size
cdef godot_method_bind *bind_control__get_tooltip
cdef godot_method_bind *bind_control__gui_input
cdef godot_method_bind *bind_control__make_custom_tooltip
cdef godot_method_bind *bind_control__override_changed
cdef godot_method_bind *bind_control__set_anchor
cdef godot_method_bind *bind_control__set_global_position
cdef godot_method_bind *bind_control__set_position
cdef godot_method_bind *bind_control__set_size
cdef godot_method_bind *bind_control__size_changed
cdef godot_method_bind *bind_control__theme_changed
cdef godot_method_bind *bind_control__update_minimum_size
cdef godot_method_bind *bind_control_accept_event
cdef godot_method_bind *bind_control_add_color_override
cdef godot_method_bind *bind_control_add_constant_override
cdef godot_method_bind *bind_control_add_font_override
cdef godot_method_bind *bind_control_add_icon_override
cdef godot_method_bind *bind_control_add_shader_override
cdef godot_method_bind *bind_control_add_stylebox_override
cdef godot_method_bind *bind_control_can_drop_data
cdef godot_method_bind *bind_control_drop_data
cdef godot_method_bind *bind_control_force_drag
cdef godot_method_bind *bind_control_get_anchor
cdef godot_method_bind *bind_control_get_begin
cdef godot_method_bind *bind_control_get_color
cdef godot_method_bind *bind_control_get_combined_minimum_size
cdef godot_method_bind *bind_control_get_constant
cdef godot_method_bind *bind_control_get_cursor_shape
cdef godot_method_bind *bind_control_get_custom_minimum_size
cdef godot_method_bind *bind_control_get_default_cursor_shape
cdef godot_method_bind *bind_control_get_drag_data
cdef godot_method_bind *bind_control_get_end
cdef godot_method_bind *bind_control_get_focus_mode
cdef godot_method_bind *bind_control_get_focus_neighbour
cdef godot_method_bind *bind_control_get_focus_next
cdef godot_method_bind *bind_control_get_focus_owner
cdef godot_method_bind *bind_control_get_focus_previous
cdef godot_method_bind *bind_control_get_font
cdef godot_method_bind *bind_control_get_global_position
cdef godot_method_bind *bind_control_get_global_rect
cdef godot_method_bind *bind_control_get_h_grow_direction
cdef godot_method_bind *bind_control_get_h_size_flags
cdef godot_method_bind *bind_control_get_icon
cdef godot_method_bind *bind_control_get_margin
cdef godot_method_bind *bind_control_get_minimum_size
cdef godot_method_bind *bind_control_get_mouse_filter
cdef godot_method_bind *bind_control_get_parent_area_size
cdef godot_method_bind *bind_control_get_parent_control
cdef godot_method_bind *bind_control_get_pivot_offset
cdef godot_method_bind *bind_control_get_position
cdef godot_method_bind *bind_control_get_rect
cdef godot_method_bind *bind_control_get_rotation
cdef godot_method_bind *bind_control_get_rotation_degrees
cdef godot_method_bind *bind_control_get_scale
cdef godot_method_bind *bind_control_get_size
cdef godot_method_bind *bind_control_get_stretch_ratio
cdef godot_method_bind *bind_control_get_stylebox
cdef godot_method_bind *bind_control_get_theme
cdef godot_method_bind *bind_control_get_tooltip
cdef godot_method_bind *bind_control_get_v_grow_direction
cdef godot_method_bind *bind_control_get_v_size_flags
cdef godot_method_bind *bind_control_grab_click_focus
cdef godot_method_bind *bind_control_grab_focus
cdef godot_method_bind *bind_control_has_color
cdef godot_method_bind *bind_control_has_color_override
cdef godot_method_bind *bind_control_has_constant
cdef godot_method_bind *bind_control_has_constant_override
cdef godot_method_bind *bind_control_has_focus
cdef godot_method_bind *bind_control_has_font
cdef godot_method_bind *bind_control_has_font_override
cdef godot_method_bind *bind_control_has_icon
cdef godot_method_bind *bind_control_has_icon_override
cdef godot_method_bind *bind_control_has_point
cdef godot_method_bind *bind_control_has_shader_override
cdef godot_method_bind *bind_control_has_stylebox
cdef godot_method_bind *bind_control_has_stylebox_override
cdef godot_method_bind *bind_control_is_clipping_contents
cdef godot_method_bind *bind_control_minimum_size_changed
cdef godot_method_bind *bind_control_release_focus
cdef godot_method_bind *bind_control_set_anchor
cdef godot_method_bind *bind_control_set_anchor_and_margin
cdef godot_method_bind *bind_control_set_anchors_and_margins_preset
cdef godot_method_bind *bind_control_set_anchors_preset
cdef godot_method_bind *bind_control_set_begin
cdef godot_method_bind *bind_control_set_clip_contents
cdef godot_method_bind *bind_control_set_custom_minimum_size
cdef godot_method_bind *bind_control_set_default_cursor_shape
cdef godot_method_bind *bind_control_set_drag_forwarding
cdef godot_method_bind *bind_control_set_drag_preview
cdef godot_method_bind *bind_control_set_end
cdef godot_method_bind *bind_control_set_focus_mode
cdef godot_method_bind *bind_control_set_focus_neighbour
cdef godot_method_bind *bind_control_set_focus_next
cdef godot_method_bind *bind_control_set_focus_previous
cdef godot_method_bind *bind_control_set_global_position
cdef godot_method_bind *bind_control_set_h_grow_direction
cdef godot_method_bind *bind_control_set_h_size_flags
cdef godot_method_bind *bind_control_set_margin
cdef godot_method_bind *bind_control_set_margins_preset
cdef godot_method_bind *bind_control_set_mouse_filter
cdef godot_method_bind *bind_control_set_pivot_offset
cdef godot_method_bind *bind_control_set_position
cdef godot_method_bind *bind_control_set_rotation
cdef godot_method_bind *bind_control_set_rotation_degrees
cdef godot_method_bind *bind_control_set_scale
cdef godot_method_bind *bind_control_set_size
cdef godot_method_bind *bind_control_set_stretch_ratio
cdef godot_method_bind *bind_control_set_theme
cdef godot_method_bind *bind_control_set_tooltip
cdef godot_method_bind *bind_control_set_v_grow_direction
cdef godot_method_bind *bind_control_set_v_size_flags
cdef godot_method_bind *bind_control_show_modal
cdef godot_method_bind *bind_control_warp_mouse
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_control__clips_input = api_core.godot_method_bind_get_method('Control', '_clips_input')
  bind_control__get_minimum_size = api_core.godot_method_bind_get_method('Control', '_get_minimum_size')
  bind_control__get_tooltip = api_core.godot_method_bind_get_method('Control', '_get_tooltip')
  bind_control__gui_input = api_core.godot_method_bind_get_method('Control', '_gui_input')
  bind_control__make_custom_tooltip = api_core.godot_method_bind_get_method('Control', '_make_custom_tooltip')
  bind_control__override_changed = api_core.godot_method_bind_get_method('Control', '_override_changed')
  bind_control__set_anchor = api_core.godot_method_bind_get_method('Control', '_set_anchor')
  bind_control__set_global_position = api_core.godot_method_bind_get_method('Control', '_set_global_position')
  bind_control__set_position = api_core.godot_method_bind_get_method('Control', '_set_position')
  bind_control__set_size = api_core.godot_method_bind_get_method('Control', '_set_size')
  bind_control__size_changed = api_core.godot_method_bind_get_method('Control', '_size_changed')
  bind_control__theme_changed = api_core.godot_method_bind_get_method('Control', '_theme_changed')
  bind_control__update_minimum_size = api_core.godot_method_bind_get_method('Control', '_update_minimum_size')
  bind_control_accept_event = api_core.godot_method_bind_get_method('Control', 'accept_event')
  bind_control_add_color_override = api_core.godot_method_bind_get_method('Control', 'add_color_override')
  bind_control_add_constant_override = api_core.godot_method_bind_get_method('Control', 'add_constant_override')
  bind_control_add_font_override = api_core.godot_method_bind_get_method('Control', 'add_font_override')
  bind_control_add_icon_override = api_core.godot_method_bind_get_method('Control', 'add_icon_override')
  bind_control_add_shader_override = api_core.godot_method_bind_get_method('Control', 'add_shader_override')
  bind_control_add_stylebox_override = api_core.godot_method_bind_get_method('Control', 'add_stylebox_override')
  bind_control_can_drop_data = api_core.godot_method_bind_get_method('Control', 'can_drop_data')
  bind_control_drop_data = api_core.godot_method_bind_get_method('Control', 'drop_data')
  bind_control_force_drag = api_core.godot_method_bind_get_method('Control', 'force_drag')
  bind_control_get_anchor = api_core.godot_method_bind_get_method('Control', 'get_anchor')
  bind_control_get_begin = api_core.godot_method_bind_get_method('Control', 'get_begin')
  bind_control_get_color = api_core.godot_method_bind_get_method('Control', 'get_color')
  bind_control_get_combined_minimum_size = api_core.godot_method_bind_get_method('Control', 'get_combined_minimum_size')
  bind_control_get_constant = api_core.godot_method_bind_get_method('Control', 'get_constant')
  bind_control_get_cursor_shape = api_core.godot_method_bind_get_method('Control', 'get_cursor_shape')
  bind_control_get_custom_minimum_size = api_core.godot_method_bind_get_method('Control', 'get_custom_minimum_size')
  bind_control_get_default_cursor_shape = api_core.godot_method_bind_get_method('Control', 'get_default_cursor_shape')
  bind_control_get_drag_data = api_core.godot_method_bind_get_method('Control', 'get_drag_data')
  bind_control_get_end = api_core.godot_method_bind_get_method('Control', 'get_end')
  bind_control_get_focus_mode = api_core.godot_method_bind_get_method('Control', 'get_focus_mode')
  bind_control_get_focus_neighbour = api_core.godot_method_bind_get_method('Control', 'get_focus_neighbour')
  bind_control_get_focus_next = api_core.godot_method_bind_get_method('Control', 'get_focus_next')
  bind_control_get_focus_owner = api_core.godot_method_bind_get_method('Control', 'get_focus_owner')
  bind_control_get_focus_previous = api_core.godot_method_bind_get_method('Control', 'get_focus_previous')
  bind_control_get_font = api_core.godot_method_bind_get_method('Control', 'get_font')
  bind_control_get_global_position = api_core.godot_method_bind_get_method('Control', 'get_global_position')
  bind_control_get_global_rect = api_core.godot_method_bind_get_method('Control', 'get_global_rect')
  bind_control_get_h_grow_direction = api_core.godot_method_bind_get_method('Control', 'get_h_grow_direction')
  bind_control_get_h_size_flags = api_core.godot_method_bind_get_method('Control', 'get_h_size_flags')
  bind_control_get_icon = api_core.godot_method_bind_get_method('Control', 'get_icon')
  bind_control_get_margin = api_core.godot_method_bind_get_method('Control', 'get_margin')
  bind_control_get_minimum_size = api_core.godot_method_bind_get_method('Control', 'get_minimum_size')
  bind_control_get_mouse_filter = api_core.godot_method_bind_get_method('Control', 'get_mouse_filter')
  bind_control_get_parent_area_size = api_core.godot_method_bind_get_method('Control', 'get_parent_area_size')
  bind_control_get_parent_control = api_core.godot_method_bind_get_method('Control', 'get_parent_control')
  bind_control_get_pivot_offset = api_core.godot_method_bind_get_method('Control', 'get_pivot_offset')
  bind_control_get_position = api_core.godot_method_bind_get_method('Control', 'get_position')
  bind_control_get_rect = api_core.godot_method_bind_get_method('Control', 'get_rect')
  bind_control_get_rotation = api_core.godot_method_bind_get_method('Control', 'get_rotation')
  bind_control_get_rotation_degrees = api_core.godot_method_bind_get_method('Control', 'get_rotation_degrees')
  bind_control_get_scale = api_core.godot_method_bind_get_method('Control', 'get_scale')
  bind_control_get_size = api_core.godot_method_bind_get_method('Control', 'get_size')
  bind_control_get_stretch_ratio = api_core.godot_method_bind_get_method('Control', 'get_stretch_ratio')
  bind_control_get_stylebox = api_core.godot_method_bind_get_method('Control', 'get_stylebox')
  bind_control_get_theme = api_core.godot_method_bind_get_method('Control', 'get_theme')
  bind_control_get_tooltip = api_core.godot_method_bind_get_method('Control', 'get_tooltip')
  bind_control_get_v_grow_direction = api_core.godot_method_bind_get_method('Control', 'get_v_grow_direction')
  bind_control_get_v_size_flags = api_core.godot_method_bind_get_method('Control', 'get_v_size_flags')
  bind_control_grab_click_focus = api_core.godot_method_bind_get_method('Control', 'grab_click_focus')
  bind_control_grab_focus = api_core.godot_method_bind_get_method('Control', 'grab_focus')
  bind_control_has_color = api_core.godot_method_bind_get_method('Control', 'has_color')
  bind_control_has_color_override = api_core.godot_method_bind_get_method('Control', 'has_color_override')
  bind_control_has_constant = api_core.godot_method_bind_get_method('Control', 'has_constant')
  bind_control_has_constant_override = api_core.godot_method_bind_get_method('Control', 'has_constant_override')
  bind_control_has_focus = api_core.godot_method_bind_get_method('Control', 'has_focus')
  bind_control_has_font = api_core.godot_method_bind_get_method('Control', 'has_font')
  bind_control_has_font_override = api_core.godot_method_bind_get_method('Control', 'has_font_override')
  bind_control_has_icon = api_core.godot_method_bind_get_method('Control', 'has_icon')
  bind_control_has_icon_override = api_core.godot_method_bind_get_method('Control', 'has_icon_override')
  bind_control_has_point = api_core.godot_method_bind_get_method('Control', 'has_point')
  bind_control_has_shader_override = api_core.godot_method_bind_get_method('Control', 'has_shader_override')
  bind_control_has_stylebox = api_core.godot_method_bind_get_method('Control', 'has_stylebox')
  bind_control_has_stylebox_override = api_core.godot_method_bind_get_method('Control', 'has_stylebox_override')
  bind_control_is_clipping_contents = api_core.godot_method_bind_get_method('Control', 'is_clipping_contents')
  bind_control_minimum_size_changed = api_core.godot_method_bind_get_method('Control', 'minimum_size_changed')
  bind_control_release_focus = api_core.godot_method_bind_get_method('Control', 'release_focus')
  bind_control_set_anchor = api_core.godot_method_bind_get_method('Control', 'set_anchor')
  bind_control_set_anchor_and_margin = api_core.godot_method_bind_get_method('Control', 'set_anchor_and_margin')
  bind_control_set_anchors_and_margins_preset = api_core.godot_method_bind_get_method('Control', 'set_anchors_and_margins_preset')
  bind_control_set_anchors_preset = api_core.godot_method_bind_get_method('Control', 'set_anchors_preset')
  bind_control_set_begin = api_core.godot_method_bind_get_method('Control', 'set_begin')
  bind_control_set_clip_contents = api_core.godot_method_bind_get_method('Control', 'set_clip_contents')
  bind_control_set_custom_minimum_size = api_core.godot_method_bind_get_method('Control', 'set_custom_minimum_size')
  bind_control_set_default_cursor_shape = api_core.godot_method_bind_get_method('Control', 'set_default_cursor_shape')
  bind_control_set_drag_forwarding = api_core.godot_method_bind_get_method('Control', 'set_drag_forwarding')
  bind_control_set_drag_preview = api_core.godot_method_bind_get_method('Control', 'set_drag_preview')
  bind_control_set_end = api_core.godot_method_bind_get_method('Control', 'set_end')
  bind_control_set_focus_mode = api_core.godot_method_bind_get_method('Control', 'set_focus_mode')
  bind_control_set_focus_neighbour = api_core.godot_method_bind_get_method('Control', 'set_focus_neighbour')
  bind_control_set_focus_next = api_core.godot_method_bind_get_method('Control', 'set_focus_next')
  bind_control_set_focus_previous = api_core.godot_method_bind_get_method('Control', 'set_focus_previous')
  bind_control_set_global_position = api_core.godot_method_bind_get_method('Control', 'set_global_position')
  bind_control_set_h_grow_direction = api_core.godot_method_bind_get_method('Control', 'set_h_grow_direction')
  bind_control_set_h_size_flags = api_core.godot_method_bind_get_method('Control', 'set_h_size_flags')
  bind_control_set_margin = api_core.godot_method_bind_get_method('Control', 'set_margin')
  bind_control_set_margins_preset = api_core.godot_method_bind_get_method('Control', 'set_margins_preset')
  bind_control_set_mouse_filter = api_core.godot_method_bind_get_method('Control', 'set_mouse_filter')
  bind_control_set_pivot_offset = api_core.godot_method_bind_get_method('Control', 'set_pivot_offset')
  bind_control_set_position = api_core.godot_method_bind_get_method('Control', 'set_position')
  bind_control_set_rotation = api_core.godot_method_bind_get_method('Control', 'set_rotation')
  bind_control_set_rotation_degrees = api_core.godot_method_bind_get_method('Control', 'set_rotation_degrees')
  bind_control_set_scale = api_core.godot_method_bind_get_method('Control', 'set_scale')
  bind_control_set_size = api_core.godot_method_bind_get_method('Control', 'set_size')
  bind_control_set_stretch_ratio = api_core.godot_method_bind_get_method('Control', 'set_stretch_ratio')
  bind_control_set_theme = api_core.godot_method_bind_get_method('Control', 'set_theme')
  bind_control_set_tooltip = api_core.godot_method_bind_get_method('Control', 'set_tooltip')
  bind_control_set_v_grow_direction = api_core.godot_method_bind_get_method('Control', 'set_v_grow_direction')
  bind_control_set_v_size_flags = api_core.godot_method_bind_get_method('Control', 'set_v_size_flags')
  bind_control_show_modal = api_core.godot_method_bind_get_method('Control', 'show_modal')
  bind_control_warp_mouse = api_core.godot_method_bind_get_method('Control', 'warp_mouse')

############################Generated class###################################
cdef class Control(CanvasItem):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Control")())
##################################Generated Properties#########################################
  @property
  def anchor_bottom(self): 
    return self.get_anchor_bottom()
  @anchor_bottom.setter 
  def anchor_bottom(self,value): 
    self.set_anchor_bottom(value)
  @property
  def anchor_left(self): 
    return self.get_anchor_left()
  @anchor_left.setter 
  def anchor_left(self,value): 
    self.set_anchor_left(value)
  @property
  def anchor_right(self): 
    return self.get_anchor_right()
  @anchor_right.setter 
  def anchor_right(self,value): 
    self.set_anchor_right(value)
  @property
  def anchor_top(self): 
    return self.get_anchor_top()
  @anchor_top.setter 
  def anchor_top(self,value): 
    self.set_anchor_top(value)
  @property
  def focus_mode(self): 
    return self.get_focus_mode()
  @focus_mode.setter 
  def focus_mode(self,value): 
    self.set_focus_mode(value)
  @property
  def focus_neighbour_bottom(self): 
    return self.get_focus_neighbour_bottom()
  @focus_neighbour_bottom.setter 
  def focus_neighbour_bottom(self,value): 
    self.set_focus_neighbour_bottom(value)
  @property
  def focus_neighbour_left(self): 
    return self.get_focus_neighbour_left()
  @focus_neighbour_left.setter 
  def focus_neighbour_left(self,value): 
    self.set_focus_neighbour_left(value)
  @property
  def focus_neighbour_right(self): 
    return self.get_focus_neighbour_right()
  @focus_neighbour_right.setter 
  def focus_neighbour_right(self,value): 
    self.set_focus_neighbour_right(value)
  @property
  def focus_neighbour_top(self): 
    return self.get_focus_neighbour_top()
  @focus_neighbour_top.setter 
  def focus_neighbour_top(self,value): 
    self.set_focus_neighbour_top(value)
  @property
  def focus_next(self): 
    return self.get_focus_next()
  @focus_next.setter 
  def focus_next(self,value): 
    self.set_focus_next(value)
  @property
  def focus_previous(self): 
    return self.get_focus_previous()
  @focus_previous.setter 
  def focus_previous(self,value): 
    self.set_focus_previous(value)
  @property
  def grow_horizontal(self): 
    return self.get_grow_horizontal()
  @grow_horizontal.setter 
  def grow_horizontal(self,value): 
    self.set_grow_horizontal(value)
  @property
  def grow_vertical(self): 
    return self.get_grow_vertical()
  @grow_vertical.setter 
  def grow_vertical(self,value): 
    self.set_grow_vertical(value)
  @property
  def hint_tooltip(self): 
    return self.get_hint_tooltip()
  @hint_tooltip.setter 
  def hint_tooltip(self,value): 
    self.set_hint_tooltip(value)
  @property
  def margin_bottom(self): 
    return self.get_margin_bottom()
  @margin_bottom.setter 
  def margin_bottom(self,value): 
    self.set_margin_bottom(value)
  @property
  def margin_left(self): 
    return self.get_margin_left()
  @margin_left.setter 
  def margin_left(self,value): 
    self.set_margin_left(value)
  @property
  def margin_right(self): 
    return self.get_margin_right()
  @margin_right.setter 
  def margin_right(self,value): 
    self.set_margin_right(value)
  @property
  def margin_top(self): 
    return self.get_margin_top()
  @margin_top.setter 
  def margin_top(self,value): 
    self.set_margin_top(value)
  @property
  def mouse_default_cursor_shape(self): 
    return self.get_mouse_default_cursor_shape()
  @mouse_default_cursor_shape.setter 
  def mouse_default_cursor_shape(self,value): 
    self.set_mouse_default_cursor_shape(value)
  @property
  def mouse_filter(self): 
    return self.get_mouse_filter()
  @mouse_filter.setter 
  def mouse_filter(self,value): 
    self.set_mouse_filter(value)
  @property
  def rect_clip_content(self): 
    return self.get_rect_clip_content()
  @rect_clip_content.setter 
  def rect_clip_content(self,value): 
    self.set_rect_clip_content(value)
  @property
  def rect_global_position(self): 
    return self.get_rect_global_position()
  @rect_global_position.setter 
  def rect_global_position(self,value): 
    self.set_rect_global_position(value)
  @property
  def rect_min_size(self): 
    return self.get_rect_min_size()
  @rect_min_size.setter 
  def rect_min_size(self,value): 
    self.set_rect_min_size(value)
  @property
  def rect_pivot_offset(self): 
    return self.get_rect_pivot_offset()
  @rect_pivot_offset.setter 
  def rect_pivot_offset(self,value): 
    self.set_rect_pivot_offset(value)
  @property
  def rect_position(self): 
    return self.get_rect_position()
  @rect_position.setter 
  def rect_position(self,value): 
    self.set_rect_position(value)
  @property
  def rect_rotation(self): 
    return self.get_rect_rotation()
  @rect_rotation.setter 
  def rect_rotation(self,value): 
    self.set_rect_rotation(value)
  @property
  def rect_scale(self): 
    return self.get_rect_scale()
  @rect_scale.setter 
  def rect_scale(self,value): 
    self.set_rect_scale(value)
  @property
  def rect_size(self): 
    return self.get_rect_size()
  @rect_size.setter 
  def rect_size(self,value): 
    self.set_rect_size(value)
  @property
  def size_flags_horizontal(self): 
    return self.get_size_flags_horizontal()
  @size_flags_horizontal.setter 
  def size_flags_horizontal(self,value): 
    self.set_size_flags_horizontal(value)
  @property
  def size_flags_stretch_ratio(self): 
    return self.get_size_flags_stretch_ratio()
  @size_flags_stretch_ratio.setter 
  def size_flags_stretch_ratio(self,value): 
    self.set_size_flags_stretch_ratio(value)
  @property
  def size_flags_vertical(self): 
    return self.get_size_flags_vertical()
  @size_flags_vertical.setter 
  def size_flags_vertical(self,value): 
    self.set_size_flags_vertical(value)
  @property
  def theme(self): 
    return self.get_theme()
  @theme.setter 
  def theme(self,value): 
    self.set_theme(value)

##################################Generated Methods#########################################
  def  _clips_input(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control__clips_input,self.godot_owner,[NULL,],&ret)
  def  _get_minimum_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_control__get_minimum_size,self.godot_owner,[NULL,],&ret)
  def  _get_tooltip(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_control__get_tooltip,self.godot_owner,[NULL,],&ret)
  def  _gui_input(self, event):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control__gui_input,self.godot_owner,[NULL,],NULL)
  def  _make_custom_tooltip(self, for_text):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_control__make_custom_tooltip,self.godot_owner,[NULL,],&ret)
  def  _override_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control__override_changed,self.godot_owner,[NULL,],NULL)
  def  _set_anchor(self, marginanchor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control__set_anchor,self.godot_owner,[NULL,],NULL)
  def  _set_global_position(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control__set_global_position,self.godot_owner,[NULL,],NULL)
  def  _set_position(self, margin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control__set_position,self.godot_owner,[NULL,],NULL)
  def  _set_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control__set_size,self.godot_owner,[NULL,],NULL)
  def  _size_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control__size_changed,self.godot_owner,[NULL,],NULL)
  def  _theme_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control__theme_changed,self.godot_owner,[NULL,],NULL)
  def  _update_minimum_size(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control__update_minimum_size,self.godot_owner,[NULL,],NULL)
  def  accept_event(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_accept_event,self.godot_owner,[NULL,],NULL)
  def  add_color_override(self, namecolor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_add_color_override,self.godot_owner,[NULL,],NULL)
  def  add_constant_override(self, nameconstant):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_add_constant_override,self.godot_owner,[NULL,],NULL)
  def  add_font_override(self, namefont):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_add_font_override,self.godot_owner,[NULL,],NULL)
  def  add_icon_override(self, nametexture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_add_icon_override,self.godot_owner,[NULL,],NULL)
  def  add_shader_override(self, nameshader):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_add_shader_override,self.godot_owner,[NULL,],NULL)
  def  add_stylebox_override(self, namestylebox):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_add_stylebox_override,self.godot_owner,[NULL,],NULL)
  def  can_drop_data(self, positiondata):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_can_drop_data,self.godot_owner,[NULL,],&ret)
  def  drop_data(self, positiondata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_drop_data,self.godot_owner,[NULL,],NULL)
  def  force_drag(self, datapreview):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_force_drag,self.godot_owner,[NULL,],NULL)
  def  get_anchor(self, margin):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_control_get_anchor,self.godot_owner,[NULL,],&ret)
  def  get_begin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_begin,self.godot_owner,[NULL,],&ret)
  def  get_color(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_control_get_color,self.godot_owner,[NULL,],&ret)
  def  get_combined_minimum_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_combined_minimum_size,self.godot_owner,[NULL,],&ret)
  def  get_constant(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_control_get_constant,self.godot_owner,[NULL,],&ret)
  def  get_cursor_shape(self, position):
    cdef godot_object *_owner = self.godot_owner
    cdef Control::CursorShape ret
    api_core.godot_method_bind_ptrcall(bind_control_get_cursor_shape,self.godot_owner,[NULL,],&ret)
  def  get_custom_minimum_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_custom_minimum_size,self.godot_owner,[NULL,],&ret)
  def  get_default_cursor_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Control::CursorShape ret
    api_core.godot_method_bind_ptrcall(bind_control_get_default_cursor_shape,self.godot_owner,[NULL,],&ret)
  def  get_drag_data(self, position):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_control_get_drag_data,self.godot_owner,[NULL,],&ret)
  def  get_end(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_end,self.godot_owner,[NULL,],&ret)
  def  get_focus_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Control::FocusMode ret
    api_core.godot_method_bind_ptrcall(bind_control_get_focus_mode,self.godot_owner,[NULL,],&ret)
  def  get_focus_neighbour(self, margin):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_control_get_focus_neighbour,self.godot_owner,[NULL,],&ret)
  def  get_focus_next(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_control_get_focus_next,self.godot_owner,[NULL,],&ret)
  def  get_focus_owner(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Control ret
    api_core.godot_method_bind_ptrcall(bind_control_get_focus_owner,self.godot_owner,[NULL,],&ret)
  def  get_focus_previous(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_control_get_focus_previous,self.godot_owner,[NULL,],&ret)
  def  get_font(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef Font ret
    api_core.godot_method_bind_ptrcall(bind_control_get_font,self.godot_owner,[NULL,],&ret)
  def  get_global_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_global_position,self.godot_owner,[NULL,],&ret)
  def  get_global_rect(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_global_rect,self.godot_owner,[NULL,],&ret)
  def  get_h_grow_direction(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Control::GrowDirection ret
    api_core.godot_method_bind_ptrcall(bind_control_get_h_grow_direction,self.godot_owner,[NULL,],&ret)
  def  get_h_size_flags(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_control_get_h_size_flags,self.godot_owner,[NULL,],&ret)
  def  get_icon(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_control_get_icon,self.godot_owner,[NULL,],&ret)
  def  get_margin(self, margin):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_control_get_margin,self.godot_owner,[NULL,],&ret)
  def  get_minimum_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_minimum_size,self.godot_owner,[NULL,],&ret)
  def  get_mouse_filter(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Control::MouseFilter ret
    api_core.godot_method_bind_ptrcall(bind_control_get_mouse_filter,self.godot_owner,[NULL,],&ret)
  def  get_parent_area_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_parent_area_size,self.godot_owner,[NULL,],&ret)
  def  get_parent_control(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Control ret
    api_core.godot_method_bind_ptrcall(bind_control_get_parent_control,self.godot_owner,[NULL,],&ret)
  def  get_pivot_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_pivot_offset,self.godot_owner,[NULL,],&ret)
  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_position,self.godot_owner,[NULL,],&ret)
  def  get_rect(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_rect,self.godot_owner,[NULL,],&ret)
  def  get_rotation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_control_get_rotation,self.godot_owner,[NULL,],&ret)
  def  get_rotation_degrees(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_control_get_rotation_degrees,self.godot_owner,[NULL,],&ret)
  def  get_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_scale,self.godot_owner,[NULL,],&ret)
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_control_get_size,self.godot_owner,[NULL,],&ret)
  def  get_stretch_ratio(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_control_get_stretch_ratio,self.godot_owner,[NULL,],&ret)
  def  get_stylebox(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef StyleBox ret
    api_core.godot_method_bind_ptrcall(bind_control_get_stylebox,self.godot_owner,[NULL,],&ret)
  def  get_theme(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Theme ret
    api_core.godot_method_bind_ptrcall(bind_control_get_theme,self.godot_owner,[NULL,],&ret)
  def  get_tooltip(self, at_position):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_control_get_tooltip,self.godot_owner,[NULL,],&ret)
  def  get_v_grow_direction(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Control::GrowDirection ret
    api_core.godot_method_bind_ptrcall(bind_control_get_v_grow_direction,self.godot_owner,[NULL,],&ret)
  def  get_v_size_flags(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_control_get_v_size_flags,self.godot_owner,[NULL,],&ret)
  def  grab_click_focus(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_grab_click_focus,self.godot_owner,[NULL,],NULL)
  def  grab_focus(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_grab_focus,self.godot_owner,[NULL,],NULL)
  def  has_color(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_color,self.godot_owner,[NULL,],&ret)
  def  has_color_override(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_color_override,self.godot_owner,[NULL,],&ret)
  def  has_constant(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_constant,self.godot_owner,[NULL,],&ret)
  def  has_constant_override(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_constant_override,self.godot_owner,[NULL,],&ret)
  def  has_focus(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_focus,self.godot_owner,[NULL,],&ret)
  def  has_font(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_font,self.godot_owner,[NULL,],&ret)
  def  has_font_override(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_font_override,self.godot_owner,[NULL,],&ret)
  def  has_icon(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_icon,self.godot_owner,[NULL,],&ret)
  def  has_icon_override(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_icon_override,self.godot_owner,[NULL,],&ret)
  def  has_point(self, point):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_point,self.godot_owner,[NULL,],&ret)
  def  has_shader_override(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_shader_override,self.godot_owner,[NULL,],&ret)
  def  has_stylebox(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_stylebox,self.godot_owner,[NULL,],&ret)
  def  has_stylebox_override(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_has_stylebox_override,self.godot_owner,[NULL,],&ret)
  def  is_clipping_contents(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_control_is_clipping_contents,self.godot_owner,[NULL,],&ret)
  def  minimum_size_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_minimum_size_changed,self.godot_owner,[NULL,],NULL)
  def  release_focus(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_release_focus,self.godot_owner,[NULL,],NULL)
  def  set_anchor(self, marginanchorkeep_marginpush_opposite_anchor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_anchor,self.godot_owner,[NULL,],NULL)
  def  set_anchor_and_margin(self, marginanchoroffsetpush_opposite_anchor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_anchor_and_margin,self.godot_owner,[NULL,],NULL)
  def  set_anchors_and_margins_preset(self, presetresize_modemargin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_anchors_and_margins_preset,self.godot_owner,[NULL,],NULL)
  def  set_anchors_preset(self, presetkeep_margins):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_anchors_preset,self.godot_owner,[NULL,],NULL)
  def  set_begin(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_begin,self.godot_owner,[NULL,],NULL)
  def  set_clip_contents(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_clip_contents,self.godot_owner,[NULL,],NULL)
  def  set_custom_minimum_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_custom_minimum_size,self.godot_owner,[NULL,],NULL)
  def  set_default_cursor_shape(self, shape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_default_cursor_shape,self.godot_owner,[NULL,],NULL)
  def  set_drag_forwarding(self, target):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_drag_forwarding,self.godot_owner,[NULL,],NULL)
  def  set_drag_preview(self, control):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_drag_preview,self.godot_owner,[NULL,],NULL)
  def  set_end(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_end,self.godot_owner,[NULL,],NULL)
  def  set_focus_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_focus_mode,self.godot_owner,[NULL,],NULL)
  def  set_focus_neighbour(self, marginneighbour):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_focus_neighbour,self.godot_owner,[NULL,],NULL)
  def  set_focus_next(self, next):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_focus_next,self.godot_owner,[NULL,],NULL)
  def  set_focus_previous(self, previous):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_focus_previous,self.godot_owner,[NULL,],NULL)
  def  set_global_position(self, positionkeep_margins):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_global_position,self.godot_owner,[NULL,],NULL)
  def  set_h_grow_direction(self, direction):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_h_grow_direction,self.godot_owner,[NULL,],NULL)
  def  set_h_size_flags(self, flags):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_h_size_flags,self.godot_owner,[NULL,],NULL)
  def  set_margin(self, marginoffset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_margin,self.godot_owner,[NULL,],NULL)
  def  set_margins_preset(self, presetresize_modemargin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_margins_preset,self.godot_owner,[NULL,],NULL)
  def  set_mouse_filter(self, filter):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_mouse_filter,self.godot_owner,[NULL,],NULL)
  def  set_pivot_offset(self, pivot_offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_pivot_offset,self.godot_owner,[NULL,],NULL)
  def  set_position(self, positionkeep_margins):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_position,self.godot_owner,[NULL,],NULL)
  def  set_rotation(self, radians):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_rotation,self.godot_owner,[NULL,],NULL)
  def  set_rotation_degrees(self, degrees):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_rotation_degrees,self.godot_owner,[NULL,],NULL)
  def  set_scale(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_scale,self.godot_owner,[NULL,],NULL)
  def  set_size(self, sizekeep_margins):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_size,self.godot_owner,[NULL,],NULL)
  def  set_stretch_ratio(self, ratio):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_stretch_ratio,self.godot_owner,[NULL,],NULL)
  def  set_theme(self, theme):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_theme,self.godot_owner,[NULL,],NULL)
  def  set_tooltip(self, tooltip):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_tooltip,self.godot_owner,[NULL,],NULL)
  def  set_v_grow_direction(self, direction):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_v_grow_direction,self.godot_owner,[NULL,],NULL)
  def  set_v_size_flags(self, flags):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_set_v_size_flags,self.godot_owner,[NULL,],NULL)
  def  show_modal(self, exclusive):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_show_modal,self.godot_owner,[NULL,],NULL)
  def  warp_mouse(self, to_position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_control_warp_mouse,self.godot_owner,[NULL,],NULL)
