from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_remotetransform_force_update_cache
cdef godot_method_bind *bind_remotetransform_get_remote_node
cdef godot_method_bind *bind_remotetransform_get_update_position
cdef godot_method_bind *bind_remotetransform_get_update_rotation
cdef godot_method_bind *bind_remotetransform_get_update_scale
cdef godot_method_bind *bind_remotetransform_get_use_global_coordinates
cdef godot_method_bind *bind_remotetransform_set_remote_node
cdef godot_method_bind *bind_remotetransform_set_update_position
cdef godot_method_bind *bind_remotetransform_set_update_rotation
cdef godot_method_bind *bind_remotetransform_set_update_scale
cdef godot_method_bind *bind_remotetransform_set_use_global_coordinates
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_remotetransform_force_update_cache = api_core.godot_method_bind_get_method('RemoteTransform', 'force_update_cache')
  bind_remotetransform_get_remote_node = api_core.godot_method_bind_get_method('RemoteTransform', 'get_remote_node')
  bind_remotetransform_get_update_position = api_core.godot_method_bind_get_method('RemoteTransform', 'get_update_position')
  bind_remotetransform_get_update_rotation = api_core.godot_method_bind_get_method('RemoteTransform', 'get_update_rotation')
  bind_remotetransform_get_update_scale = api_core.godot_method_bind_get_method('RemoteTransform', 'get_update_scale')
  bind_remotetransform_get_use_global_coordinates = api_core.godot_method_bind_get_method('RemoteTransform', 'get_use_global_coordinates')
  bind_remotetransform_set_remote_node = api_core.godot_method_bind_get_method('RemoteTransform', 'set_remote_node')
  bind_remotetransform_set_update_position = api_core.godot_method_bind_get_method('RemoteTransform', 'set_update_position')
  bind_remotetransform_set_update_rotation = api_core.godot_method_bind_get_method('RemoteTransform', 'set_update_rotation')
  bind_remotetransform_set_update_scale = api_core.godot_method_bind_get_method('RemoteTransform', 'set_update_scale')
  bind_remotetransform_set_use_global_coordinates = api_core.godot_method_bind_get_method('RemoteTransform', 'set_use_global_coordinates')

############################Generated class###################################
cdef class RemoteTransform(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RemoteTransform")())
##################################Generated Properties#########################################
  @property
  def remote_path(self): 
    return self.get_remote_path()
  @remote_path.setter 
  def remote_path(self,value): 
    self.set_remote_path(value)
  @property
  def update_position(self): 
    return self.get_update_position()
  @update_position.setter 
  def update_position(self,value): 
    self.set_update_position(value)
  @property
  def update_rotation(self): 
    return self.get_update_rotation()
  @update_rotation.setter 
  def update_rotation(self,value): 
    self.set_update_rotation(value)
  @property
  def update_scale(self): 
    return self.get_update_scale()
  @update_scale.setter 
  def update_scale(self,value): 
    self.set_update_scale(value)
  @property
  def use_global_coordinates(self): 
    return self.get_use_global_coordinates()
  @use_global_coordinates.setter 
  def use_global_coordinates(self,value): 
    self.set_use_global_coordinates(value)

##################################Generated Methods#########################################
  def  force_update_cache(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_remotetransform_force_update_cache,self.godot_owner,[NULL,],NULL)
  def  get_remote_node(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_remotetransform_get_remote_node,self.godot_owner,[NULL,],&ret)
  def  get_update_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_remotetransform_get_update_position,self.godot_owner,[NULL,],&ret)
  def  get_update_rotation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_remotetransform_get_update_rotation,self.godot_owner,[NULL,],&ret)
  def  get_update_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_remotetransform_get_update_scale,self.godot_owner,[NULL,],&ret)
  def  get_use_global_coordinates(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_remotetransform_get_use_global_coordinates,self.godot_owner,[NULL,],&ret)
  def  set_remote_node(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_remotetransform_set_remote_node,self.godot_owner,[NULL,],NULL)
  def  set_update_position(self, update_remote_position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_remotetransform_set_update_position,self.godot_owner,[NULL,],NULL)
  def  set_update_rotation(self, update_remote_rotation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_remotetransform_set_update_rotation,self.godot_owner,[NULL,],NULL)
  def  set_update_scale(self, update_remote_scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_remotetransform_set_update_scale,self.godot_owner,[NULL,],NULL)
  def  set_use_global_coordinates(self, use_global_coordinates):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_remotetransform_set_use_global_coordinates,self.godot_owner,[NULL,],NULL)
