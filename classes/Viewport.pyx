
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
cimport classes.InputEvent
cimport classes.InputEvent
cimport classes.World
cimport classes.World2D
cimport classes.InputEvent
cimport classes.Node 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_viewport__gui_remove_focus
cdef godot_method_bind *bind_viewport__gui_show_tooltip
cdef godot_method_bind *bind_viewport__own_world_changed
cdef godot_method_bind *bind_viewport__post_gui_grab_click_focus
cdef godot_method_bind *bind_viewport__subwindow_visibility_changed
cdef godot_method_bind *bind_viewport__vp_input
cdef godot_method_bind *bind_viewport__vp_input_text
cdef godot_method_bind *bind_viewport__vp_unhandled_input
cdef godot_method_bind *bind_viewport_find_world
cdef godot_method_bind *bind_viewport_find_world_2d
cdef godot_method_bind *bind_viewport_get_camera
cdef godot_method_bind *bind_viewport_get_canvas_transform
cdef godot_method_bind *bind_viewport_get_clear_mode
cdef godot_method_bind *bind_viewport_get_debug_draw
cdef godot_method_bind *bind_viewport_get_final_transform
cdef godot_method_bind *bind_viewport_get_global_canvas_transform
cdef godot_method_bind *bind_viewport_get_hdr
cdef godot_method_bind *bind_viewport_get_keep_3d_linear
cdef godot_method_bind *bind_viewport_get_modal_stack_top
cdef godot_method_bind *bind_viewport_get_mouse_position
cdef godot_method_bind *bind_viewport_get_msaa
cdef godot_method_bind *bind_viewport_get_physics_object_picking
cdef godot_method_bind *bind_viewport_get_render_info
cdef godot_method_bind *bind_viewport_get_shadow_atlas_quadrant_subdiv
cdef godot_method_bind *bind_viewport_get_shadow_atlas_size
cdef godot_method_bind *bind_viewport_get_size
cdef godot_method_bind *bind_viewport_get_size_override
cdef godot_method_bind *bind_viewport_get_texture
cdef godot_method_bind *bind_viewport_get_update_mode
cdef godot_method_bind *bind_viewport_get_usage
cdef godot_method_bind *bind_viewport_get_vflip
cdef godot_method_bind *bind_viewport_get_viewport_rid
cdef godot_method_bind *bind_viewport_get_visible_rect
cdef godot_method_bind *bind_viewport_get_world
cdef godot_method_bind *bind_viewport_get_world_2d
cdef godot_method_bind *bind_viewport_gui_get_drag_data
cdef godot_method_bind *bind_viewport_gui_has_modal_stack
cdef godot_method_bind *bind_viewport_gui_is_dragging
cdef godot_method_bind *bind_viewport_has_transparent_background
cdef godot_method_bind *bind_viewport_input
cdef godot_method_bind *bind_viewport_is_3d_disabled
cdef godot_method_bind *bind_viewport_is_audio_listener
cdef godot_method_bind *bind_viewport_is_audio_listener_2d
cdef godot_method_bind *bind_viewport_is_handling_input_locally
cdef godot_method_bind *bind_viewport_is_input_disabled
cdef godot_method_bind *bind_viewport_is_input_handled
cdef godot_method_bind *bind_viewport_is_size_override_enabled
cdef godot_method_bind *bind_viewport_is_size_override_stretch_enabled
cdef godot_method_bind *bind_viewport_is_snap_controls_to_pixels_enabled
cdef godot_method_bind *bind_viewport_is_using_own_world
cdef godot_method_bind *bind_viewport_is_using_render_direct_to_screen
cdef godot_method_bind *bind_viewport_set_as_audio_listener
cdef godot_method_bind *bind_viewport_set_as_audio_listener_2d
cdef godot_method_bind *bind_viewport_set_attach_to_screen_rect
cdef godot_method_bind *bind_viewport_set_canvas_transform
cdef godot_method_bind *bind_viewport_set_clear_mode
cdef godot_method_bind *bind_viewport_set_debug_draw
cdef godot_method_bind *bind_viewport_set_disable_3d
cdef godot_method_bind *bind_viewport_set_disable_input
cdef godot_method_bind *bind_viewport_set_global_canvas_transform
cdef godot_method_bind *bind_viewport_set_handle_input_locally
cdef godot_method_bind *bind_viewport_set_hdr
cdef godot_method_bind *bind_viewport_set_input_as_handled
cdef godot_method_bind *bind_viewport_set_keep_3d_linear
cdef godot_method_bind *bind_viewport_set_msaa
cdef godot_method_bind *bind_viewport_set_physics_object_picking
cdef godot_method_bind *bind_viewport_set_shadow_atlas_quadrant_subdiv
cdef godot_method_bind *bind_viewport_set_shadow_atlas_size
cdef godot_method_bind *bind_viewport_set_size
cdef godot_method_bind *bind_viewport_set_size_override
cdef godot_method_bind *bind_viewport_set_size_override_stretch
cdef godot_method_bind *bind_viewport_set_snap_controls_to_pixels
cdef godot_method_bind *bind_viewport_set_transparent_background
cdef godot_method_bind *bind_viewport_set_update_mode
cdef godot_method_bind *bind_viewport_set_usage
cdef godot_method_bind *bind_viewport_set_use_arvr
cdef godot_method_bind *bind_viewport_set_use_own_world
cdef godot_method_bind *bind_viewport_set_use_render_direct_to_screen
cdef godot_method_bind *bind_viewport_set_vflip
cdef godot_method_bind *bind_viewport_set_world
cdef godot_method_bind *bind_viewport_set_world_2d
cdef godot_method_bind *bind_viewport_unhandled_input
cdef godot_method_bind *bind_viewport_update_worlds
cdef godot_method_bind *bind_viewport_use_arvr
cdef godot_method_bind *bind_viewport_warp_mouse
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_viewport__gui_remove_focus = api_core.godot_method_bind_get_method('Viewport', '_gui_remove_focus')
  bind_viewport__gui_show_tooltip = api_core.godot_method_bind_get_method('Viewport', '_gui_show_tooltip')
  bind_viewport__own_world_changed = api_core.godot_method_bind_get_method('Viewport', '_own_world_changed')
  bind_viewport__post_gui_grab_click_focus = api_core.godot_method_bind_get_method('Viewport', '_post_gui_grab_click_focus')
  bind_viewport__subwindow_visibility_changed = api_core.godot_method_bind_get_method('Viewport', '_subwindow_visibility_changed')
  bind_viewport__vp_input = api_core.godot_method_bind_get_method('Viewport', '_vp_input')
  bind_viewport__vp_input_text = api_core.godot_method_bind_get_method('Viewport', '_vp_input_text')
  bind_viewport__vp_unhandled_input = api_core.godot_method_bind_get_method('Viewport', '_vp_unhandled_input')
  bind_viewport_find_world = api_core.godot_method_bind_get_method('Viewport', 'find_world')
  bind_viewport_find_world_2d = api_core.godot_method_bind_get_method('Viewport', 'find_world_2d')
  bind_viewport_get_camera = api_core.godot_method_bind_get_method('Viewport', 'get_camera')
  bind_viewport_get_canvas_transform = api_core.godot_method_bind_get_method('Viewport', 'get_canvas_transform')
  bind_viewport_get_clear_mode = api_core.godot_method_bind_get_method('Viewport', 'get_clear_mode')
  bind_viewport_get_debug_draw = api_core.godot_method_bind_get_method('Viewport', 'get_debug_draw')
  bind_viewport_get_final_transform = api_core.godot_method_bind_get_method('Viewport', 'get_final_transform')
  bind_viewport_get_global_canvas_transform = api_core.godot_method_bind_get_method('Viewport', 'get_global_canvas_transform')
  bind_viewport_get_hdr = api_core.godot_method_bind_get_method('Viewport', 'get_hdr')
  bind_viewport_get_keep_3d_linear = api_core.godot_method_bind_get_method('Viewport', 'get_keep_3d_linear')
  bind_viewport_get_modal_stack_top = api_core.godot_method_bind_get_method('Viewport', 'get_modal_stack_top')
  bind_viewport_get_mouse_position = api_core.godot_method_bind_get_method('Viewport', 'get_mouse_position')
  bind_viewport_get_msaa = api_core.godot_method_bind_get_method('Viewport', 'get_msaa')
  bind_viewport_get_physics_object_picking = api_core.godot_method_bind_get_method('Viewport', 'get_physics_object_picking')
  bind_viewport_get_render_info = api_core.godot_method_bind_get_method('Viewport', 'get_render_info')
  bind_viewport_get_shadow_atlas_quadrant_subdiv = api_core.godot_method_bind_get_method('Viewport', 'get_shadow_atlas_quadrant_subdiv')
  bind_viewport_get_shadow_atlas_size = api_core.godot_method_bind_get_method('Viewport', 'get_shadow_atlas_size')
  bind_viewport_get_size = api_core.godot_method_bind_get_method('Viewport', 'get_size')
  bind_viewport_get_size_override = api_core.godot_method_bind_get_method('Viewport', 'get_size_override')
  bind_viewport_get_texture = api_core.godot_method_bind_get_method('Viewport', 'get_texture')
  bind_viewport_get_update_mode = api_core.godot_method_bind_get_method('Viewport', 'get_update_mode')
  bind_viewport_get_usage = api_core.godot_method_bind_get_method('Viewport', 'get_usage')
  bind_viewport_get_vflip = api_core.godot_method_bind_get_method('Viewport', 'get_vflip')
  bind_viewport_get_viewport_rid = api_core.godot_method_bind_get_method('Viewport', 'get_viewport_rid')
  bind_viewport_get_visible_rect = api_core.godot_method_bind_get_method('Viewport', 'get_visible_rect')
  bind_viewport_get_world = api_core.godot_method_bind_get_method('Viewport', 'get_world')
  bind_viewport_get_world_2d = api_core.godot_method_bind_get_method('Viewport', 'get_world_2d')
  bind_viewport_gui_get_drag_data = api_core.godot_method_bind_get_method('Viewport', 'gui_get_drag_data')
  bind_viewport_gui_has_modal_stack = api_core.godot_method_bind_get_method('Viewport', 'gui_has_modal_stack')
  bind_viewport_gui_is_dragging = api_core.godot_method_bind_get_method('Viewport', 'gui_is_dragging')
  bind_viewport_has_transparent_background = api_core.godot_method_bind_get_method('Viewport', 'has_transparent_background')
  bind_viewport_input = api_core.godot_method_bind_get_method('Viewport', 'input')
  bind_viewport_is_3d_disabled = api_core.godot_method_bind_get_method('Viewport', 'is_3d_disabled')
  bind_viewport_is_audio_listener = api_core.godot_method_bind_get_method('Viewport', 'is_audio_listener')
  bind_viewport_is_audio_listener_2d = api_core.godot_method_bind_get_method('Viewport', 'is_audio_listener_2d')
  bind_viewport_is_handling_input_locally = api_core.godot_method_bind_get_method('Viewport', 'is_handling_input_locally')
  bind_viewport_is_input_disabled = api_core.godot_method_bind_get_method('Viewport', 'is_input_disabled')
  bind_viewport_is_input_handled = api_core.godot_method_bind_get_method('Viewport', 'is_input_handled')
  bind_viewport_is_size_override_enabled = api_core.godot_method_bind_get_method('Viewport', 'is_size_override_enabled')
  bind_viewport_is_size_override_stretch_enabled = api_core.godot_method_bind_get_method('Viewport', 'is_size_override_stretch_enabled')
  bind_viewport_is_snap_controls_to_pixels_enabled = api_core.godot_method_bind_get_method('Viewport', 'is_snap_controls_to_pixels_enabled')
  bind_viewport_is_using_own_world = api_core.godot_method_bind_get_method('Viewport', 'is_using_own_world')
  bind_viewport_is_using_render_direct_to_screen = api_core.godot_method_bind_get_method('Viewport', 'is_using_render_direct_to_screen')
  bind_viewport_set_as_audio_listener = api_core.godot_method_bind_get_method('Viewport', 'set_as_audio_listener')
  bind_viewport_set_as_audio_listener_2d = api_core.godot_method_bind_get_method('Viewport', 'set_as_audio_listener_2d')
  bind_viewport_set_attach_to_screen_rect = api_core.godot_method_bind_get_method('Viewport', 'set_attach_to_screen_rect')
  bind_viewport_set_canvas_transform = api_core.godot_method_bind_get_method('Viewport', 'set_canvas_transform')
  bind_viewport_set_clear_mode = api_core.godot_method_bind_get_method('Viewport', 'set_clear_mode')
  bind_viewport_set_debug_draw = api_core.godot_method_bind_get_method('Viewport', 'set_debug_draw')
  bind_viewport_set_disable_3d = api_core.godot_method_bind_get_method('Viewport', 'set_disable_3d')
  bind_viewport_set_disable_input = api_core.godot_method_bind_get_method('Viewport', 'set_disable_input')
  bind_viewport_set_global_canvas_transform = api_core.godot_method_bind_get_method('Viewport', 'set_global_canvas_transform')
  bind_viewport_set_handle_input_locally = api_core.godot_method_bind_get_method('Viewport', 'set_handle_input_locally')
  bind_viewport_set_hdr = api_core.godot_method_bind_get_method('Viewport', 'set_hdr')
  bind_viewport_set_input_as_handled = api_core.godot_method_bind_get_method('Viewport', 'set_input_as_handled')
  bind_viewport_set_keep_3d_linear = api_core.godot_method_bind_get_method('Viewport', 'set_keep_3d_linear')
  bind_viewport_set_msaa = api_core.godot_method_bind_get_method('Viewport', 'set_msaa')
  bind_viewport_set_physics_object_picking = api_core.godot_method_bind_get_method('Viewport', 'set_physics_object_picking')
  bind_viewport_set_shadow_atlas_quadrant_subdiv = api_core.godot_method_bind_get_method('Viewport', 'set_shadow_atlas_quadrant_subdiv')
  bind_viewport_set_shadow_atlas_size = api_core.godot_method_bind_get_method('Viewport', 'set_shadow_atlas_size')
  bind_viewport_set_size = api_core.godot_method_bind_get_method('Viewport', 'set_size')
  bind_viewport_set_size_override = api_core.godot_method_bind_get_method('Viewport', 'set_size_override')
  bind_viewport_set_size_override_stretch = api_core.godot_method_bind_get_method('Viewport', 'set_size_override_stretch')
  bind_viewport_set_snap_controls_to_pixels = api_core.godot_method_bind_get_method('Viewport', 'set_snap_controls_to_pixels')
  bind_viewport_set_transparent_background = api_core.godot_method_bind_get_method('Viewport', 'set_transparent_background')
  bind_viewport_set_update_mode = api_core.godot_method_bind_get_method('Viewport', 'set_update_mode')
  bind_viewport_set_usage = api_core.godot_method_bind_get_method('Viewport', 'set_usage')
  bind_viewport_set_use_arvr = api_core.godot_method_bind_get_method('Viewport', 'set_use_arvr')
  bind_viewport_set_use_own_world = api_core.godot_method_bind_get_method('Viewport', 'set_use_own_world')
  bind_viewport_set_use_render_direct_to_screen = api_core.godot_method_bind_get_method('Viewport', 'set_use_render_direct_to_screen')
  bind_viewport_set_vflip = api_core.godot_method_bind_get_method('Viewport', 'set_vflip')
  bind_viewport_set_world = api_core.godot_method_bind_get_method('Viewport', 'set_world')
  bind_viewport_set_world_2d = api_core.godot_method_bind_get_method('Viewport', 'set_world_2d')
  bind_viewport_unhandled_input = api_core.godot_method_bind_get_method('Viewport', 'unhandled_input')
  bind_viewport_update_worlds = api_core.godot_method_bind_get_method('Viewport', 'update_worlds')
  bind_viewport_use_arvr = api_core.godot_method_bind_get_method('Viewport', 'use_arvr')
  bind_viewport_warp_mouse = api_core.godot_method_bind_get_method('Viewport', 'warp_mouse')

