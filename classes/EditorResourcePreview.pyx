
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
cimport classes.Texture
cimport classes.Texture
cimport classes.EditorResourcePreviewGenerator
cimport classes.Resource
cimport classes.Object
cimport classes.Object
cimport classes.EditorResourcePreviewGenerator
cimport classes.Node 

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
cdef class EditorResourcePreview(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorResourcePreview")())
##################################Generated Methods#########################################
  def  _preview_ready(self,  String arg0,  classes.Texture.Texture arg1,  classes.Texture.Texture arg2,  int arg3,  String arg4,  Variant arg5):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[6]

    args[0] = &arg0._native
    args[1] = arg1.godot_owner
    args[2] = arg2.godot_owner
    args[3] = &arg3
    args[4] = &arg4._native
    args[5] = &arg5._native
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreview__preview_ready,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_preview_generator(self,  classes.EditorResourcePreviewGenerator.EditorResourcePreviewGenerator generator):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = generator.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreview_add_preview_generator,self.godot_owner,args,NULL)
    hello('hallo2')
  def  check_for_invalidation(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreview_check_for_invalidation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  queue_edited_resource_preview(self,  classes.Resource.Resource resource,  classes.Object.Object receiver,  String receiver_func,  Variant userdata):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = resource.godot_owner
    args[1] = receiver.godot_owner
    args[2] = &receiver_func._native
    args[3] = &userdata._native
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreview_queue_edited_resource_preview,self.godot_owner,args,NULL)
    hello('hallo2')
  def  queue_resource_preview(self,  String path,  classes.Object.Object receiver,  String receiver_func,  Variant userdata):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &path._native
    args[1] = receiver.godot_owner
    args[2] = &receiver_func._native
    args[3] = &userdata._native
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreview_queue_resource_preview,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_preview_generator(self,  classes.EditorResourcePreviewGenerator.EditorResourcePreviewGenerator generator):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = generator.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreview_remove_preview_generator,self.godot_owner,args,NULL)
    hello('hallo2')
