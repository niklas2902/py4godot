from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_instanceplaceholder_create_instance
cdef godot_method_bind *bind_instanceplaceholder_get_instance_path
cdef godot_method_bind *bind_instanceplaceholder_get_stored_values
cdef godot_method_bind *bind_instanceplaceholder_replace_by_instance
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_instanceplaceholder_create_instance = api_core.godot_method_bind_get_method('InstancePlaceholder', 'create_instance')
  bind_instanceplaceholder_get_instance_path = api_core.godot_method_bind_get_method('InstancePlaceholder', 'get_instance_path')
  bind_instanceplaceholder_get_stored_values = api_core.godot_method_bind_get_method('InstancePlaceholder', 'get_stored_values')
  bind_instanceplaceholder_replace_by_instance = api_core.godot_method_bind_get_method('InstancePlaceholder', 'replace_by_instance')

############################Generated class###################################
cdef class InstancePlaceholder(Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InstancePlaceholder")())
##################################Generated Methods#########################################
  def  create_instance(self, replacecustom_scene):
    cdef godot_object *_owner = self.godot_owner
    cdef Node ret
    api_core.godot_method_bind_ptrcall(bind_instanceplaceholder_create_instance,self.godot_owner,[NULL,],&ret)
  def  get_instance_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_instanceplaceholder_get_instance_path,self.godot_owner,[NULL,],&ret)
  def  get_stored_values(self, with_order):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_instanceplaceholder_get_stored_values,self.godot_owner,[NULL,],&ret)
  def  replace_by_instance(self, custom_scene):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_instanceplaceholder_replace_by_instance,self.godot_owner,[NULL,],NULL)
