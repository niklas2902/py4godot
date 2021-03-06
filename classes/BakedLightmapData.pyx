from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_bakedlightmapdata__get_user_data
cdef godot_method_bind *bind_bakedlightmapdata__set_user_data
cdef godot_method_bind *bind_bakedlightmapdata_add_user
cdef godot_method_bind *bind_bakedlightmapdata_clear_users
cdef godot_method_bind *bind_bakedlightmapdata_get_bounds
cdef godot_method_bind *bind_bakedlightmapdata_get_cell_space_transform
cdef godot_method_bind *bind_bakedlightmapdata_get_cell_subdiv
cdef godot_method_bind *bind_bakedlightmapdata_get_energy
cdef godot_method_bind *bind_bakedlightmapdata_get_octree
cdef godot_method_bind *bind_bakedlightmapdata_get_user_count
cdef godot_method_bind *bind_bakedlightmapdata_get_user_lightmap
cdef godot_method_bind *bind_bakedlightmapdata_get_user_path
cdef godot_method_bind *bind_bakedlightmapdata_set_bounds
cdef godot_method_bind *bind_bakedlightmapdata_set_cell_space_transform
cdef godot_method_bind *bind_bakedlightmapdata_set_cell_subdiv
cdef godot_method_bind *bind_bakedlightmapdata_set_energy
cdef godot_method_bind *bind_bakedlightmapdata_set_octree
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_bakedlightmapdata__get_user_data = api_core.godot_method_bind_get_method('BakedLightmapData', '_get_user_data')
  bind_bakedlightmapdata__set_user_data = api_core.godot_method_bind_get_method('BakedLightmapData', '_set_user_data')
  bind_bakedlightmapdata_add_user = api_core.godot_method_bind_get_method('BakedLightmapData', 'add_user')
  bind_bakedlightmapdata_clear_users = api_core.godot_method_bind_get_method('BakedLightmapData', 'clear_users')
  bind_bakedlightmapdata_get_bounds = api_core.godot_method_bind_get_method('BakedLightmapData', 'get_bounds')
  bind_bakedlightmapdata_get_cell_space_transform = api_core.godot_method_bind_get_method('BakedLightmapData', 'get_cell_space_transform')
  bind_bakedlightmapdata_get_cell_subdiv = api_core.godot_method_bind_get_method('BakedLightmapData', 'get_cell_subdiv')
  bind_bakedlightmapdata_get_energy = api_core.godot_method_bind_get_method('BakedLightmapData', 'get_energy')
  bind_bakedlightmapdata_get_octree = api_core.godot_method_bind_get_method('BakedLightmapData', 'get_octree')
  bind_bakedlightmapdata_get_user_count = api_core.godot_method_bind_get_method('BakedLightmapData', 'get_user_count')
  bind_bakedlightmapdata_get_user_lightmap = api_core.godot_method_bind_get_method('BakedLightmapData', 'get_user_lightmap')
  bind_bakedlightmapdata_get_user_path = api_core.godot_method_bind_get_method('BakedLightmapData', 'get_user_path')
  bind_bakedlightmapdata_set_bounds = api_core.godot_method_bind_get_method('BakedLightmapData', 'set_bounds')
  bind_bakedlightmapdata_set_cell_space_transform = api_core.godot_method_bind_get_method('BakedLightmapData', 'set_cell_space_transform')
  bind_bakedlightmapdata_set_cell_subdiv = api_core.godot_method_bind_get_method('BakedLightmapData', 'set_cell_subdiv')
  bind_bakedlightmapdata_set_energy = api_core.godot_method_bind_get_method('BakedLightmapData', 'set_energy')
  bind_bakedlightmapdata_set_octree = api_core.godot_method_bind_get_method('BakedLightmapData', 'set_octree')

############################Generated class###################################
cdef class BakedLightmapData(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("BakedLightmapData")())
##################################Generated Properties#########################################
  @property
  def bounds(self): 
    return self.get_bounds()
  @bounds.setter 
  def bounds(self,value): 
    self.set_bounds(value)
  @property
  def cell_space_transform(self): 
    return self.get_cell_space_transform()
  @cell_space_transform.setter 
  def cell_space_transform(self,value): 
    self.set_cell_space_transform(value)
  @property
  def cell_subdiv(self): 
    return self.get_cell_subdiv()
  @cell_subdiv.setter 
  def cell_subdiv(self,value): 
    self.set_cell_subdiv(value)
  @property
  def energy(self): 
    return self.get_energy()
  @energy.setter 
  def energy(self,value): 
    self.set_energy(value)
  @property
  def octree(self): 
    return self.get_octree()
  @octree.setter 
  def octree(self,value): 
    self.set_octree(value)
  @property
  def user_data(self): 
    return self.get_user_data()
  @user_data.setter 
  def user_data(self,value): 
    self.set_user_data(value)

##################################Generated Methods#########################################
  def  _get_user_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata__get_user_data,self.godot_owner,[NULL,],&ret)
  def  _set_user_data(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata__set_user_data,self.godot_owner,[NULL,],NULL)
  def  add_user(self, pathlightmapinstance):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_add_user,self.godot_owner,[NULL,],NULL)
  def  clear_users(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_clear_users,self.godot_owner,[NULL,],NULL)
  def  get_bounds(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AABB ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_get_bounds,self.godot_owner,[NULL,],&ret)
  def  get_cell_space_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_get_cell_space_transform,self.godot_owner,[NULL,],&ret)
  def  get_cell_subdiv(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_get_cell_subdiv,self.godot_owner,[NULL,],&ret)
  def  get_energy(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_get_energy,self.godot_owner,[NULL,],&ret)
  def  get_octree(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolByteArray ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_get_octree,self.godot_owner,[NULL,],&ret)
  def  get_user_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_get_user_count,self.godot_owner,[NULL,],&ret)
  def  get_user_lightmap(self, user_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_get_user_lightmap,self.godot_owner,[NULL,],&ret)
  def  get_user_path(self, user_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_get_user_path,self.godot_owner,[NULL,],&ret)
  def  set_bounds(self, bounds):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_set_bounds,self.godot_owner,[NULL,],NULL)
  def  set_cell_space_transform(self, xform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_set_cell_space_transform,self.godot_owner,[NULL,],NULL)
  def  set_cell_subdiv(self, cell_subdiv):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_set_cell_subdiv,self.godot_owner,[NULL,],NULL)
  def  set_energy(self, energy):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_set_energy,self.godot_owner,[NULL,],NULL)
  def  set_octree(self, octree):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmapdata_set_octree,self.godot_owner,[NULL,],NULL)
