
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
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_resource__setup_local_to_scene
cdef godot_method_bind *bind_resource_duplicate
cdef godot_method_bind *bind_resource_get_local_scene
cdef godot_method_bind *bind_resource_get_name
cdef godot_method_bind *bind_resource_get_path
cdef godot_method_bind *bind_resource_get_rid
cdef godot_method_bind *bind_resource_is_local_to_scene
cdef godot_method_bind *bind_resource_set_local_to_scene
cdef godot_method_bind *bind_resource_set_name
cdef godot_method_bind *bind_resource_set_path
cdef godot_method_bind *bind_resource_setup_local_to_scene
cdef godot_method_bind *bind_resource_take_over_path
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_resource__setup_local_to_scene = api_core.godot_method_bind_get_method('Resource', '_setup_local_to_scene')
  bind_resource_duplicate = api_core.godot_method_bind_get_method('Resource', 'duplicate')
  bind_resource_get_local_scene = api_core.godot_method_bind_get_method('Resource', 'get_local_scene')
  bind_resource_get_name = api_core.godot_method_bind_get_method('Resource', 'get_name')
  bind_resource_get_path = api_core.godot_method_bind_get_method('Resource', 'get_path')
  bind_resource_get_rid = api_core.godot_method_bind_get_method('Resource', 'get_rid')
  bind_resource_is_local_to_scene = api_core.godot_method_bind_get_method('Resource', 'is_local_to_scene')
  bind_resource_set_local_to_scene = api_core.godot_method_bind_get_method('Resource', 'set_local_to_scene')
  bind_resource_set_name = api_core.godot_method_bind_get_method('Resource', 'set_name')
  bind_resource_set_path = api_core.godot_method_bind_get_method('Resource', 'set_path')
  bind_resource_setup_local_to_scene = api_core.godot_method_bind_get_method('Resource', 'setup_local_to_scene')
  bind_resource_take_over_path = api_core.godot_method_bind_get_method('Resource', 'take_over_path')

############################Generated class###################################
cdef class Resource(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Resource")())
##################################Generated Properties#########################################
  @property
  def resource_local_to_scene(self): 
    return self.get_resource_local_to_scene()
  @resource_local_to_scene.setter 
  def resource_local_to_scene(self,value): 
    self.set_resource_local_to_scene(value)
  @property
  def resource_name(self): 
    return self.get_resource_name()
  @resource_name.setter 
  def resource_name(self,value): 
    self.set_resource_name(value)
  @property
  def resource_path(self): 
    return self.get_resource_path()
  @resource_path.setter 
  def resource_path(self,value): 
    self.set_resource_path(value)

##################################Generated Methods#########################################
  def  _setup_local_to_scene(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_resource__setup_local_to_scene,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  duplicate(self,  bool subresources):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &subresources
    api_core.godot_method_bind_ptrcall(bind_resource_duplicate,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_local_scene(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resource_get_local_scene,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resource_get_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resource_get_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_rid(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resource_get_rid,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  is_local_to_scene(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resource_is_local_to_scene,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_local_to_scene(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_resource_set_local_to_scene,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_name(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_resource_set_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_path(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_resource_set_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  setup_local_to_scene(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_resource_setup_local_to_scene,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  take_over_path(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_resource_take_over_path,self.godot_owner,args,NULL)
    hello('hallo2')
