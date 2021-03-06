from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_proximitygroup__proximity_group_broadcast
cdef godot_method_bind *bind_proximitygroup_broadcast
cdef godot_method_bind *bind_proximitygroup_get_dispatch_mode
cdef godot_method_bind *bind_proximitygroup_get_grid_radius
cdef godot_method_bind *bind_proximitygroup_get_group_name
cdef godot_method_bind *bind_proximitygroup_set_dispatch_mode
cdef godot_method_bind *bind_proximitygroup_set_grid_radius
cdef godot_method_bind *bind_proximitygroup_set_group_name
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_proximitygroup__proximity_group_broadcast = api_core.godot_method_bind_get_method('ProximityGroup', '_proximity_group_broadcast')
  bind_proximitygroup_broadcast = api_core.godot_method_bind_get_method('ProximityGroup', 'broadcast')
  bind_proximitygroup_get_dispatch_mode = api_core.godot_method_bind_get_method('ProximityGroup', 'get_dispatch_mode')
  bind_proximitygroup_get_grid_radius = api_core.godot_method_bind_get_method('ProximityGroup', 'get_grid_radius')
  bind_proximitygroup_get_group_name = api_core.godot_method_bind_get_method('ProximityGroup', 'get_group_name')
  bind_proximitygroup_set_dispatch_mode = api_core.godot_method_bind_get_method('ProximityGroup', 'set_dispatch_mode')
  bind_proximitygroup_set_grid_radius = api_core.godot_method_bind_get_method('ProximityGroup', 'set_grid_radius')
  bind_proximitygroup_set_group_name = api_core.godot_method_bind_get_method('ProximityGroup', 'set_group_name')

############################Generated class###################################
cdef class ProximityGroup(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ProximityGroup")())
##################################Generated Properties#########################################
  @property
  def dispatch_mode(self): 
    return self.get_dispatch_mode()
  @dispatch_mode.setter 
  def dispatch_mode(self,value): 
    self.set_dispatch_mode(value)
  @property
  def grid_radius(self): 
    return self.get_grid_radius()
  @grid_radius.setter 
  def grid_radius(self,value): 
    self.set_grid_radius(value)
  @property
  def group_name(self): 
    return self.get_group_name()
  @group_name.setter 
  def group_name(self,value): 
    self.set_group_name(value)

##################################Generated Methods#########################################
  def  _proximity_group_broadcast(self, nameparams):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proximitygroup__proximity_group_broadcast,self.godot_owner,[NULL,],NULL)
  def  broadcast(self, nameparameters):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proximitygroup_broadcast,self.godot_owner,[NULL,],NULL)
  def  get_dispatch_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ProximityGroup::DispatchMode ret
    api_core.godot_method_bind_ptrcall(bind_proximitygroup_get_dispatch_mode,self.godot_owner,[NULL,],&ret)
  def  get_grid_radius(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_proximitygroup_get_grid_radius,self.godot_owner,[NULL,],&ret)
  def  get_group_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_proximitygroup_get_group_name,self.godot_owner,[NULL,],&ret)
  def  set_dispatch_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proximitygroup_set_dispatch_mode,self.godot_owner,[NULL,],NULL)
  def  set_grid_radius(self, radius):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proximitygroup_set_grid_radius,self.godot_owner,[NULL,],NULL)
  def  set_group_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proximitygroup_set_group_name,self.godot_owner,[NULL,],NULL)
