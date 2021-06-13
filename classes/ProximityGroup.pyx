
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
cimport classes.Spatial 

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
cdef class ProximityGroup(classes.Spatial.Spatial):
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
  def  _proximity_group_broadcast(self,  String name,  Variant params):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &params._native
    api_core.godot_method_bind_ptrcall(bind_proximitygroup__proximity_group_broadcast,self.godot_owner,args,NULL)
    hello('hallo2')
  def  broadcast(self,  String name,  Variant parameters):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &parameters._native
    api_core.godot_method_bind_ptrcall(bind_proximitygroup_broadcast,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_dispatch_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef ProximityGroup_DispatchMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_proximitygroup_get_dispatch_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_grid_radius(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_proximitygroup_get_grid_radius,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_group_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_proximitygroup_get_group_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  set_dispatch_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_proximitygroup_set_dispatch_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_grid_radius(self,  Vector3 radius):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radius._native
    api_core.godot_method_bind_ptrcall(bind_proximitygroup_set_grid_radius,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_group_name(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_proximitygroup_set_group_name,self.godot_owner,args,NULL)
    hello('hallo2')
