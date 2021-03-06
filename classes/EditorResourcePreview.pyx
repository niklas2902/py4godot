from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorresourcepreview__preview_ready
cdef godot_method_bind *bind_editorresourcepreview_add_preview_generator
cdef godot_method_bind *bind_editorresourcepreview_check_for_invalidation
cdef godot_method_bind *bind_editorresourcepreview_queue_edited_resource_preview
cdef godot_method_bind *bind_editorresourcepreview_queue_resource_preview
cdef godot_method_bind *bind_editorresourcepreview_remove_preview_generator
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorresourcepreview__preview_ready = api_core.godot_method_bind_get_method('EditorResourcePreview', '_preview_ready')
  bind_editorresourcepreview_add_preview_generator = api_core.godot_method_bind_get_method('EditorResourcePreview', 'add_preview_generator')
  bind_editorresourcepreview_check_for_invalidation = api_core.godot_method_bind_get_method('EditorResourcePreview', 'check_for_invalidation')
  bind_editorresourcepreview_queue_edited_resource_preview = api_core.godot_method_bind_get_method('EditorResourcePreview', 'queue_edited_resource_preview')
  bind_editorresourcepreview_queue_resource_preview = api_core.godot_method_bind_get_method('EditorResourcePreview', 'queue_resource_preview')
  bind_editorresourcepreview_remove_preview_generator = api_core.godot_method_bind_get_method('EditorResourcePreview', 'remove_preview_generator')

############################Generated class###################################
cdef class EditorResourcePreview(Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorResourcePreview")())
##################################Generated Methods#########################################
  def  _preview_ready(self, arg0arg1arg2arg3arg4arg5):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreview__preview_ready,self.godot_owner,[NULL,],NULL)
  def  add_preview_generator(self, generator):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreview_add_preview_generator,self.godot_owner,[NULL,],NULL)
  def  check_for_invalidation(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreview_check_for_invalidation,self.godot_owner,[NULL,],NULL)
  def  queue_edited_resource_preview(self, resourcereceiverreceiver_funcuserdata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreview_queue_edited_resource_preview,self.godot_owner,[NULL,],NULL)
  def  queue_resource_preview(self, pathreceiverreceiver_funcuserdata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreview_queue_resource_preview,self.godot_owner,[NULL,],NULL)
  def  remove_preview_generator(self, generator):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreview_remove_preview_generator,self.godot_owner,[NULL,],NULL)
