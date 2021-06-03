
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_arvrinterface_get_anchor_detection_is_enabled
cdef godot_method_bind *bind_arvrinterface_get_camera_feed_id
cdef godot_method_bind *bind_arvrinterface_get_capabilities
cdef godot_method_bind *bind_arvrinterface_get_name
cdef godot_method_bind *bind_arvrinterface_get_render_targetsize
cdef godot_method_bind *bind_arvrinterface_get_tracking_status
cdef godot_method_bind *bind_arvrinterface_initialize
cdef godot_method_bind *bind_arvrinterface_is_initialized
cdef godot_method_bind *bind_arvrinterface_is_primary
cdef godot_method_bind *bind_arvrinterface_is_stereo
cdef godot_method_bind *bind_arvrinterface_set_anchor_detection_is_enabled
cdef godot_method_bind *bind_arvrinterface_set_is_initialized
cdef godot_method_bind *bind_arvrinterface_set_is_primary
cdef godot_method_bind *bind_arvrinterface_uninitialize
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_arvrinterface_get_anchor_detection_is_enabled = api_core.godot_method_bind_get_method('ARVRInterface', 'get_anchor_detection_is_enabled')
  bind_arvrinterface_get_camera_feed_id = api_core.godot_method_bind_get_method('ARVRInterface', 'get_camera_feed_id')
  bind_arvrinterface_get_capabilities = api_core.godot_method_bind_get_method('ARVRInterface', 'get_capabilities')
  bind_arvrinterface_get_name = api_core.godot_method_bind_get_method('ARVRInterface', 'get_name')
  bind_arvrinterface_get_render_targetsize = api_core.godot_method_bind_get_method('ARVRInterface', 'get_render_targetsize')
  bind_arvrinterface_get_tracking_status = api_core.godot_method_bind_get_method('ARVRInterface', 'get_tracking_status')
  bind_arvrinterface_initialize = api_core.godot_method_bind_get_method('ARVRInterface', 'initialize')
  bind_arvrinterface_is_initialized = api_core.godot_method_bind_get_method('ARVRInterface', 'is_initialized')
  bind_arvrinterface_is_primary = api_core.godot_method_bind_get_method('ARVRInterface', 'is_primary')
  bind_arvrinterface_is_stereo = api_core.godot_method_bind_get_method('ARVRInterface', 'is_stereo')
  bind_arvrinterface_set_anchor_detection_is_enabled = api_core.godot_method_bind_get_method('ARVRInterface', 'set_anchor_detection_is_enabled')
  bind_arvrinterface_set_is_initialized = api_core.godot_method_bind_get_method('ARVRInterface', 'set_is_initialized')
  bind_arvrinterface_set_is_primary = api_core.godot_method_bind_get_method('ARVRInterface', 'set_is_primary')
  bind_arvrinterface_uninitialize = api_core.godot_method_bind_get_method('ARVRInterface', 'uninitialize')

############################Generated class###################################
cdef class ARVRInterface(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ARVRInterface")())
##################################Generated Properties#########################################
  @property
  def ar_is_anchor_detection_enabled(self): 
    return self.get_ar_is_anchor_detection_enabled()
  @ar_is_anchor_detection_enabled.setter 
  def ar_is_anchor_detection_enabled(self,value): 
    self.set_ar_is_anchor_detection_enabled(value)
  @property
  def interface_is_initialized(self): 
    return self.get_interface_is_initialized()
  @interface_is_initialized.setter 
  def interface_is_initialized(self,value): 
    self.set_interface_is_initialized(value)
  @property
  def interface_is_primary(self): 
    return self.get_interface_is_primary()
  @interface_is_primary.setter 
  def interface_is_primary(self,value): 
    self.set_interface_is_primary(value)

##################################Generated Methods#########################################
  def  get_anchor_detection_is_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrinterface_get_anchor_detection_is_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_camera_feed_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrinterface_get_camera_feed_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_capabilities(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrinterface_get_capabilities,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrinterface_get_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_render_targetsize(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrinterface_get_render_targetsize,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_tracking_status(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Tracking_status* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrinterface_get_tracking_status,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  initialize(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrinterface_initialize,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_initialized(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrinterface_is_initialized,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_primary(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrinterface_is_primary,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_stereo(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrinterface_is_stereo,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_anchor_detection_is_enabled(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_set_anchor_detection_is_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_is_initialized(self,  bool initialized):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &initialized
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_set_is_initialized,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_is_primary(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_set_is_primary,self.godot_owner,args,NULL)
    hello('hallo2')
  def  uninitialize(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_arvrinterface_uninitialize,self.godot_owner,NULL,NULL)
    hello('hallo2')
