from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorscenepostimport_get_source_file
cdef godot_method_bind *bind_editorscenepostimport_get_source_folder
cdef godot_method_bind *bind_editorscenepostimport_post_import
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorscenepostimport_get_source_file = api_core.godot_method_bind_get_method('EditorScenePostImport', 'get_source_file')
  bind_editorscenepostimport_get_source_folder = api_core.godot_method_bind_get_method('EditorScenePostImport', 'get_source_folder')
  bind_editorscenepostimport_post_import = api_core.godot_method_bind_get_method('EditorScenePostImport', 'post_import')

############################Generated class###################################
cdef class EditorScenePostImport(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorScenePostImport")())
##################################Generated Methods#########################################
  def  get_source_file(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorscenepostimport_get_source_file,self.godot_owner,[NULL,],&ret)
  def  get_source_folder(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorscenepostimport_get_source_folder,self.godot_owner,[NULL,],&ret)
  def  post_import(self, scene):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_editorscenepostimport_post_import,self.godot_owner,[NULL,],&ret)
