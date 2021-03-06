from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class ARVRInterface(Reference):
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
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_get_anchor_detection_is_enabled,self.godot_owner,[NULL,],&ret)
  def  get_camera_feed_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_get_camera_feed_id,self.godot_owner,[NULL,],&ret)
  def  get_capabilities(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_get_capabilities,self.godot_owner,[NULL,],&ret)
  def  get_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_get_name,self.godot_owner,[NULL,],&ret)
  def  get_render_targetsize(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_get_render_targetsize,self.godot_owner,[NULL,],&ret)
  def  get_tracking_status(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ARVRInterface::Tracking_status ret
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_get_tracking_status,self.godot_owner,[NULL,],&ret)
  def  initialize(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_initialize,self.godot_owner,[NULL,],&ret)
  def  is_initialized(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_is_initialized,self.godot_owner,[NULL,],&ret)
  def  is_primary(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_is_primary,self.godot_owner,[NULL,],&ret)
  def  is_stereo(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_is_stereo,self.godot_owner,[NULL,],&ret)
  def  set_anchor_detection_is_enabled(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_set_anchor_detection_is_enabled,self.godot_owner,[NULL,],NULL)
  def  set_is_initialized(self, initialized):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_set_is_initialized,self.godot_owner,[NULL,],NULL)
  def  set_is_primary(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_set_is_primary,self.godot_owner,[NULL,],NULL)
  def  uninitialize(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrinterface_uninitialize,self.godot_owner,[NULL,],NULL)
