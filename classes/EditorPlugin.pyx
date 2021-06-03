
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
cimport classes.Control
cimport classes.Control
cimport classes.Control
cimport classes.Script
cimport classes.Texture
cimport classes.EditorExportPlugin
cimport classes.EditorImportPlugin
cimport classes.EditorInspectorPlugin
cimport classes.EditorSceneImporter
cimport classes.EditorSpatialGizmoPlugin
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Control
cimport classes.Control
cimport classes.InputEvent
cimport classes.Camera
cimport classes.InputEvent
cimport classes.ConfigFile
cimport classes.Object
cimport classes.Control
cimport classes.Control
cimport classes.Control
cimport classes.Control
cimport classes.EditorExportPlugin
cimport classes.EditorImportPlugin
cimport classes.EditorInspectorPlugin
cimport classes.EditorSceneImporter
cimport classes.EditorSpatialGizmoPlugin
cimport classes.ConfigFile
cimport classes.Node 

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
cdef class EditorPlugin(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorPlugin")())
##################################Generated Methods#########################################
  def  add_autoload_singleton(self,  String name,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &path._native
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_autoload_singleton,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_control_to_bottom_panel(self,  classes.Control.Control control,  String title):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = control.godot_owner
    args[1] = &title._native
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_control_to_bottom_panel,self.godot_owner,args,&ret)
    hello('hallo2')
  def  add_control_to_container(self,  int container,  classes.Control.Control control):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &container
    args[1] = control.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_control_to_container,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_control_to_dock(self,  int slot,  classes.Control.Control control):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &slot
    args[1] = control.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_control_to_dock,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_custom_type(self,  String type,  String base,  classes.Script.Script script,  classes.Texture.Texture icon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &type._native
    args[1] = &base._native
    args[2] = script.godot_owner
    args[3] = icon.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_custom_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_export_plugin(self,  classes.EditorExportPlugin.EditorExportPlugin plugin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = plugin.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_export_plugin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_import_plugin(self,  classes.EditorImportPlugin.EditorImportPlugin importer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = importer.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_import_plugin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_inspector_plugin(self,  classes.EditorInspectorPlugin.EditorInspectorPlugin plugin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = plugin.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_inspector_plugin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_scene_import_plugin(self,  classes.EditorSceneImporter.EditorSceneImporter scene_importer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = scene_importer.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_scene_import_plugin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_spatial_gizmo_plugin(self,  classes.EditorSpatialGizmoPlugin.EditorSpatialGizmoPlugin plugin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = plugin.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_spatial_gizmo_plugin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_tool_menu_item(self,  String name,  classes.Object.Object handler,  String callback,  Variant ud):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &name._native
    args[1] = handler.godot_owner
    args[2] = &callback._native
    args[3] = &ud._native
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_tool_menu_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_tool_submenu_item(self,  String name,  classes.Object.Object submenu):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = submenu.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_add_tool_submenu_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  apply_changes(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorplugin_apply_changes,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  build(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorplugin_build,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorplugin_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  disable_plugin(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorplugin_disable_plugin,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  edit(self,  classes.Object.Object object):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = object.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_edit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  enable_plugin(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorplugin_enable_plugin,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  forward_canvas_draw_over_viewport(self,  classes.Control.Control overlay):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = overlay.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_forward_canvas_draw_over_viewport,self.godot_owner,args,NULL)
    hello('hallo2')
  def  forward_canvas_force_draw_over_viewport(self,  classes.Control.Control overlay):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = overlay.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_forward_canvas_force_draw_over_viewport,self.godot_owner,args,NULL)
    hello('hallo2')
  def  forward_canvas_gui_input(self,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_forward_canvas_gui_input,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  forward_spatial_gui_input(self,  classes.Camera.Camera camera,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = camera.godot_owner
    args[1] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_forward_spatial_gui_input,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_breakpoints(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_breakpoints,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_editor_interface(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_editor_interface,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_plugin_icon(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_plugin_icon,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_plugin_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_plugin_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_script_create_dialog(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_script_create_dialog,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_state(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_state,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  get_undo_redo(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_undo_redo,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_window_layout(self,  classes.ConfigFile.ConfigFile layout):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = layout.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_get_window_layout,self.godot_owner,args,NULL)
    hello('hallo2')
  def  handles(self,  classes.Object.Object object):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = object.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_handles,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_main_screen(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorplugin_has_main_screen,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  hide_bottom_panel(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorplugin_hide_bottom_panel,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  make_bottom_panel_item_visible(self,  classes.Control.Control item):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = item.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_make_bottom_panel_item_visible,self.godot_owner,args,NULL)
    hello('hallo2')
  def  make_visible(self,  bool visible):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &visible
    api_core.godot_method_bind_ptrcall(bind_editorplugin_make_visible,self.godot_owner,args,NULL)
    hello('hallo2')
  def  queue_save_layout(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorplugin_queue_save_layout,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  remove_autoload_singleton(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_autoload_singleton,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_control_from_bottom_panel(self,  classes.Control.Control control):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = control.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_control_from_bottom_panel,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_control_from_container(self,  int container,  classes.Control.Control control):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &container
    args[1] = control.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_control_from_container,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_control_from_docks(self,  classes.Control.Control control):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = control.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_control_from_docks,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_custom_type(self,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type._native
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_custom_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_export_plugin(self,  classes.EditorExportPlugin.EditorExportPlugin plugin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = plugin.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_export_plugin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_import_plugin(self,  classes.EditorImportPlugin.EditorImportPlugin importer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = importer.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_import_plugin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_inspector_plugin(self,  classes.EditorInspectorPlugin.EditorInspectorPlugin plugin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = plugin.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_inspector_plugin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_scene_import_plugin(self,  classes.EditorSceneImporter.EditorSceneImporter scene_importer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = scene_importer.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_scene_import_plugin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_spatial_gizmo_plugin(self,  classes.EditorSpatialGizmoPlugin.EditorSpatialGizmoPlugin plugin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = plugin.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_spatial_gizmo_plugin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_tool_menu_item(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_editorplugin_remove_tool_menu_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  save_external_data(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorplugin_save_external_data,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_force_draw_over_forwarding_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorplugin_set_force_draw_over_forwarding_enabled,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_input_event_forwarding_always_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorplugin_set_input_event_forwarding_always_enabled,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_state(self,  Dictionary state):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &state._native
    api_core.godot_method_bind_ptrcall(bind_editorplugin_set_state,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_window_layout(self,  classes.ConfigFile.ConfigFile layout):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = layout.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorplugin_set_window_layout,self.godot_owner,args,NULL)
    hello('hallo2')
  def  update_overlays(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorplugin_update_overlays,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