############################Generated class###################################
cdef class Viewport(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Viewport")())
##################################Generated Properties#########################################
  @property
  def arvr(self): 
    return self.get_arvr()
  @arvr.setter 
  def arvr(self,value): 
    self.set_arvr(value)
  @property
  def audio_listener_enable_2d(self): 
    return self.get_audio_listener_enable_2d()
  @audio_listener_enable_2d.setter 
  def audio_listener_enable_2d(self,value): 
    self.set_audio_listener_enable_2d(value)
  @property
  def audio_listener_enable_3d(self): 
    return self.get_audio_listener_enable_3d()
  @audio_listener_enable_3d.setter 
  def audio_listener_enable_3d(self,value): 
    self.set_audio_listener_enable_3d(value)
  @property
  def canvas_transform(self): 
    return self.get_canvas_transform()
  @canvas_transform.setter 
  def canvas_transform(self,value): 
    self.set_canvas_transform(value)
  @property
  def debug_draw(self): 
    return self.get_debug_draw()
  @debug_draw.setter 
  def debug_draw(self,value): 
    self.set_debug_draw(value)
  @property
  def disable_3d(self): 
    return self.get_disable_3d()
  @disable_3d.setter 
  def disable_3d(self,value): 
    self.set_disable_3d(value)
  @property
  def global_canvas_transform(self): 
    return self.get_global_canvas_transform()
  @global_canvas_transform.setter 
  def global_canvas_transform(self,value): 
    self.set_global_canvas_transform(value)
  @property
  def gui_disable_input(self): 
    return self.get_gui_disable_input()
  @gui_disable_input.setter 
  def gui_disable_input(self,value): 
    self.set_gui_disable_input(value)
  @property
  def gui_snap_controls_to_pixels(self): 
    return self.get_gui_snap_controls_to_pixels()
  @gui_snap_controls_to_pixels.setter 
  def gui_snap_controls_to_pixels(self,value): 
    self.set_gui_snap_controls_to_pixels(value)
  @property
  def handle_input_locally(self): 
    return self.get_handle_input_locally()
  @handle_input_locally.setter 
  def handle_input_locally(self,value): 
    self.set_handle_input_locally(value)
  @property
  def hdr(self): 
    return self.get_hdr()
  @hdr.setter 
  def hdr(self,value): 
    self.set_hdr(value)
  @property
  def keep_3d_linear(self): 
    return self.get_keep_3d_linear()
  @keep_3d_linear.setter 
  def keep_3d_linear(self,value): 
    self.set_keep_3d_linear(value)
  @property
  def msaa(self): 
    return self.get_msaa()
  @msaa.setter 
  def msaa(self,value): 
    self.set_msaa(value)
  @property
  def own_world(self): 
    return self.get_own_world()
  @own_world.setter 
  def own_world(self,value): 
    self.set_own_world(value)
  @property
  def physics_object_picking(self): 
    return self.get_physics_object_picking()
  @physics_object_picking.setter 
  def physics_object_picking(self,value): 
    self.set_physics_object_picking(value)
  @property
  def render_direct_to_screen(self): 
    return self.get_render_direct_to_screen()
  @render_direct_to_screen.setter 
  def render_direct_to_screen(self,value): 
    self.set_render_direct_to_screen(value)
  @property
  def render_target_clear_mode(self): 
    return self.get_render_target_clear_mode()
  @render_target_clear_mode.setter 
  def render_target_clear_mode(self,value): 
    self.set_render_target_clear_mode(value)
  @property
  def render_target_update_mode(self): 
    return self.get_render_target_update_mode()
  @render_target_update_mode.setter 
  def render_target_update_mode(self,value): 
    self.set_render_target_update_mode(value)
  @property
  def render_target_v_flip(self): 
    return self.get_render_target_v_flip()
  @render_target_v_flip.setter 
  def render_target_v_flip(self,value): 
    self.set_render_target_v_flip(value)
  @property
  def shadow_atlas_quad_0(self): 
    return self.get_shadow_atlas_quad_0()
  @shadow_atlas_quad_0.setter 
  def shadow_atlas_quad_0(self,value): 
    self.set_shadow_atlas_quad_0(value)
  @property
  def shadow_atlas_quad_1(self): 
    return self.get_shadow_atlas_quad_1()
  @shadow_atlas_quad_1.setter 
  def shadow_atlas_quad_1(self,value): 
    self.set_shadow_atlas_quad_1(value)
  @property
  def shadow_atlas_quad_2(self): 
    return self.get_shadow_atlas_quad_2()
  @shadow_atlas_quad_2.setter 
  def shadow_atlas_quad_2(self,value): 
    self.set_shadow_atlas_quad_2(value)
  @property
  def shadow_atlas_quad_3(self): 
    return self.get_shadow_atlas_quad_3()
  @shadow_atlas_quad_3.setter 
  def shadow_atlas_quad_3(self,value): 
    self.set_shadow_atlas_quad_3(value)
  @property
  def shadow_atlas_size(self): 
    return self.get_shadow_atlas_size()
  @shadow_atlas_size.setter 
  def shadow_atlas_size(self,value): 
    self.set_shadow_atlas_size(value)
  @property
  def size(self): 
    return self.get_size()
  @size.setter 
  def size(self,value): 
    self.set_size(value)
  @property
  def size_override_stretch(self): 
    return self.get_size_override_stretch()
  @size_override_stretch.setter 
  def size_override_stretch(self,value): 
    self.set_size_override_stretch(value)
  @property
  def transparent_bg(self): 
    return self.get_transparent_bg()
  @transparent_bg.setter 
  def transparent_bg(self,value): 
    self.set_transparent_bg(value)
  @property
  def usage(self): 
    return self.get_usage()
  @usage.setter 
  def usage(self,value): 
    self.set_usage(value)
  @property
  def world(self): 
    return self.get_world()
  @world.setter 
  def world(self,value): 
    self.set_world(value)
  @property
  def world_2d(self): 
    return self.get_world_2d()
  @world_2d.setter 
  def world_2d(self,value): 
    self.set_world_2d(value)

##################################Generated Methods#########################################
  def  _gui_remove_focus(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_viewport__gui_remove_focus,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _gui_show_tooltip(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_viewport__gui_show_tooltip,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _own_world_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_viewport__own_world_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _post_gui_grab_click_focus(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_viewport__post_gui_grab_click_focus,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _subwindow_visibility_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_viewport__subwindow_visibility_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _vp_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewport__vp_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _vp_input_text(self,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &text._native
    api_core.godot_method_bind_ptrcall(bind_viewport__vp_input_text,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _vp_unhandled_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewport__vp_unhandled_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  find_world(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_find_world,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  find_world_2d(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_find_world_2d,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_camera(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_camera,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_canvas_transform(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_canvas_transform,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  get_clear_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Viewport_ClearMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_clear_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_debug_draw(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Viewport_DebugDraw* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_debug_draw,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_final_transform(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_final_transform,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  get_global_canvas_transform(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_global_canvas_transform,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  get_hdr(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_hdr,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_keep_3d_linear(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_keep_3d_linear,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_modal_stack_top(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_modal_stack_top,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_mouse_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_mouse_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_msaa(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Viewport_MSAA* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_msaa,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_physics_object_picking(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_physics_object_picking,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_render_info(self,  int info):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &info
    api_core.godot_method_bind_ptrcall(bind_viewport_get_render_info,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_shadow_atlas_quadrant_subdiv(self,  int quadrant):
    cdef godot_object *_owner = self.godot_owner

    cdef Viewport_ShadowAtlasQuadrantSubdiv* ret = NULL;

    cdef void *args[1]

    args[0] = &quadrant
    api_core.godot_method_bind_ptrcall(bind_viewport_get_shadow_atlas_quadrant_subdiv,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_shadow_atlas_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_shadow_atlas_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_size_override(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_size_override,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_update_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Viewport_UpdateMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_update_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_usage(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Viewport_Usage* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_usage,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_vflip(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_vflip,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_viewport_rid(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_viewport_rid,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  get_visible_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_visible_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_world(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_world,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_world_2d(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_get_world_2d,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  gui_get_drag_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_gui_get_drag_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  gui_has_modal_stack(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_gui_has_modal_stack,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  gui_is_dragging(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_gui_is_dragging,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_transparent_background(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_has_transparent_background,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  input(self,  classes.InputEvent.InputEvent local_event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = local_event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewport_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  is_3d_disabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_is_3d_disabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_audio_listener(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_is_audio_listener,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_audio_listener_2d(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_is_audio_listener_2d,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_handling_input_locally(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_is_handling_input_locally,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_input_disabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_is_input_disabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_input_handled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_is_input_handled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_size_override_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_is_size_override_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_size_override_stretch_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_is_size_override_stretch_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_snap_controls_to_pixels_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_is_snap_controls_to_pixels_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_using_own_world(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_is_using_own_world,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_using_render_direct_to_screen(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_is_using_render_direct_to_screen,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_as_audio_listener(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_viewport_set_as_audio_listener,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_as_audio_listener_2d(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_viewport_set_as_audio_listener_2d,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_attach_to_screen_rect(self,  Rect2 rect):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rect._native
    api_core.godot_method_bind_ptrcall(bind_viewport_set_attach_to_screen_rect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_canvas_transform(self,  Transform2D xform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &xform._native
    api_core.godot_method_bind_ptrcall(bind_viewport_set_canvas_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_clear_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_viewport_set_clear_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_debug_draw(self,  int debug_draw):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &debug_draw
    api_core.godot_method_bind_ptrcall(bind_viewport_set_debug_draw,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_disable_3d(self,  bool disable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &disable
    api_core.godot_method_bind_ptrcall(bind_viewport_set_disable_3d,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_disable_input(self,  bool disable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &disable
    api_core.godot_method_bind_ptrcall(bind_viewport_set_disable_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_global_canvas_transform(self,  Transform2D xform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &xform._native
    api_core.godot_method_bind_ptrcall(bind_viewport_set_global_canvas_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_handle_input_locally(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_viewport_set_handle_input_locally,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hdr(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_viewport_set_hdr,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_input_as_handled(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_viewport_set_input_as_handled,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_keep_3d_linear(self,  bool keep_3d_linear):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &keep_3d_linear
    api_core.godot_method_bind_ptrcall(bind_viewport_set_keep_3d_linear,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_msaa(self,  int msaa):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &msaa
    api_core.godot_method_bind_ptrcall(bind_viewport_set_msaa,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_physics_object_picking(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_viewport_set_physics_object_picking,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shadow_atlas_quadrant_subdiv(self,  int quadrant,  int subdiv):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &quadrant
    args[1] = &subdiv
    api_core.godot_method_bind_ptrcall(bind_viewport_set_shadow_atlas_quadrant_subdiv,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shadow_atlas_size(self,  int size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_viewport_set_shadow_atlas_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_size(self,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size._native
    api_core.godot_method_bind_ptrcall(bind_viewport_set_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_size_override(self,  bool enable,  Vector2 size,  Vector2 margin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &enable
    args[1] = &size._native
    args[2] = &margin._native
    api_core.godot_method_bind_ptrcall(bind_viewport_set_size_override,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_size_override_stretch(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_viewport_set_size_override_stretch,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_snap_controls_to_pixels(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_viewport_set_snap_controls_to_pixels,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_transparent_background(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_viewport_set_transparent_background,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_update_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_viewport_set_update_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_usage(self,  int usage):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &usage
    api_core.godot_method_bind_ptrcall(bind_viewport_set_usage,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_arvr(self,  bool use):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &use
    api_core.godot_method_bind_ptrcall(bind_viewport_set_use_arvr,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_own_world(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_viewport_set_use_own_world,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_render_direct_to_screen(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_viewport_set_use_render_direct_to_screen,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vflip(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_viewport_set_vflip,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_world(self,  classes.World.World world):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = world.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewport_set_world,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_world_2d(self,  classes.World2D.World2D world_2d):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = world_2d.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewport_set_world_2d,self.godot_owner,args,NULL)
    hello('hallo2')
  def  unhandled_input(self,  classes.InputEvent.InputEvent local_event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = local_event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewport_unhandled_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  update_worlds(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_viewport_update_worlds,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  use_arvr(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewport_use_arvr,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  warp_mouse(self,  Vector2 to_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &to_position._native
    api_core.godot_method_bind_ptrcall(bind_viewport_warp_mouse,self.godot_owner,args,NULL)
    hello('hallo2')
