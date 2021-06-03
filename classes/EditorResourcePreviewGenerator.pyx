
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
cimport classes.Resource
cimport classes.Reference 

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
cdef class EditorResourcePreviewGenerator(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorResourcePreviewGenerator")())
##################################Generated Methods#########################################
  def  can_generate_small_preview(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorresourcepreviewgenerator_can_generate_small_preview,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  generate(self,  classes.Resource.Resource from_,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = from_.godot_owner
    args[1] = &size._native
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreviewgenerator_generate,self.godot_owner,args,&ret)
    hello('hallo2')
  def  generate_from_path(self,  String path,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &path._native
    args[1] = &size._native
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreviewgenerator_generate_from_path,self.godot_owner,args,&ret)
    hello('hallo2')
  def  generate_small_preview_automatically(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorresourcepreviewgenerator_generate_small_preview_automatically,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  handles(self,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &type._native
    api_core.godot_method_bind_ptrcall(bind_editorresourcepreviewgenerator_handles,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

