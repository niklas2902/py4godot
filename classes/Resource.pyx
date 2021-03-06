from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class Resource(Reference):
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
    api_core.godot_method_bind_ptrcall(bind_resource__setup_local_to_scene,self.godot_owner,[NULL,],NULL)
  def  duplicate(self, subresources):
    cdef godot_object *_owner = self.godot_owner
    cdef Resource ret
    api_core.godot_method_bind_ptrcall(bind_resource_duplicate,self.godot_owner,[NULL,],&ret)
  def  get_local_scene(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Node ret
    api_core.godot_method_bind_ptrcall(bind_resource_get_local_scene,self.godot_owner,[NULL,],&ret)
  def  get_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_resource_get_name,self.godot_owner,[NULL,],&ret)
  def  get_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_resource_get_path,self.godot_owner,[NULL,],&ret)
  def  get_rid(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_resource_get_rid,self.godot_owner,[NULL,],&ret)
  def  is_local_to_scene(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_resource_is_local_to_scene,self.godot_owner,[NULL,],&ret)
  def  set_local_to_scene(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_resource_set_local_to_scene,self.godot_owner,[NULL,],NULL)
  def  set_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_resource_set_name,self.godot_owner,[NULL,],NULL)
  def  set_path(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_resource_set_path,self.godot_owner,[NULL,],NULL)
  def  setup_local_to_scene(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_resource_setup_local_to_scene,self.godot_owner,[NULL,],NULL)
  def  take_over_path(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_resource_take_over_path,self.godot_owner,[NULL,],NULL)
