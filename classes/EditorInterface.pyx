
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
cimport classes.Resource
cimport classes.Object
cimport classes.Node 

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
cdef class EditorInterface(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorInterface")())
##################################Generated Methods#########################################
  def  edit_resource(self,  classes.Resource.Resource resource):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = resource.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinterface_edit_resource,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_base_control(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_base_control,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_current_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_current_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_edited_scene_root(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_edited_scene_root,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_editor_settings(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_editor_settings,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_editor_viewport(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_editor_viewport,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_inspector(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_inspector,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_open_scenes(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_open_scenes,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_resource_filesystem(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_resource_filesystem,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_resource_previewer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_resource_previewer,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_script_editor(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_script_editor,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_selected_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_selected_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_selection(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_get_selection,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  inspect_object(self,  classes.Object.Object object,  String for_property):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = object.godot_owner
    args[1] = &for_property._native
    api_core.godot_method_bind_ptrcall(bind_editorinterface_inspect_object,self.godot_owner,args,NULL)
    hello('hallo2')
  def  is_plugin_enabled(self,  String plugin):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &plugin._native
    api_core.godot_method_bind_ptrcall(bind_editorinterface_is_plugin_enabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  make_mesh_previews(self,  Array meshes,  int preview_size):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[2]

    args[0] = &meshes._native
    args[1] = &preview_size
    api_core.godot_method_bind_ptrcall(bind_editorinterface_make_mesh_previews,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  open_scene_from_path(self,  String scene_filepath):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scene_filepath._native
    api_core.godot_method_bind_ptrcall(bind_editorinterface_open_scene_from_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  reload_scene_from_path(self,  String scene_filepath):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scene_filepath._native
    api_core.godot_method_bind_ptrcall(bind_editorinterface_reload_scene_from_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  save_scene(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorinterface_save_scene,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  save_scene_as(self,  String path,  bool with_preview):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &path._native
    args[1] = &with_preview
    api_core.godot_method_bind_ptrcall(bind_editorinterface_save_scene_as,self.godot_owner,args,NULL)
    hello('hallo2')
  def  select_file(self,  String file):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &file._native
    api_core.godot_method_bind_ptrcall(bind_editorinterface_select_file,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_distraction_free_mode(self,  bool enter):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enter
    api_core.godot_method_bind_ptrcall(bind_editorinterface_set_distraction_free_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_main_screen_editor(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_editorinterface_set_main_screen_editor,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_plugin_enabled(self,  String plugin,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &plugin._native
    args[1] = &enabled
    api_core.godot_method_bind_ptrcall(bind_editorinterface_set_plugin_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
