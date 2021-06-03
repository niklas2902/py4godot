
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
cdef godot_method_bind *bind_resourceformatloader_get_dependencies
cdef godot_method_bind *bind_resourceformatloader_get_recognized_extensions
cdef godot_method_bind *bind_resourceformatloader_get_resource_type
cdef godot_method_bind *bind_resourceformatloader_handles_type
cdef godot_method_bind *bind_resourceformatloader_load
cdef godot_method_bind *bind_resourceformatloader_rename_dependencies
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_resourceformatloader_get_dependencies = api_core.godot_method_bind_get_method('ResourceFormatLoader', 'get_dependencies')
  bind_resourceformatloader_get_recognized_extensions = api_core.godot_method_bind_get_method('ResourceFormatLoader', 'get_recognized_extensions')
  bind_resourceformatloader_get_resource_type = api_core.godot_method_bind_get_method('ResourceFormatLoader', 'get_resource_type')
  bind_resourceformatloader_handles_type = api_core.godot_method_bind_get_method('ResourceFormatLoader', 'handles_type')
  bind_resourceformatloader_load = api_core.godot_method_bind_get_method('ResourceFormatLoader', 'load')
  bind_resourceformatloader_rename_dependencies = api_core.godot_method_bind_get_method('ResourceFormatLoader', 'rename_dependencies')

############################Generated class###################################
cdef class ResourceFormatLoader(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ResourceFormatLoader")())
##################################Generated Methods#########################################
  def  get_dependencies(self,  String path,  String add_types):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &path._native
    args[1] = &add_types._native
    api_core.godot_method_bind_ptrcall(bind_resourceformatloader_get_dependencies,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_recognized_extensions(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resourceformatloader_get_recognized_extensions,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_resource_type(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_resourceformatloader_get_resource_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  handles_type(self,  String typename):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &typename._native
    api_core.godot_method_bind_ptrcall(bind_resourceformatloader_handles_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  load(self,  String path,  String original_path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &path._native
    args[1] = &original_path._native
    api_core.godot_method_bind_ptrcall(bind_resourceformatloader_load,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  rename_dependencies(self,  String path,  String renames):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &path._native
    args[1] = &renames._native
    api_core.godot_method_bind_ptrcall(bind_resourceformatloader_rename_dependencies,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

