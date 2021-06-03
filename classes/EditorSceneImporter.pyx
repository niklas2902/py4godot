
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
cimport classes.Reference 

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
cdef class EditorSceneImporter(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorSceneImporter")())
##################################Generated Methods#########################################
  def  _get_extensions(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorsceneimporter__get_extensions,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _get_import_flags(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorsceneimporter__get_import_flags,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _import_animation(self,  String path,  int flags,  int bake_fps):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[3]

    args[0] = &path._native
    args[1] = &flags
    args[2] = &bake_fps
    api_core.godot_method_bind_ptrcall(bind_editorsceneimporter__import_animation,self.godot_owner,args,&ret)
    hello('hallo2')
  def  _import_scene(self,  String path,  int flags,  int bake_fps):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[3]

    args[0] = &path._native
    args[1] = &flags
    args[2] = &bake_fps
    api_core.godot_method_bind_ptrcall(bind_editorsceneimporter__import_scene,self.godot_owner,args,&ret)
    hello('hallo2')
  def  import_animation_from_other_importer(self,  String path,  int flags,  int bake_fps):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[3]

    args[0] = &path._native
    args[1] = &flags
    args[2] = &bake_fps
    api_core.godot_method_bind_ptrcall(bind_editorsceneimporter_import_animation_from_other_importer,self.godot_owner,args,&ret)
    hello('hallo2')
  def  import_scene_from_other_importer(self,  String path,  int flags,  int bake_fps):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[3]

    args[0] = &path._native
    args[1] = &flags
    args[2] = &bake_fps
    api_core.godot_method_bind_ptrcall(bind_editorsceneimporter_import_scene_from_other_importer,self.godot_owner,args,&ret)
    hello('hallo2')
