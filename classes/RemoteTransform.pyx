
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
cdef class RemoteTransform(classes.Spatial.Spatial):
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

    api_core.godot_method_bind_ptrcall(bind_remotetransform_force_update_cache,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_remote_node(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_remotetransform_get_remote_node,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_update_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_remotetransform_get_update_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_update_rotation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_remotetransform_get_update_rotation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_update_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_remotetransform_get_update_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_use_global_coordinates(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_remotetransform_get_use_global_coordinates,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_remote_node(self,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_remotetransform_set_remote_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_update_position(self,  bool update_remote_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &update_remote_position
    api_core.godot_method_bind_ptrcall(bind_remotetransform_set_update_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_update_rotation(self,  bool update_remote_rotation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &update_remote_rotation
    api_core.godot_method_bind_ptrcall(bind_remotetransform_set_update_rotation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_update_scale(self,  bool update_remote_scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &update_remote_scale
    api_core.godot_method_bind_ptrcall(bind_remotetransform_set_update_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_global_coordinates(self,  bool use_global_coordinates):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &use_global_coordinates
    api_core.godot_method_bind_ptrcall(bind_remotetransform_set_use_global_coordinates,self.godot_owner,args,NULL)
    hello('hallo2')
