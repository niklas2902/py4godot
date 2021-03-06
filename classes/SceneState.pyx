from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class SceneState(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SceneState")())
##################################Generated Methods#########################################
  def  get_connection_binds(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_binds,self.godot_owner,[NULL,],&ret)
  def  get_connection_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_count,self.godot_owner,[NULL,],&ret)
  def  get_connection_flags(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_flags,self.godot_owner,[NULL,],&ret)
  def  get_connection_method(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_method,self.godot_owner,[NULL,],&ret)
  def  get_connection_signal(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_signal,self.godot_owner,[NULL,],&ret)
  def  get_connection_source(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_source,self.godot_owner,[NULL,],&ret)
  def  get_connection_target(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_connection_target,self.godot_owner,[NULL,],&ret)
  def  get_node_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_count,self.godot_owner,[NULL,],&ret)
  def  get_node_groups(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_groups,self.godot_owner,[NULL,],&ret)
  def  get_node_index(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_index,self.godot_owner,[NULL,],&ret)
  def  get_node_instance(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef PackedScene ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_instance,self.godot_owner,[NULL,],&ret)
  def  get_node_instance_placeholder(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_instance_placeholder,self.godot_owner,[NULL,],&ret)
  def  get_node_name(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_name,self.godot_owner,[NULL,],&ret)
  def  get_node_owner_path(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_owner_path,self.godot_owner,[NULL,],&ret)
  def  get_node_path(self, idxfor_parent):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_path,self.godot_owner,[NULL,],&ret)
  def  get_node_property_count(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_property_count,self.godot_owner,[NULL,],&ret)
  def  get_node_property_name(self, idxprop_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_property_name,self.godot_owner,[NULL,],&ret)
  def  get_node_property_value(self, idxprop_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_property_value,self.godot_owner,[NULL,],&ret)
  def  get_node_type(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_get_node_type,self.godot_owner,[NULL,],&ret)
  def  is_node_instance_placeholder(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scenestate_is_node_instance_placeholder,self.godot_owner,[NULL,],&ret)
