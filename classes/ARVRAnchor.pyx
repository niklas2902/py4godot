from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_arvranchor_get_anchor_id
cdef godot_method_bind *bind_arvranchor_get_anchor_name
cdef godot_method_bind *bind_arvranchor_get_is_active
cdef godot_method_bind *bind_arvranchor_get_mesh
cdef godot_method_bind *bind_arvranchor_get_plane
cdef godot_method_bind *bind_arvranchor_get_size
cdef godot_method_bind *bind_arvranchor_set_anchor_id
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_arvranchor_get_anchor_id = api_core.godot_method_bind_get_method('ARVRAnchor', 'get_anchor_id')
  bind_arvranchor_get_anchor_name = api_core.godot_method_bind_get_method('ARVRAnchor', 'get_anchor_name')
  bind_arvranchor_get_is_active = api_core.godot_method_bind_get_method('ARVRAnchor', 'get_is_active')
  bind_arvranchor_get_mesh = api_core.godot_method_bind_get_method('ARVRAnchor', 'get_mesh')
  bind_arvranchor_get_plane = api_core.godot_method_bind_get_method('ARVRAnchor', 'get_plane')
  bind_arvranchor_get_size = api_core.godot_method_bind_get_method('ARVRAnchor', 'get_size')
  bind_arvranchor_set_anchor_id = api_core.godot_method_bind_get_method('ARVRAnchor', 'set_anchor_id')

############################Generated class###################################
cdef class ARVRAnchor(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ARVRAnchor")())
##################################Generated Properties#########################################
  @property
  def anchor_id(self): 
    return self.get_anchor_id()
  @anchor_id.setter 
  def anchor_id(self,value): 
    self.set_anchor_id(value)

##################################Generated Methods#########################################
  def  get_anchor_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_arvranchor_get_anchor_id,self.godot_owner,[NULL,],&ret)
  def  get_anchor_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_arvranchor_get_anchor_name,self.godot_owner,[NULL,],&ret)
  def  get_is_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_arvranchor_get_is_active,self.godot_owner,[NULL,],&ret)
  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh ret
    api_core.godot_method_bind_ptrcall(bind_arvranchor_get_mesh,self.godot_owner,[NULL,],&ret)
  def  get_plane(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Plane ret
    api_core.godot_method_bind_ptrcall(bind_arvranchor_get_plane,self.godot_owner,[NULL,],&ret)
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_arvranchor_get_size,self.godot_owner,[NULL,],&ret)
  def  set_anchor_id(self, anchor_id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvranchor_set_anchor_id,self.godot_owner,[NULL,],NULL)
