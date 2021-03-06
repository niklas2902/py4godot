from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorresourcepreviewgenerator_can_generate_small_preview
cdef godot_method_bind *bind_editorresourcepreviewgenerator_generate
cdef godot_method_bind *bind_editorresourcepreviewgenerator_generate_from_path
cdef godot_method_bind *bind_editorresourcepreviewgenerator_generate_small_preview_automatically
cdef godot_method_bind *bind_editorresourcepreviewgenerator_handles
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorresourcepreviewgenerator_can_generate_small_preview = api_core.godot_method_bind_get_method('EditorResourcePreviewGenerator', 'can_generate_small_preview')
  bind_editorresourcepreviewgenerator_generate = api_core.godot_method_bind_get_method('EditorResourcePreviewGenerator', 'generate')
  bind_editorresourcepreviewgenerator_generate_from_path = api_core.godot_method_bind_get_method('EditorResourcePreviewGenerator', 'generate_from_path')
  bind_editorresourcepreviewgenerator_generate_small_preview_automatically = api_core.godot_method_bind_get_method('EditorResourcePreviewGenerator', 'generate_small_preview_automatically')
  bind_editorresourcepreviewgenerator_handles = api_core.godot_method_bind_get_method('EditorResourcePreviewGenerator', 'handles')

############################Generated class###################################
cdef class EditorResourcePreviewGenerator(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorResourcePreviewGenerator")())
##################################Generated Methods#########################################
  def  can_generate_small_preview(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreviewgenerator_can_generate_small_preview,self.godot_owner,[NULL,],&ret)
  def  generate(self, from_, size):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreviewgenerator_generate,self.godot_owner,[NULL,],&ret)
  def  generate_from_path(self, pathsize):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreviewgenerator_generate_from_path,self.godot_owner,[NULL,],&ret)
  def  generate_small_preview_automatically(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreviewgenerator_generate_small_preview_automatically,self.godot_owner,[NULL,],&ret)
  def  handles(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreviewgenerator_handles,self.godot_owner,[NULL,],&ret)
