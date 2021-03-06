from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorplugin_add_autoload_singleton
cdef godot_method_bind *bind_editorplugin_add_control_to_bottom_panel
cdef godot_method_bind *bind_editorplugin_add_control_to_container
cdef godot_method_bind *bind_editorplugin_add_control_to_dock
cdef godot_method_bind *bind_editorplugin_add_custom_type
cdef godot_method_bind *bind_editorplugin_add_export_plugin
cdef godot_method_bind *bind_editorplugin_add_import_plugin
cdef godot_method_bind *bind_editorplugin_add_inspector_plugin
cdef godot_method_bind *bind_editorplugin_add_scene_import_plugin
cdef godot_method_bind *bind_editorplugin_add_spatial_gizmo_plugin
cdef godot_method_bind *bind_editorplugin_add_tool_menu_item
cdef godot_method_bind *bind_editorplugin_add_tool_submenu_item
cdef godot_method_bind *bind_editorplugin_apply_changes
cdef godot_method_bind *bind_editorplugin_build
cdef godot_method_bind *bind_editorplugin_clear
cdef godot_method_bind *bind_editorplugin_disable_plugin
cdef godot_method_bind *bind_editorplugin_edit
cdef godot_method_bind *bind_editorplugin_enable_plugin
cdef godot_method_bind *bind_editorplugin_forward_canvas_draw_over_viewport
cdef godot_method_bind *bind_editorplugin_forward_canvas_force_draw_over_viewport
cdef godot_method_bind *bind_editorplugin_forward_canvas_gui_input
cdef godot_method_bind *bind_editorplugin_forward_spatial_gui_input
cdef godot_method_bind *bind_editorplugin_get_breakpoints
cdef godot_method_bind *bind_editorplugin_get_editor_interface
cdef godot_method_bind *bind_editorplugin_get_plugin_icon
cdef godot_method_bind *bind_editorplugin_get_plugin_name
cdef godot_method_bind *bind_editorplugin_get_script_create_dialog
cdef godot_method_bind *bind_editorplugin_get_state
cdef godot_method_bind *bind_editorplugin_get_undo_redo
cdef godot_method_bind *bind_editorplugin_get_window_layout
cdef godot_method_bind *bind_editorplugin_handles
cdef godot_method_bind *bind_editorplugin_has_main_screen
cdef godot_method_bind *bind_editorplugin_hide_bottom_panel
cdef godot_method_bind *bind_editorplugin_make_bottom_panel_item_visible
cdef godot_method_bind *bind_editorplugin_make_visible
cdef godot_method_bind *bind_editorplugin_queue_save_layout
cdef godot_method_bind *bind_editorplugin_remove_autoload_singleton
cdef godot_method_bind *bind_editorplugin_remove_control_from_bottom_panel
cdef godot_method_bind *bind_editorplugin_remove_control_from_container
cdef godot_method_bind *bind_editorplugin_remove_control_from_docks
cdef godot_method_bind *bind_editorplugin_remove_custom_type
cdef godot_method_bind *bind_editorplugin_remove_export_plugin
cdef godot_method_bind *bind_editorplugin_remove_import_plugin
cdef godot_method_bind *bind_editorplugin_remove_inspector_plugin
cdef godot_method_bind *bind_editorplugin_remove_scene_import_plugin
cdef godot_method_bind *bind_editorplugin_remove_spatial_gizmo_plugin
cdef godot_method_bind *bind_editorplugin_remove_tool_menu_item
cdef godot_method_bind *bind_editorplugin_save_external_data
cdef godot_method_bind *bind_editorplugin_set_force_draw_over_forwarding_enabled
cdef godot_method_bind *bind_editorplugin_set_input_event_forwarding_always_enabled
cdef godot_method_bind *bind_editorplugin_set_state
cdef godot_method_bind *bind_editorplugin_set_window_layout
cdef godot_method_bind *bind_editorplugin_update_overlays
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorplugin_add_autoload_singleton = api_core.godot_method_bind_get_method('EditorPlugin', 'add_autoload_singleton')
  bind_editorplugin_add_control_to_bottom_panel = api_core.godot_method_bind_get_method('EditorPlugin', 'add_control_to_bottom_panel')
  bind_editorplugin_add_control_to_container = api_core.godot_method_bind_get_method('EditorPlugin', 'add_control_to_container')
  bind_editorplugin_add_control_to_dock = api_core.godot_method_bind_get_method('EditorPlugin', 'add_control_to_dock')
  bind_editorplugin_add_custom_type = api_core.godot_method_bind_get_method('EditorPlugin', 'add_custom_type')
  bind_editorplugin_add_export_plugin = api_core.godot_method_bind_get_method('EditorPlugin', 'add_export_plugin')
  bind_editorplugin_add_import_plugin = api_core.godot_method_bind_get_method('EditorPlugin', 'add_import_plugin')
  bind_editorplugin_add_inspector_plugin = api_core.godot_method_bind_get_method('EditorPlugin', 'add_inspector_plugin')
  bind_editorplugin_add_scene_import_plugin = api_core.godot_method_bind_get_method('EditorPlugin', 'add_scene_import_plugin')
  bind_editorplugin_add_spatial_gizmo_plugin = api_core.godot_method_bind_get_method('EditorPlugin', 'add_spatial_gizmo_plugin')
  bind_editorplugin_add_tool_menu_item = api_core.godot_method_bind_get_method('EditorPlugin', 'add_tool_menu_item')
  bind_editorplugin_add_tool_submenu_item = api_core.godot_method_bind_get_method('EditorPlugin', 'add_tool_submenu_item')
  bind_editorplugin_apply_changes = api_core.godot_method_bind_get_method('EditorPlugin', 'apply_changes')
  bind_editorplugin_build = api_core.godot_method_bind_get_method('EditorPlugin', 'build')
  bind_editorplugin_clear = api_core.godot_method_bind_get_method('EditorPlugin', 'clear')
  bind_editorplugin_disable_plugin = api_core.godot_method_bind_get_method('EditorPlugin', 'disable_plugin')
  bind_editorplugin_edit = api_core.godot_method_bind_get_method('EditorPlugin', 'edit')
  bind_editorplugin_enable_plugin = api_core.godot_method_bind_get_method('EditorPlugin', 'enable_plugin')
  bind_editorplugin_forward_canvas_draw_over_viewport = api_core.godot_method_bind_get_method('EditorPlugin', 'forward_canvas_draw_over_viewport')
  bind_editorplugin_forward_canvas_force_draw_over_viewport = api_core.godot_method_bind_get_method('EditorPlugin', 'forward_canvas_force_draw_over_viewport')
  bind_editorplugin_forward_canvas_gui_input = api_core.godot_method_bind_get_method('EditorPlugin', 'forward_canvas_gui_input')
  bind_editorplugin_forward_spatial_gui_input = api_core.godot_method_bind_get_method('EditorPlugin', 'forward_spatial_gui_input')
  bind_editorplugin_get_breakpoints = api_core.godot_method_bind_get_method('EditorPlugin', 'get_breakpoints')
  bind_editorplugin_get_editor_interface = api_core.godot_method_bind_get_method('EditorPlugin', 'get_editor_interface')
  bind_editorplugin_get_plugin_icon = api_core.godot_method_bind_get_method('EditorPlugin', 'get_plugin_icon')
  bind_editorplugin_get_plugin_name = api_core.godot_method_bind_get_method('EditorPlugin', 'get_plugin_name')
  bind_editorplugin_get_script_create_dialog = api_core.godot_method_bind_get_method('EditorPlugin', 'get_script_create_dialog')
  bind_editorplugin_get_state = api_core.godot_method_bind_get_method('EditorPlugin', 'get_state')
  bind_editorplugin_get_undo_redo = api_core.godot_method_bind_get_method('EditorPlugin', 'get_undo_redo')
  bind_editorplugin_get_window_layout = api_core.godot_method_bind_get_method('EditorPlugin', 'get_window_layout')
  bind_editorplugin_handles = api_core.godot_method_bind_get_method('EditorPlugin', 'handles')
  bind_editorplugin_has_main_screen = api_core.godot_method_bind_get_method('EditorPlugin', 'has_main_screen')
  bind_editorplugin_hide_bottom_panel = api_core.godot_method_bind_get_method('EditorPlugin', 'hide_bottom_panel')
  bind_editorplugin_make_bottom_panel_item_visible = api_core.godot_method_bind_get_method('EditorPlugin', 'make_bottom_panel_item_visible')
  bind_editorplugin_make_visible = api_core.godot_method_bind_get_method('EditorPlugin', 'make_visible')
  bind_editorplugin_queue_save_layout = api_core.godot_method_bind_get_method('EditorPlugin', 'queue_save_layout')
  bind_editorplugin_remove_autoload_singleton = api_core.godot_method_bind_get_method('EditorPlugin', 'remove_autoload_singleton')
  bind_editorplugin_remove_control_from_bottom_panel = api_core.godot_method_bind_get_method('EditorPlugin', 'remove_control_from_bottom_panel')
  bind_editorplugin_remove_control_from_container = api_core.godot_method_bind_get_method('EditorPlugin', 'remove_control_from_container')
  bind_editorplugin_remove_control_from_docks = api_core.godot_method_bind_get_method('EditorPlugin', 'remove_control_from_docks')
  bind_editorplugin_remove_custom_type = api_core.godot_method_bind_get_method('EditorPlugin', 'remove_custom_type')
  bind_editorplugin_remove_export_plugin = api_core.godot_method_bind_get_method('EditorPlugin', 'remove_export_plugin')
  bind_editorplugin_remove_import_plugin = api_core.godot_method_bind_get_method('EditorPlugin', 'remove_import_plugin')
  bind_editorplugin_remove_inspector_plugin = api_core.godot_method_bind_get_method('EditorPlugin', 'remove_inspector_plugin')
  bind_editorplugin_remove_scene_import_plugin = api_core.godot_method_bind_get_method('EditorPlugin', 'remove_scene_import_plugin')
  bind_editorplugin_remove_spatial_gizmo_plugin = api_core.godot_method_bind_get_method('EditorPlugin', 'remove_spatial_gizmo_plugin')
  bind_editorplugin_remove_tool_menu_item = api_core.godot_method_bind_get_method('EditorPlugin', 'remove_tool_menu_item')
  bind_editorplugin_save_external_data = api_core.godot_method_bind_get_method('EditorPlugin', 'save_external_data')
  bind_editorplugin_set_force_draw_over_forwarding_enabled = api_core.godot_method_bind_get_method('EditorPlugin', 'set_force_draw_over_forwarding_enabled')
  bind_editorplugin_set_input_event_forwarding_always_enabled = api_core.godot_method_bind_get_method('EditorPlugin', 'set_input_event_forwarding_always_enabled')
  bind_editorplugin_set_state = api_core.godot_method_bind_get_method('EditorPlugin', 'set_state')
  bind_editorplugin_set_window_layout = api_core.godot_method_bind_get_method('EditorPlugin', 'set_window_layout')
  bind_editorplugin_update_overlays = api_core.godot_method_bind_get_method('EditorPlugin', 'update_overlays')

