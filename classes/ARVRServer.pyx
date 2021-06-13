
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
cimport classes.ARVRInterface
cimport classes.Object 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_arvrserver_center_on_hmd
cdef godot_method_bind *bind_arvrserver_find_interface
cdef godot_method_bind *bind_arvrserver_get_hmd_transform
cdef godot_method_bind *bind_arvrserver_get_interface
cdef godot_method_bind *bind_arvrserver_get_interface_count
cdef godot_method_bind *bind_arvrserver_get_interfaces
cdef godot_method_bind *bind_arvrserver_get_last_commit_usec
cdef godot_method_bind *bind_arvrserver_get_last_frame_usec
cdef godot_method_bind *bind_arvrserver_get_last_process_usec
cdef godot_method_bind *bind_arvrserver_get_primary_interface
cdef godot_method_bind *bind_arvrserver_get_reference_frame
cdef godot_method_bind *bind_arvrserver_get_tracker
cdef godot_method_bind *bind_arvrserver_get_tracker_count
cdef godot_method_bind *bind_arvrserver_get_world_scale
cdef godot_method_bind *bind_arvrserver_set_primary_interface
cdef godot_method_bind *bind_arvrserver_set_world_scale
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_arvrserver_center_on_hmd = api_core.godot_method_bind_get_method('ARVRServer', 'center_on_hmd')
  bind_arvrserver_find_interface = api_core.godot_method_bind_get_method('ARVRServer', 'find_interface')
  bind_arvrserver_get_hmd_transform = api_core.godot_method_bind_get_method('ARVRServer', 'get_hmd_transform')
  bind_arvrserver_get_interface = api_core.godot_method_bind_get_method('ARVRServer', 'get_interface')
  bind_arvrserver_get_interface_count = api_core.godot_method_bind_get_method('ARVRServer', 'get_interface_count')
  bind_arvrserver_get_interfaces = api_core.godot_method_bind_get_method('ARVRServer', 'get_interfaces')
  bind_arvrserver_get_last_commit_usec = api_core.godot_method_bind_get_method('ARVRServer', 'get_last_commit_usec')
  bind_arvrserver_get_last_frame_usec = api_core.godot_method_bind_get_method('ARVRServer', 'get_last_frame_usec')
  bind_arvrserver_get_last_process_usec = api_core.godot_method_bind_get_method('ARVRServer', 'get_last_process_usec')
  bind_arvrserver_get_primary_interface = api_core.godot_method_bind_get_method('ARVRServer', 'get_primary_interface')
  bind_arvrserver_get_reference_frame = api_core.godot_method_bind_get_method('ARVRServer', 'get_reference_frame')
  bind_arvrserver_get_tracker = api_core.godot_method_bind_get_method('ARVRServer', 'get_tracker')
  bind_arvrserver_get_tracker_count = api_core.godot_method_bind_get_method('ARVRServer', 'get_tracker_count')
  bind_arvrserver_get_world_scale = api_core.godot_method_bind_get_method('ARVRServer', 'get_world_scale')
  bind_arvrserver_set_primary_interface = api_core.godot_method_bind_get_method('ARVRServer', 'set_primary_interface')
  bind_arvrserver_set_world_scale = api_core.godot_method_bind_get_method('ARVRServer', 'set_world_scale')

############################Generated class###################################
cdef class ARVRServer(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ARVRServer")())
##################################Generated Properties#########################################
  @property
  def primary_interface(self): 
    return self.get_primary_interface()
  @primary_interface.setter 
  def primary_interface(self,value): 
    self.set_primary_interface(value)
  @property
  def world_scale(self): 
    return self.get_world_scale()
  @world_scale.setter 
  def world_scale(self,value): 
    self.set_world_scale(value)

##################################Generated Methods#########################################
  def  center_on_hmd(self,  int rotation_mode,  bool keep_height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &rotation_mode
    args[1] = &keep_height
    api_core.godot_method_bind_ptrcall(bind_arvrserver_center_on_hmd,self.godot_owner,args,NULL)
    hello('hallo2')
  def  find_interface(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_arvrserver_find_interface,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_hmd_transform(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrserver_get_hmd_transform,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  get_interface(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_arvrserver_get_interface,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_interface_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrserver_get_interface_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_interfaces(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrserver_get_interfaces,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_last_commit_usec(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrserver_get_last_commit_usec,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_last_frame_usec(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrserver_get_last_frame_usec,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_last_process_usec(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrserver_get_last_process_usec,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_primary_interface(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrserver_get_primary_interface,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_reference_frame(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrserver_get_reference_frame,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  get_tracker(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_arvrserver_get_tracker,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_tracker_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrserver_get_tracker_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_world_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrserver_get_world_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_primary_interface(self,  classes.ARVRInterface.ARVRInterface interface):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = interface.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrserver_set_primary_interface,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_world_scale(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_arvrserver_set_world_scale,self.godot_owner,args,NULL)
    hello('hallo2')
