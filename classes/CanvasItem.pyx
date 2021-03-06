from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_canvasitem__draw
cdef godot_method_bind *bind_canvasitem__edit_get_pivot
cdef godot_method_bind *bind_canvasitem__edit_get_position
cdef godot_method_bind *bind_canvasitem__edit_get_rect
cdef godot_method_bind *bind_canvasitem__edit_get_rotation
cdef godot_method_bind *bind_canvasitem__edit_get_scale
cdef godot_method_bind *bind_canvasitem__edit_get_state
cdef godot_method_bind *bind_canvasitem__edit_get_transform
cdef godot_method_bind *bind_canvasitem__edit_set_pivot
cdef godot_method_bind *bind_canvasitem__edit_set_position
cdef godot_method_bind *bind_canvasitem__edit_set_rect
cdef godot_method_bind *bind_canvasitem__edit_set_rotation
cdef godot_method_bind *bind_canvasitem__edit_set_scale
cdef godot_method_bind *bind_canvasitem__edit_set_state
cdef godot_method_bind *bind_canvasitem__edit_use_pivot
cdef godot_method_bind *bind_canvasitem__edit_use_rect
cdef godot_method_bind *bind_canvasitem__edit_use_rotation
cdef godot_method_bind *bind_canvasitem__is_on_top
cdef godot_method_bind *bind_canvasitem__set_on_top
cdef godot_method_bind *bind_canvasitem__toplevel_raise_self
cdef godot_method_bind *bind_canvasitem__update_callback
cdef godot_method_bind *bind_canvasitem_draw_arc
cdef godot_method_bind *bind_canvasitem_draw_char
cdef godot_method_bind *bind_canvasitem_draw_circle
cdef godot_method_bind *bind_canvasitem_draw_colored_polygon
cdef godot_method_bind *bind_canvasitem_draw_line
cdef godot_method_bind *bind_canvasitem_draw_mesh
cdef godot_method_bind *bind_canvasitem_draw_multiline
cdef godot_method_bind *bind_canvasitem_draw_multiline_colors
cdef godot_method_bind *bind_canvasitem_draw_multimesh
cdef godot_method_bind *bind_canvasitem_draw_polygon
cdef godot_method_bind *bind_canvasitem_draw_polyline
cdef godot_method_bind *bind_canvasitem_draw_polyline_colors
cdef godot_method_bind *bind_canvasitem_draw_primitive
cdef godot_method_bind *bind_canvasitem_draw_rect
cdef godot_method_bind *bind_canvasitem_draw_set_transform
cdef godot_method_bind *bind_canvasitem_draw_set_transform_matrix
cdef godot_method_bind *bind_canvasitem_draw_string
cdef godot_method_bind *bind_canvasitem_draw_style_box
cdef godot_method_bind *bind_canvasitem_draw_texture
cdef godot_method_bind *bind_canvasitem_draw_texture_rect
cdef godot_method_bind *bind_canvasitem_draw_texture_rect_region
cdef godot_method_bind *bind_canvasitem_force_update_transform
cdef godot_method_bind *bind_canvasitem_get_canvas
cdef godot_method_bind *bind_canvasitem_get_canvas_item
cdef godot_method_bind *bind_canvasitem_get_canvas_transform
cdef godot_method_bind *bind_canvasitem_get_global_mouse_position
cdef godot_method_bind *bind_canvasitem_get_global_transform
cdef godot_method_bind *bind_canvasitem_get_global_transform_with_canvas
cdef godot_method_bind *bind_canvasitem_get_light_mask
cdef godot_method_bind *bind_canvasitem_get_local_mouse_position
cdef godot_method_bind *bind_canvasitem_get_material
cdef godot_method_bind *bind_canvasitem_get_modulate
cdef godot_method_bind *bind_canvasitem_get_self_modulate
cdef godot_method_bind *bind_canvasitem_get_transform
cdef godot_method_bind *bind_canvasitem_get_use_parent_material
cdef godot_method_bind *bind_canvasitem_get_viewport_rect
cdef godot_method_bind *bind_canvasitem_get_viewport_transform
cdef godot_method_bind *bind_canvasitem_get_world_2d
cdef godot_method_bind *bind_canvasitem_hide
cdef godot_method_bind *bind_canvasitem_is_draw_behind_parent_enabled
cdef godot_method_bind *bind_canvasitem_is_local_transform_notification_enabled
cdef godot_method_bind *bind_canvasitem_is_set_as_toplevel
cdef godot_method_bind *bind_canvasitem_is_transform_notification_enabled
cdef godot_method_bind *bind_canvasitem_is_visible
cdef godot_method_bind *bind_canvasitem_is_visible_in_tree
cdef godot_method_bind *bind_canvasitem_make_canvas_position_local
cdef godot_method_bind *bind_canvasitem_make_input_local
cdef godot_method_bind *bind_canvasitem_set_as_toplevel
cdef godot_method_bind *bind_canvasitem_set_draw_behind_parent
cdef godot_method_bind *bind_canvasitem_set_light_mask
cdef godot_method_bind *bind_canvasitem_set_material
cdef godot_method_bind *bind_canvasitem_set_modulate
cdef godot_method_bind *bind_canvasitem_set_notify_local_transform
cdef godot_method_bind *bind_canvasitem_set_notify_transform
cdef godot_method_bind *bind_canvasitem_set_self_modulate
cdef godot_method_bind *bind_canvasitem_set_use_parent_material
cdef godot_method_bind *bind_canvasitem_set_visible
cdef godot_method_bind *bind_canvasitem_show
cdef godot_method_bind *bind_canvasitem_update
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_canvasitem__draw = api_core.godot_method_bind_get_method('CanvasItem', '_draw')
  bind_canvasitem__edit_get_pivot = api_core.godot_method_bind_get_method('CanvasItem', '_edit_get_pivot')
  bind_canvasitem__edit_get_position = api_core.godot_method_bind_get_method('CanvasItem', '_edit_get_position')
  bind_canvasitem__edit_get_rect = api_core.godot_method_bind_get_method('CanvasItem', '_edit_get_rect')
  bind_canvasitem__edit_get_rotation = api_core.godot_method_bind_get_method('CanvasItem', '_edit_get_rotation')
  bind_canvasitem__edit_get_scale = api_core.godot_method_bind_get_method('CanvasItem', '_edit_get_scale')
  bind_canvasitem__edit_get_state = api_core.godot_method_bind_get_method('CanvasItem', '_edit_get_state')
  bind_canvasitem__edit_get_transform = api_core.godot_method_bind_get_method('CanvasItem', '_edit_get_transform')
  bind_canvasitem__edit_set_pivot = api_core.godot_method_bind_get_method('CanvasItem', '_edit_set_pivot')
  bind_canvasitem__edit_set_position = api_core.godot_method_bind_get_method('CanvasItem', '_edit_set_position')
  bind_canvasitem__edit_set_rect = api_core.godot_method_bind_get_method('CanvasItem', '_edit_set_rect')
  bind_canvasitem__edit_set_rotation = api_core.godot_method_bind_get_method('CanvasItem', '_edit_set_rotation')
  bind_canvasitem__edit_set_scale = api_core.godot_method_bind_get_method('CanvasItem', '_edit_set_scale')
  bind_canvasitem__edit_set_state = api_core.godot_method_bind_get_method('CanvasItem', '_edit_set_state')
  bind_canvasitem__edit_use_pivot = api_core.godot_method_bind_get_method('CanvasItem', '_edit_use_pivot')
  bind_canvasitem__edit_use_rect = api_core.godot_method_bind_get_method('CanvasItem', '_edit_use_rect')
  bind_canvasitem__edit_use_rotation = api_core.godot_method_bind_get_method('CanvasItem', '_edit_use_rotation')
  bind_canvasitem__is_on_top = api_core.godot_method_bind_get_method('CanvasItem', '_is_on_top')
  bind_canvasitem__set_on_top = api_core.godot_method_bind_get_method('CanvasItem', '_set_on_top')
  bind_canvasitem__toplevel_raise_self = api_core.godot_method_bind_get_method('CanvasItem', '_toplevel_raise_self')
  bind_canvasitem__update_callback = api_core.godot_method_bind_get_method('CanvasItem', '_update_callback')
  bind_canvasitem_draw_arc = api_core.godot_method_bind_get_method('CanvasItem', 'draw_arc')
  bind_canvasitem_draw_char = api_core.godot_method_bind_get_method('CanvasItem', 'draw_char')
  bind_canvasitem_draw_circle = api_core.godot_method_bind_get_method('CanvasItem', 'draw_circle')
  bind_canvasitem_draw_colored_polygon = api_core.godot_method_bind_get_method('CanvasItem', 'draw_colored_polygon')
  bind_canvasitem_draw_line = api_core.godot_method_bind_get_method('CanvasItem', 'draw_line')
  bind_canvasitem_draw_mesh = api_core.godot_method_bind_get_method('CanvasItem', 'draw_mesh')
  bind_canvasitem_draw_multiline = api_core.godot_method_bind_get_method('CanvasItem', 'draw_multiline')
  bind_canvasitem_draw_multiline_colors = api_core.godot_method_bind_get_method('CanvasItem', 'draw_multiline_colors')
  bind_canvasitem_draw_multimesh = api_core.godot_method_bind_get_method('CanvasItem', 'draw_multimesh')
  bind_canvasitem_draw_polygon = api_core.godot_method_bind_get_method('CanvasItem', 'draw_polygon')
  bind_canvasitem_draw_polyline = api_core.godot_method_bind_get_method('CanvasItem', 'draw_polyline')
  bind_canvasitem_draw_polyline_colors = api_core.godot_method_bind_get_method('CanvasItem', 'draw_polyline_colors')
  bind_canvasitem_draw_primitive = api_core.godot_method_bind_get_method('CanvasItem', 'draw_primitive')
  bind_canvasitem_draw_rect = api_core.godot_method_bind_get_method('CanvasItem', 'draw_rect')
  bind_canvasitem_draw_set_transform = api_core.godot_method_bind_get_method('CanvasItem', 'draw_set_transform')
  bind_canvasitem_draw_set_transform_matrix = api_core.godot_method_bind_get_method('CanvasItem', 'draw_set_transform_matrix')
  bind_canvasitem_draw_string = api_core.godot_method_bind_get_method('CanvasItem', 'draw_string')
  bind_canvasitem_draw_style_box = api_core.godot_method_bind_get_method('CanvasItem', 'draw_style_box')
  bind_canvasitem_draw_texture = api_core.godot_method_bind_get_method('CanvasItem', 'draw_texture')
  bind_canvasitem_draw_texture_rect = api_core.godot_method_bind_get_method('CanvasItem', 'draw_texture_rect')
  bind_canvasitem_draw_texture_rect_region = api_core.godot_method_bind_get_method('CanvasItem', 'draw_texture_rect_region')
  bind_canvasitem_force_update_transform = api_core.godot_method_bind_get_method('CanvasItem', 'force_update_transform')
  bind_canvasitem_get_canvas = api_core.godot_method_bind_get_method('CanvasItem', 'get_canvas')
  bind_canvasitem_get_canvas_item = api_core.godot_method_bind_get_method('CanvasItem', 'get_canvas_item')
  bind_canvasitem_get_canvas_transform = api_core.godot_method_bind_get_method('CanvasItem', 'get_canvas_transform')
  bind_canvasitem_get_global_mouse_position = api_core.godot_method_bind_get_method('CanvasItem', 'get_global_mouse_position')
  bind_canvasitem_get_global_transform = api_core.godot_method_bind_get_method('CanvasItem', 'get_global_transform')
  bind_canvasitem_get_global_transform_with_canvas = api_core.godot_method_bind_get_method('CanvasItem', 'get_global_transform_with_canvas')
  bind_canvasitem_get_light_mask = api_core.godot_method_bind_get_method('CanvasItem', 'get_light_mask')
  bind_canvasitem_get_local_mouse_position = api_core.godot_method_bind_get_method('CanvasItem', 'get_local_mouse_position')
  bind_canvasitem_get_material = api_core.godot_method_bind_get_method('CanvasItem', 'get_material')
  bind_canvasitem_get_modulate = api_core.godot_method_bind_get_method('CanvasItem', 'get_modulate')
  bind_canvasitem_get_self_modulate = api_core.godot_method_bind_get_method('CanvasItem', 'get_self_modulate')
  bind_canvasitem_get_transform = api_core.godot_method_bind_get_method('CanvasItem', 'get_transform')
  bind_canvasitem_get_use_parent_material = api_core.godot_method_bind_get_method('CanvasItem', 'get_use_parent_material')
  bind_canvasitem_get_viewport_rect = api_core.godot_method_bind_get_method('CanvasItem', 'get_viewport_rect')
  bind_canvasitem_get_viewport_transform = api_core.godot_method_bind_get_method('CanvasItem', 'get_viewport_transform')
  bind_canvasitem_get_world_2d = api_core.godot_method_bind_get_method('CanvasItem', 'get_world_2d')
  bind_canvasitem_hide = api_core.godot_method_bind_get_method('CanvasItem', 'hide')
  bind_canvasitem_is_draw_behind_parent_enabled = api_core.godot_method_bind_get_method('CanvasItem', 'is_draw_behind_parent_enabled')
  bind_canvasitem_is_local_transform_notification_enabled = api_core.godot_method_bind_get_method('CanvasItem', 'is_local_transform_notification_enabled')
  bind_canvasitem_is_set_as_toplevel = api_core.godot_method_bind_get_method('CanvasItem', 'is_set_as_toplevel')
  bind_canvasitem_is_transform_notification_enabled = api_core.godot_method_bind_get_method('CanvasItem', 'is_transform_notification_enabled')
  bind_canvasitem_is_visible = api_core.godot_method_bind_get_method('CanvasItem', 'is_visible')
  bind_canvasitem_is_visible_in_tree = api_core.godot_method_bind_get_method('CanvasItem', 'is_visible_in_tree')
  bind_canvasitem_make_canvas_position_local = api_core.godot_method_bind_get_method('CanvasItem', 'make_canvas_position_local')
  bind_canvasitem_make_input_local = api_core.godot_method_bind_get_method('CanvasItem', 'make_input_local')
  bind_canvasitem_set_as_toplevel = api_core.godot_method_bind_get_method('CanvasItem', 'set_as_toplevel')
  bind_canvasitem_set_draw_behind_parent = api_core.godot_method_bind_get_method('CanvasItem', 'set_draw_behind_parent')
  bind_canvasitem_set_light_mask = api_core.godot_method_bind_get_method('CanvasItem', 'set_light_mask')
  bind_canvasitem_set_material = api_core.godot_method_bind_get_method('CanvasItem', 'set_material')
  bind_canvasitem_set_modulate = api_core.godot_method_bind_get_method('CanvasItem', 'set_modulate')
  bind_canvasitem_set_notify_local_transform = api_core.godot_method_bind_get_method('CanvasItem', 'set_notify_local_transform')
  bind_canvasitem_set_notify_transform = api_core.godot_method_bind_get_method('CanvasItem', 'set_notify_transform')
  bind_canvasitem_set_self_modulate = api_core.godot_method_bind_get_method('CanvasItem', 'set_self_modulate')
  bind_canvasitem_set_use_parent_material = api_core.godot_method_bind_get_method('CanvasItem', 'set_use_parent_material')
  bind_canvasitem_set_visible = api_core.godot_method_bind_get_method('CanvasItem', 'set_visible')
  bind_canvasitem_show = api_core.godot_method_bind_get_method('CanvasItem', 'show')
  bind_canvasitem_update = api_core.godot_method_bind_get_method('CanvasItem', 'update')

