
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
cimport classes.Node 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_resourcepreloader__get_resources
cdef godot_method_bind *bind_resourcepreloader__set_resources
cdef godot_method_bind *bind_resourcepreloader_add_resource
cdef godot_method_bind *bind_resourcepreloader_get_resource
cdef godot_method_bind *bind_resourcepreloader_get_resource_list
cdef godot_method_bind *bind_resourcepreloader_has_resource
cdef godot_method_bind *bind_resourcepreloader_remove_resource
cdef godot_method_bind *bind_resourcepreloader_rename_resource
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_resourcepreloader__get_resources = api_core.godot_method_bind_get_method('ResourcePreloader', '_get_resources')
  bind_resourcepreloader__set_resources = api_core.godot_method_bind_get_method('ResourcePreloader', '_set_resources')
  bind_resourcepreloader_add_resource = api_core.godot_method_bind_get_method('ResourcePreloader', 'add_resource')
  bind_resourcepreloader_get_resource = api_core.godot_method_bind_get_method('ResourcePreloader', 'get_resource')
  bind_resourcepreloader_get_resource_list = api_core.godot_method_bind_get_method('ResourcePreloader', 'get_resource_list')
  bind_resourcepreloader_has_resource = api_core.godot_method_bind_get_method('ResourcePreloader', 'has_resource')
  bind_resourcepreloader_remove_resource = api_core.godot_method_bind_get_method('ResourcePreloader', 'remove_resource')
  bind_resourcepreloader_rename_resource = api_core.godot_method_bind_get_method('ResourcePreloader', 'rename_resource')

############################Generated class###################################
cdef class ResourcePreloader(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ResourcePreloader")())
##################################Generated Properties#########################################
  @property
  def resources(self): 
    return self.get_resources()
  @resources.setter 
  def resources(self,value): 
    self.set_resources(value)

##################################Generated Methods#########################################
  def  _get_resources(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resourcepreloader__get_resources,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _set_resources(self,  Array arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader__set_resources,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_resource(self,  String name,  classes.Resource.Resource resource):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = resource.godot_owner
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader_add_resource,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_resource(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader_get_resource,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_resource_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resourcepreloader_get_resource_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  has_resource(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader_has_resource,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_resource(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader_remove_resource,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rename_resource(self,  String name,  String newname):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &newname._native
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader_rename_resource,self.godot_owner,args,NULL)
    hello('hallo2')
