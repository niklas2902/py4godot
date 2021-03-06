from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_navigationmeshinstance_get_navigation_mesh
cdef godot_method_bind *bind_navigationmeshinstance_is_enabled
cdef godot_method_bind *bind_navigationmeshinstance_set_enabled
cdef godot_method_bind *bind_navigationmeshinstance_set_navigation_mesh
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_navigationmeshinstance_get_navigation_mesh = api_core.godot_method_bind_get_method('NavigationMeshInstance', 'get_navigation_mesh')
  bind_navigationmeshinstance_is_enabled = api_core.godot_method_bind_get_method('NavigationMeshInstance', 'is_enabled')
  bind_navigationmeshinstance_set_enabled = api_core.godot_method_bind_get_method('NavigationMeshInstance', 'set_enabled')
  bind_navigationmeshinstance_set_navigation_mesh = api_core.godot_method_bind_get_method('NavigationMeshInstance', 'set_navigation_mesh')

############################Generated class###################################
cdef class NavigationMeshInstance(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("NavigationMeshInstance")())
##################################Generated Properties#########################################
  @property
  def enabled(self): 
    return self.get_enabled()
  @enabled.setter 
  def enabled(self,value): 
    self.set_enabled(value)
  @property
  def navmesh(self): 
    return self.get_navmesh()
  @navmesh.setter 
  def navmesh(self,value): 
    self.set_navmesh(value)

##################################Generated Methods#########################################
  def  get_navigation_mesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NavigationMesh ret
    api_core.godot_method_bind_ptrcall(bind_navigationmeshinstance_get_navigation_mesh,self.godot_owner,[NULL,],&ret)
  def  is_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_navigationmeshinstance_is_enabled,self.godot_owner,[NULL,],&ret)
  def  set_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmeshinstance_set_enabled,self.godot_owner,[NULL,],NULL)
  def  set_navigation_mesh(self, navmesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmeshinstance_set_navigation_mesh,self.godot_owner,[NULL,],NULL)