############################Generated class###################################
cdef class CanvasItem(Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CanvasItem")())
##################################Generated Properties#########################################
  @property
  def light_mask(self): 
    return self.get_light_mask()
  @light_mask.setter 
  def light_mask(self,value): 
    self.set_light_mask(value)
  @property
  def material(self): 
    return self.get_material()
  @material.setter 
  def material(self,value): 
    self.set_material(value)
  @property
  def modulate(self): 
    return self.get_modulate()
  @modulate.setter 
  def modulate(self,value): 
    self.set_modulate(value)
  @property
  def self_modulate(self): 
    return self.get_self_modulate()
  @self_modulate.setter 
  def self_modulate(self,value): 
    self.set_self_modulate(value)
  @property
  def show_behind_parent(self): 
    return self.get_show_behind_parent()
  @show_behind_parent.setter 
  def show_behind_parent(self,value): 
    self.set_show_behind_parent(value)
  @property
  def show_on_top(self): 
    return self.get_show_on_top()
  @show_on_top.setter 
  def show_on_top(self,value): 
    self.set_show_on_top(value)
  @property
  def use_parent_material(self): 
    return self.get_use_parent_material()
  @use_parent_material.setter 
  def use_parent_material(self,value): 
    self.set_use_parent_material(value)
  @property
  def visible(self): 
    return self.get_visible()
  @visible.setter 
  def visible(self,value): 
    self.set_visible(value)

##################################Generated Methods#########################################
  def  _draw(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem__draw,self.godot_owner,[NULL,],NULL)
  def  _edit_get_pivot(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_get_pivot,self.godot_owner,[NULL,],&ret)
  def  _edit_get_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_get_position,self.godot_owner,[NULL,],&ret)
  def  _edit_get_rect(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_get_rect,self.godot_owner,[NULL,],&ret)
  def  _edit_get_rotation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_get_rotation,self.godot_owner,[NULL,],&ret)
  def  _edit_get_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_get_scale,self.godot_owner,[NULL,],&ret)
  def  _edit_get_state(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_get_state,self.godot_owner,[NULL,],&ret)
  def  _edit_get_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_get_transform,self.godot_owner,[NULL,],&ret)
  def  _edit_set_pivot(self, pivot):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_set_pivot,self.godot_owner,[NULL,],NULL)
  def  _edit_set_position(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_set_position,self.godot_owner,[NULL,],NULL)
  def  _edit_set_rect(self, rect):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_set_rect,self.godot_owner,[NULL,],NULL)
  def  _edit_set_rotation(self, degrees):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_set_rotation,self.godot_owner,[NULL,],NULL)
  def  _edit_set_scale(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_set_scale,self.godot_owner,[NULL,],NULL)
  def  _edit_set_state(self, state):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_set_state,self.godot_owner,[NULL,],NULL)
  def  _edit_use_pivot(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_use_pivot,self.godot_owner,[NULL,],&ret)
  def  _edit_use_rect(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_use_rect,self.godot_owner,[NULL,],&ret)
  def  _edit_use_rotation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem__edit_use_rotation,self.godot_owner,[NULL,],&ret)
  def  _is_on_top(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem__is_on_top,self.godot_owner,[NULL,],&ret)
  def  _set_on_top(self, on_top):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem__set_on_top,self.godot_owner,[NULL,],NULL)
  def  _toplevel_raise_self(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem__toplevel_raise_self,self.godot_owner,[NULL,],NULL)
  def  _update_callback(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem__update_callback,self.godot_owner,[NULL,],NULL)
  def  draw_arc(self, centerradiusstart_angleend_anglepoint_countcolorwidthantialiased):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_arc,self.godot_owner,[NULL,],NULL)
  def  draw_char(self, fontpositioncharnextmodulate):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_char,self.godot_owner,[NULL,],&ret)
  def  draw_circle(self, positionradiuscolor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_circle,self.godot_owner,[NULL,],NULL)
  def  draw_colored_polygon(self, pointscoloruvstexturenormal_mapantialiased):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_colored_polygon,self.godot_owner,[NULL,],NULL)
  def  draw_line(self, from_, tocolorwidthantialiased):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_line,self.godot_owner,[NULL,],NULL)
  def  draw_mesh(self, meshtexturenormal_maptransformmodulate):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_mesh,self.godot_owner,[NULL,],NULL)
  def  draw_multiline(self, pointscolorwidthantialiased):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_multiline,self.godot_owner,[NULL,],NULL)
  def  draw_multiline_colors(self, pointscolorswidthantialiased):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_multiline_colors,self.godot_owner,[NULL,],NULL)
  def  draw_multimesh(self, multimeshtexturenormal_map):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_multimesh,self.godot_owner,[NULL,],NULL)
  def  draw_polygon(self, pointscolorsuvstexturenormal_mapantialiased):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_polygon,self.godot_owner,[NULL,],NULL)
  def  draw_polyline(self, pointscolorwidthantialiased):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_polyline,self.godot_owner,[NULL,],NULL)
  def  draw_polyline_colors(self, pointscolorswidthantialiased):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_polyline_colors,self.godot_owner,[NULL,],NULL)
  def  draw_primitive(self, pointscolorsuvstexturewidthnormal_map):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_primitive,self.godot_owner,[NULL,],NULL)
  def  draw_rect(self, rectcolorfilledwidthantialiased):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_rect,self.godot_owner,[NULL,],NULL)
  def  draw_set_transform(self, positionrotationscale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_set_transform,self.godot_owner,[NULL,],NULL)
  def  draw_set_transform_matrix(self, xform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_set_transform_matrix,self.godot_owner,[NULL,],NULL)
  def  draw_string(self, fontpositiontextmodulateclip_w):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_string,self.godot_owner,[NULL,],NULL)
  def  draw_style_box(self, style_boxrect):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_style_box,self.godot_owner,[NULL,],NULL)
  def  draw_texture(self, texturepositionmodulatenormal_map):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_texture,self.godot_owner,[NULL,],NULL)
  def  draw_texture_rect(self, texturerecttilemodulatetransposenormal_map):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_texture_rect,self.godot_owner,[NULL,],NULL)
  def  draw_texture_rect_region(self, texturerectsrc_rectmodulatetransposenormal_mapclip_uv):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_draw_texture_rect_region,self.godot_owner,[NULL,],NULL)
  def  force_update_transform(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_force_update_transform,self.godot_owner,[NULL,],NULL)
  def  get_canvas(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_canvas,self.godot_owner,[NULL,],&ret)
  def  get_canvas_item(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_canvas_item,self.godot_owner,[NULL,],&ret)
  def  get_canvas_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_canvas_transform,self.godot_owner,[NULL,],&ret)
  def  get_global_mouse_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_global_mouse_position,self.godot_owner,[NULL,],&ret)
  def  get_global_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_global_transform,self.godot_owner,[NULL,],&ret)
  def  get_global_transform_with_canvas(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_global_transform_with_canvas,self.godot_owner,[NULL,],&ret)
  def  get_light_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_light_mask,self.godot_owner,[NULL,],&ret)
  def  get_local_mouse_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_local_mouse_position,self.godot_owner,[NULL,],&ret)
  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Material ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_material,self.godot_owner,[NULL,],&ret)
  def  get_modulate(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_modulate,self.godot_owner,[NULL,],&ret)
  def  get_self_modulate(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_self_modulate,self.godot_owner,[NULL,],&ret)
  def  get_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_transform,self.godot_owner,[NULL,],&ret)
  def  get_use_parent_material(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_use_parent_material,self.godot_owner,[NULL,],&ret)
  def  get_viewport_rect(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_viewport_rect,self.godot_owner,[NULL,],&ret)
  def  get_viewport_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_viewport_transform,self.godot_owner,[NULL,],&ret)
  def  get_world_2d(self):
    cdef godot_object *_owner = self.godot_owner
    cdef World2D ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_get_world_2d,self.godot_owner,[NULL,],&ret)
  def  hide(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_hide,self.godot_owner,[NULL,],NULL)
  def  is_draw_behind_parent_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_is_draw_behind_parent_enabled,self.godot_owner,[NULL,],&ret)
  def  is_local_transform_notification_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_is_local_transform_notification_enabled,self.godot_owner,[NULL,],&ret)
  def  is_set_as_toplevel(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_is_set_as_toplevel,self.godot_owner,[NULL,],&ret)
  def  is_transform_notification_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_is_transform_notification_enabled,self.godot_owner,[NULL,],&ret)
  def  is_visible(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_is_visible,self.godot_owner,[NULL,],&ret)
  def  is_visible_in_tree(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_is_visible_in_tree,self.godot_owner,[NULL,],&ret)
  def  make_canvas_position_local(self, screen_point):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_make_canvas_position_local,self.godot_owner,[NULL,],&ret)
  def  make_input_local(self, event):
    cdef godot_object *_owner = self.godot_owner
    cdef InputEvent ret
    api_core.godot_method_bind_ptrcall(bind_canvasitem_make_input_local,self.godot_owner,[NULL,],&ret)
  def  set_as_toplevel(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_set_as_toplevel,self.godot_owner,[NULL,],NULL)
  def  set_draw_behind_parent(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_set_draw_behind_parent,self.godot_owner,[NULL,],NULL)
  def  set_light_mask(self, light_mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_set_light_mask,self.godot_owner,[NULL,],NULL)
  def  set_material(self, material):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_set_material,self.godot_owner,[NULL,],NULL)
  def  set_modulate(self, modulate):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_set_modulate,self.godot_owner,[NULL,],NULL)
  def  set_notify_local_transform(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_set_notify_local_transform,self.godot_owner,[NULL,],NULL)
  def  set_notify_transform(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_set_notify_transform,self.godot_owner,[NULL,],NULL)
  def  set_self_modulate(self, self_modulate):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_set_self_modulate,self.godot_owner,[NULL,],NULL)
  def  set_use_parent_material(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_set_use_parent_material,self.godot_owner,[NULL,],NULL)
  def  set_visible(self, visible):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_set_visible,self.godot_owner,[NULL,],NULL)
  def  show(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_show,self.godot_owner,[NULL,],NULL)
  def  update(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasitem_update,self.godot_owner,[NULL,],NULL)
