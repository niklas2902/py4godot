from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorinterface_edit_resource
cdef godot_method_bind *bind_editorinterface_get_base_control
cdef godot_method_bind *bind_editorinterface_get_current_path
cdef godot_method_bind *bind_editorinterface_get_edited_scene_root
cdef godot_method_bind *bind_editorinterface_get_editor_settings
cdef godot_method_bind *bind_editorinterface_get_editor_viewport
cdef godot_method_bind *bind_editorinterface_get_inspector
cdef godot_method_bind *bind_editorinterface_get_open_scenes
cdef godot_method_bind *bind_editorinterface_get_resource_filesystem
cdef godot_method_bind *bind_editorinterface_get_resource_previewer
cdef godot_method_bind *bind_editorinterface_get_script_editor
cdef godot_method_bind *bind_editorinterface_get_selected_path
cdef godot_method_bind *bind_editorinterface_get_selection
cdef godot_method_bind *bind_editorinterface_inspect_object
cdef godot_method_bind *bind_editorinterface_is_plugin_enabled
cdef godot_method_bind *bind_editorinterface_make_mesh_previews
cdef godot_method_bind *bind_editorinterface_open_scene_from_path
cdef godot_method_bind *bind_editorinterface_reload_scene_from_path
cdef godot_method_bind *bind_editorinterface_save_scene
cdef godot_method_bind *bind_editorinterface_save_scene_as
cdef godot_method_bind *bind_editorinterface_select_file
cdef godot_method_bind *bind_editorinterface_set_distraction_free_mode
cdef godot_method_bind *bind_editorinterface_set_main_screen_editor
cdef godot_method_bind *bind_editorinterface_set_plugin_enabled
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorinterface_edit_resource = api_core.godot_method_bind_get_method('EditorInterface', 'edit_resource')
  bind_editorinterface_get_base_control = api_core.godot_method_bind_get_method('EditorInterface', 'get_base_control')
  bind_editorinterface_get_current_path = api_core.godot_method_bind_get_method('EditorInterface', 'get_current_path')
  bind_editorinterface_get_edited_scene_root = api_core.godot_method_bind_get_method('EditorInterface', 'get_edited_scene_root')
  bind_editorinterface_get_editor_settings = api_core.godot_method_bind_get_method('EditorInterface', 'get_editor_settings')
  bind_editorinterface_get_editor_viewport = api_core.godot_method_bind_get_method('EditorInterface', 'get_editor_viewport')
  bind_editorinterface_get_inspector = api_core.godot_method_bind_get_method('EditorInterface', 'get_inspector')
  bind_editorinterface_get_open_scenes = api_core.godot_method_bind_get_method('EditorInterface', 'get_open_scenes')
  bind_editorinterface_get_resource_filesystem = api_core.godot_method_bind_get_method('EditorInterface', 'get_resource_filesystem')
  bind_editorinterface_get_resource_previewer = api_core.godot_method_bind_get_method('EditorInterface', 'get_resource_previewer')
  bind_editorinterface_get_script_editor = api_core.godot_method_bind_get_method('EditorInterface', 'get_script_editor')
  bind_editorinterface_get_selected_path = api_core.godot_method_bind_get_method('EditorInterface', 'get_selected_path')
  bind_editorinterface_get_selection = api_core.godot_method_bind_get_method('EditorInterface', 'get_selection')
  bind_editorinterface_inspect_object = api_core.godot_method_bind_get_method('EditorInterface', 'inspect_object')
  bind_editorinterface_is_plugin_enabled = api_core.godot_method_bind_get_method('EditorInterface', 'is_plugin_enabled')
  bind_editorinterface_make_mesh_previews = api_core.godot_method_bind_get_method('EditorInterface', 'make_mesh_previews')
  bind_editorinterface_open_scene_from_path = api_core.godot_method_bind_get_method('EditorInterface', 'open_scene_from_path')
  bind_editorinterface_reload_scene_from_path = api_core.godot_method_bind_get_method('EditorInterface', 'reload_scene_from_path')
  bind_editorinterface_save_scene = api_core.godot_method_bind_get_method('EditorInterface', 'save_scene')
  bind_editorinterface_save_scene_as = api_core.godot_method_bind_get_method('EditorInterface', 'save_scene_as')
  bind_editorinterface_select_file = api_core.godot_method_bind_get_method('EditorInterface', 'select_file')
  bind_editorinterface_set_distraction_free_mode = api_core.godot_method_bind_get_method('EditorInterface', 'set_distraction_free_mode')
  bind_editorinterface_set_main_screen_editor = api_core.godot_method_bind_get_method('EditorInterface', 'set_main_screen_editor')
  bind_editorinterface_set_plugin_enabled = api_core.godot_method_bind_get_method('EditorInterface', 'set_plugin_enabled')

############################Generated class###################################
cdef class EditorInterface(Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorInterface")())
##################################Generated Methods#########################################
  def  edit_resource(self, resource):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinterface_edit_resource,self.godot_owner,[NULL,],NULL)
  def  get_base_control(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Control ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_base_control,self.godot_owner,[NULL,],&ret)
  def  get_current_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_current_path,self.godot_owner,[NULL,],&ret)
  def  get_edited_scene_root(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Node ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_edited_scene_root,self.godot_owner,[NULL,],&ret)
  def  get_editor_settings(self):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorSettings ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_editor_settings,self.godot_owner,[NULL,],&ret)
  def  get_editor_viewport(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Control ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_editor_viewport,self.godot_owner,[NULL,],&ret)
  def  get_inspector(self):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorInspector ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_inspector,self.godot_owner,[NULL,],&ret)
  def  get_open_scenes(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_open_scenes,self.godot_owner,[NULL,],&ret)
  def  get_resource_filesystem(self):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorFileSystem ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_resource_filesystem,self.godot_owner,[NULL,],&ret)
  def  get_resource_previewer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorResourcePreview ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_resource_previewer,self.godot_owner,[NULL,],&ret)
  def  get_script_editor(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ScriptEditor ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_script_editor,self.godot_owner,[NULL,],&ret)
  def  get_selected_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_selected_path,self.godot_owner,[NULL,],&ret)
  def  get_selection(self):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorSelection ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_selection,self.godot_owner,[NULL,],&ret)
  def  inspect_object(self, objectfor_property):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinterface_inspect_object,self.godot_owner,[NULL,],NULL)
  def  is_plugin_enabled(self, plugin):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_is_plugin_enabled,self.godot_owner,[NULL,],&ret)
  def  make_mesh_previews(self, meshespreview_size):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_make_mesh_previews,self.godot_owner,[NULL,],&ret)
  def  open_scene_from_path(self, scene_filepath):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinterface_open_scene_from_path,self.godot_owner,[NULL,],NULL)
  def  reload_scene_from_path(self, scene_filepath):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinterface_reload_scene_from_path,self.godot_owner,[NULL,],NULL)
  def  save_scene(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_editorinterface_save_scene,self.godot_owner,[NULL,],&ret)
  def  save_scene_as(self, pathwith_preview):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinterface_save_scene_as,self.godot_owner,[NULL,],NULL)
  def  select_file(self, file):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinterface_select_file,self.godot_owner,[NULL,],NULL)
  def  set_distraction_free_mode(self, enter):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinterface_set_distraction_free_mode,self.godot_owner,[NULL,],NULL)
  def  set_main_screen_editor(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinterface_set_main_screen_editor,self.godot_owner,[NULL,],NULL)
  def  set_plugin_enabled(self, pluginenabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinterface_set_plugin_enabled,self.godot_owner,[NULL,],NULL)