############################Generated class###################################
cdef class EditorPlugin(Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorPlugin")())
##################################Generated Methods#########################################
  def  add_autoload_singleton(self, namepath):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_autoload_singleton,self.godot_owner,[NULL,],NULL)
  def  add_control_to_bottom_panel(self, controltitle):
    cdef godot_object *_owner = self.godot_owner
    cdef ToolButton ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_control_to_bottom_panel,self.godot_owner,[NULL,],&ret)
  def  add_control_to_container(self, containercontrol):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_control_to_container,self.godot_owner,[NULL,],NULL)
  def  add_control_to_dock(self, slotcontrol):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_control_to_dock,self.godot_owner,[NULL,],NULL)
  def  add_custom_type(self, typebasescripticon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_custom_type,self.godot_owner,[NULL,],NULL)
  def  add_export_plugin(self, plugin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_export_plugin,self.godot_owner,[NULL,],NULL)
  def  add_import_plugin(self, importer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_import_plugin,self.godot_owner,[NULL,],NULL)
  def  add_inspector_plugin(self, plugin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_inspector_plugin,self.godot_owner,[NULL,],NULL)
  def  add_scene_import_plugin(self, scene_importer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_scene_import_plugin,self.godot_owner,[NULL,],NULL)
  def  add_spatial_gizmo_plugin(self, plugin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_spatial_gizmo_plugin,self.godot_owner,[NULL,],NULL)
  def  add_tool_menu_item(self, namehandlercallbackud):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_tool_menu_item,self.godot_owner,[NULL,],NULL)
  def  add_tool_submenu_item(self, namesubmenu):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_tool_submenu_item,self.godot_owner,[NULL,],NULL)
  def  apply_changes(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_apply_changes,self.godot_owner,[NULL,],NULL)
  def  build(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_build,self.godot_owner,[NULL,],&ret)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_clear,self.godot_owner,[NULL,],NULL)
  def  disable_plugin(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_disable_plugin,self.godot_owner,[NULL,],NULL)
  def  edit(self, object):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_edit,self.godot_owner,[NULL,],NULL)
  def  enable_plugin(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_enable_plugin,self.godot_owner,[NULL,],NULL)
  def  forward_canvas_draw_over_viewport(self, overlay):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_forward_canvas_draw_over_viewport,self.godot_owner,[NULL,],NULL)
  def  forward_canvas_force_draw_over_viewport(self, overlay):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_forward_canvas_force_draw_over_viewport,self.godot_owner,[NULL,],NULL)
  def  forward_canvas_gui_input(self, event):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_forward_canvas_gui_input,self.godot_owner,[NULL,],&ret)
  def  forward_spatial_gui_input(self, cameraevent):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_forward_spatial_gui_input,self.godot_owner,[NULL,],&ret)
  def  get_breakpoints(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_breakpoints,self.godot_owner,[NULL,],&ret)
  def  get_editor_interface(self):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorInterface ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_editor_interface,self.godot_owner,[NULL,],&ret)
  def  get_plugin_icon(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_plugin_icon,self.godot_owner,[NULL,],&ret)
  def  get_plugin_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_plugin_name,self.godot_owner,[NULL,],&ret)
  def  get_script_create_dialog(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ScriptCreateDialog ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_script_create_dialog,self.godot_owner,[NULL,],&ret)
  def  get_state(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_state,self.godot_owner,[NULL,],&ret)
  def  get_undo_redo(self):
    cdef godot_object *_owner = self.godot_owner
    cdef UndoRedo ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_undo_redo,self.godot_owner,[NULL,],&ret)
  def  get_window_layout(self, layout):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_window_layout,self.godot_owner,[NULL,],NULL)
  def  handles(self, object):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_handles,self.godot_owner,[NULL,],&ret)
  def  has_main_screen(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_has_main_screen,self.godot_owner,[NULL,],&ret)
  def  hide_bottom_panel(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_hide_bottom_panel,self.godot_owner,[NULL,],NULL)
  def  make_bottom_panel_item_visible(self, item):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_make_bottom_panel_item_visible,self.godot_owner,[NULL,],NULL)
  def  make_visible(self, visible):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_make_visible,self.godot_owner,[NULL,],NULL)
  def  queue_save_layout(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_queue_save_layout,self.godot_owner,[NULL,],NULL)
  def  remove_autoload_singleton(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_autoload_singleton,self.godot_owner,[NULL,],NULL)
  def  remove_control_from_bottom_panel(self, control):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_control_from_bottom_panel,self.godot_owner,[NULL,],NULL)
  def  remove_control_from_container(self, containercontrol):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_control_from_container,self.godot_owner,[NULL,],NULL)
  def  remove_control_from_docks(self, control):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_control_from_docks,self.godot_owner,[NULL,],NULL)
  def  remove_custom_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_custom_type,self.godot_owner,[NULL,],NULL)
  def  remove_export_plugin(self, plugin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_export_plugin,self.godot_owner,[NULL,],NULL)
  def  remove_import_plugin(self, importer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_import_plugin,self.godot_owner,[NULL,],NULL)
  def  remove_inspector_plugin(self, plugin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_inspector_plugin,self.godot_owner,[NULL,],NULL)
  def  remove_scene_import_plugin(self, scene_importer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_scene_import_plugin,self.godot_owner,[NULL,],NULL)
  def  remove_spatial_gizmo_plugin(self, plugin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_spatial_gizmo_plugin,self.godot_owner,[NULL,],NULL)
  def  remove_tool_menu_item(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_tool_menu_item,self.godot_owner,[NULL,],NULL)
  def  save_external_data(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_save_external_data,self.godot_owner,[NULL,],NULL)
  def  set_force_draw_over_forwarding_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_set_force_draw_over_forwarding_enabled,self.godot_owner,[NULL,],NULL)
  def  set_input_event_forwarding_always_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_set_input_event_forwarding_always_enabled,self.godot_owner,[NULL,],NULL)
  def  set_state(self, state):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_set_state,self.godot_owner,[NULL,],NULL)
  def  set_window_layout(self, layout):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_set_window_layout,self.godot_owner,[NULL,],NULL)
  def  update_overlays(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_editorplugin_update_overlays,self.godot_owner,[NULL,],&ret)
