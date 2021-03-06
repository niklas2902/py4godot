from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorsceneimporter__get_extensions
cdef godot_method_bind *bind_editorsceneimporter__get_import_flags
cdef godot_method_bind *bind_editorsceneimporter__import_animation
cdef godot_method_bind *bind_editorsceneimporter__import_scene
cdef godot_method_bind *bind_editorsceneimporter_import_animation_from_other_importer
cdef godot_method_bind *bind_editorsceneimporter_import_scene_from_other_importer
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorsceneimporter__get_extensions = api_core.godot_method_bind_get_method('EditorSceneImporter', '_get_extensions')
  bind_editorsceneimporter__get_import_flags = api_core.godot_method_bind_get_method('EditorSceneImporter', '_get_import_flags')
  bind_editorsceneimporter__import_animation = api_core.godot_method_bind_get_method('EditorSceneImporter', '_import_animation')
  bind_editorsceneimporter__import_scene = api_core.godot_method_bind_get_method('EditorSceneImporter', '_import_scene')
  bind_editorsceneimporter_import_animation_from_other_importer = api_core.godot_method_bind_get_method('EditorSceneImporter', 'import_animation_from_other_importer')
  bind_editorsceneimporter_import_scene_from_other_importer = api_core.godot_method_bind_get_method('EditorSceneImporter', 'import_scene_from_other_importer')

############################Generated class###################################
cdef class EditorSceneImporter(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorSceneImporter")())
##################################Generated Methods#########################################
  def  _get_extensions(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_editorsceneimporter__get_extensions,self.godot_owner,[NULL,],&ret)
  def  _get_import_flags(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_editorsceneimporter__get_import_flags,self.godot_owner,[NULL,],&ret)
  def  _import_animation(self, pathflagsbake_fps):
    cdef godot_object *_owner = self.godot_owner
    cdef Animation ret
    api_core.godot_method_bind_ptrcall(bind_editorsceneimporter__import_animation,self.godot_owner,[NULL,],&ret)
  def  _import_scene(self, pathflagsbake_fps):
    cdef godot_object *_owner = self.godot_owner
    cdef Node ret
    api_core.godot_method_bind_ptrcall(bind_editorsceneimporter__import_scene,self.godot_owner,[NULL,],&ret)
  def  import_animation_from_other_importer(self, pathflagsbake_fps):
    cdef godot_object *_owner = self.godot_owner
    cdef Animation ret
    api_core.godot_method_bind_ptrcall(bind_editorsceneimporter_import_animation_from_other_importer,self.godot_owner,[NULL,],&ret)
  def  import_scene_from_other_importer(self, pathflagsbake_fps):
    cdef godot_object *_owner = self.godot_owner
    cdef Node ret
    api_core.godot_method_bind_ptrcall(bind_editorsceneimporter_import_scene_from_other_importer,self.godot_owner,[NULL,],&ret)
