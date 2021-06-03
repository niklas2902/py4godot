
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
cdef godot_method_bind *bind_scenestate_get_connection_binds
cdef godot_method_bind *bind_scenestate_get_connection_count
cdef godot_method_bind *bind_scenestate_get_connection_flags
cdef godot_method_bind *bind_scenestate_get_connection_method
cdef godot_method_bind *bind_scenestate_get_connection_signal
cdef godot_method_bind *bind_scenestate_get_connection_source
cdef godot_method_bind *bind_scenestate_get_connection_target
cdef godot_method_bind *bind_scenestate_get_node_count
cdef godot_method_bind *bind_scenestate_get_node_groups
cdef godot_method_bind *bind_scenestate_get_node_index
cdef godot_method_bind *bind_scenestate_get_node_instance
cdef godot_method_bind *bind_scenestate_get_node_instance_placeholder
cdef godot_method_bind *bind_scenestate_get_node_name
cdef godot_method_bind *bind_scenestate_get_node_owner_path
cdef godot_method_bind *bind_scenestate_get_node_path
cdef godot_method_bind *bind_scenestate_get_node_property_count
cdef godot_method_bind *bind_scenestate_get_node_property_name
cdef godot_method_bind *bind_scenestate_get_node_property_value
cdef godot_method_bind *bind_scenestate_get_node_type
cdef godot_method_bind *bind_scenestate_is_node_instance_placeholder
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_scenestate_get_connection_binds = api_core.godot_method_bind_get_method('SceneState', 'get_connection_binds')
  bind_scenestate_get_connection_count = api_core.godot_method_bind_get_method('SceneState', 'get_connection_count')
  bind_scenestate_get_connection_flags = api_core.godot_method_bind_get_method('SceneState', 'get_connection_flags')
  bind_scenestate_get_connection_method = api_core.godot_method_bind_get_method('SceneState', 'get_connection_method')
  bind_scenestate_get_connection_signal = api_core.godot_method_bind_get_method('SceneState', 'get_connection_signal')
  bind_scenestate_get_connection_source = api_core.godot_method_bind_get_method('SceneState', 'get_connection_source')
  bind_scenestate_get_connection_target = api_core.godot_method_bind_get_method('SceneState', 'get_connection_target')
  bind_scenestate_get_node_count = api_core.godot_method_bind_get_method('SceneState', 'get_node_count')
  bind_scenestate_get_node_groups = api_core.godot_method_bind_get_method('SceneState', 'get_node_groups')
  bind_scenestate_get_node_index = api_core.godot_method_bind_get_method('SceneState', 'get_node_index')
  bind_scenestate_get_node_instance = api_core.godot_method_bind_get_method('SceneState', 'get_node_instance')
  bind_scenestate_get_node_instance_placeholder = api_core.godot_method_bind_get_method('SceneState', 'get_node_instance_placeholder')
  bind_scenestate_get_node_name = api_core.godot_method_bind_get_method('SceneState', 'get_node_name')
  bind_scenestate_get_node_owner_path = api_core.godot_method_bind_get_method('SceneState', 'get_node_owner_path')
  bind_scenestate_get_node_path = api_core.godot_method_bind_get_method('SceneState', 'get_node_path')
  bind_scenestate_get_node_property_count = api_core.godot_method_bind_get_method('SceneState', 'get_node_property_count')
  bind_scenestate_get_node_property_name = api_core.godot_method_bind_get_method('SceneState', 'get_node_property_name')
  bind_scenestate_get_node_property_value = api_core.godot_method_bind_get_method('SceneState', 'get_node_property_value')
  bind_scenestate_get_node_type = api_core.godot_method_bind_get_method('SceneState', 'get_node_type')
  bind_scenestate_is_node_instance_placeholder = api_core.godot_method_bind_get_method('SceneState', 'is_node_instance_placeholder')

############################Generated class###################################
cdef class SceneState(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SceneState")())
##################################Generated Methods#########################################
  def  get_connection_binds(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_binds,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_connection_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_connection_flags(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_flags,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_connection_method(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_method,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_connection_signal(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_signal,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_connection_source(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_source,self.godot_owner,args,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_connection_target(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_target,self.godot_owner,args,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_node_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_node_groups(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_groups,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_node_index(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_index,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_node_instance(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_instance,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_node_instance_placeholder(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_instance_placeholder,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_node_name(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_node_owner_path(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_owner_path,self.godot_owner,args,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_node_path(self,  int idx,  bool for_parent):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    cdef void *args[2]

    args[0] = &idx
    args[1] = &for_parent
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_path,self.godot_owner,args,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_node_property_count(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_property_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_node_property_name(self,  int idx,  int prop_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[2]

    args[0] = &idx
    args[1] = &prop_idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_property_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_node_property_value(self,  int idx,  int prop_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &idx
    args[1] = &prop_idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_property_value,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_node_type(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  is_node_instance_placeholder(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_scenestate_is_node_instance_placeholder,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

