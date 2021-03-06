from classes.Texture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_cameratexture_get_camera_active
cdef godot_method_bind *bind_cameratexture_get_camera_feed_id
cdef godot_method_bind *bind_cameratexture_get_which_feed
cdef godot_method_bind *bind_cameratexture_set_camera_active
cdef godot_method_bind *bind_cameratexture_set_camera_feed_id
cdef godot_method_bind *bind_cameratexture_set_which_feed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_cameratexture_get_camera_active = api_core.godot_method_bind_get_method('CameraTexture', 'get_camera_active')
  bind_cameratexture_get_camera_feed_id = api_core.godot_method_bind_get_method('CameraTexture', 'get_camera_feed_id')
  bind_cameratexture_get_which_feed = api_core.godot_method_bind_get_method('CameraTexture', 'get_which_feed')
  bind_cameratexture_set_camera_active = api_core.godot_method_bind_get_method('CameraTexture', 'set_camera_active')
  bind_cameratexture_set_camera_feed_id = api_core.godot_method_bind_get_method('CameraTexture', 'set_camera_feed_id')
  bind_cameratexture_set_which_feed = api_core.godot_method_bind_get_method('CameraTexture', 'set_which_feed')

############################Generated class###################################
cdef class CameraTexture(Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CameraTexture")())
##################################Generated Properties#########################################
  @property
  def camera_feed_id(self): 
    return self.get_camera_feed_id()
  @camera_feed_id.setter 
  def camera_feed_id(self,value): 
    self.set_camera_feed_id(value)
  @property
  def camera_is_active(self): 
    return self.get_camera_is_active()
  @camera_is_active.setter 
  def camera_is_active(self,value): 
    self.set_camera_is_active(value)
  @property
  def which_feed(self): 
    return self.get_which_feed()
  @which_feed.setter 
  def which_feed(self,value): 
    self.set_which_feed(value)

##################################Generated Methods#########################################
  def  get_camera_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_cameratexture_get_camera_active,self.godot_owner,[NULL,],&ret)
  def  get_camera_feed_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_cameratexture_get_camera_feed_id,self.godot_owner,[NULL,],&ret)
  def  get_which_feed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CameraServer::FeedImage ret
    api_core.godot_method_bind_ptrcall(bind_cameratexture_get_which_feed,self.godot_owner,[NULL,],&ret)
  def  set_camera_active(self, active):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cameratexture_set_camera_active,self.godot_owner,[NULL,],NULL)
  def  set_camera_feed_id(self, feed_id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cameratexture_set_camera_feed_id,self.godot_owner,[NULL,],NULL)
  def  set_which_feed(self, which_feed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cameratexture_set_which_feed,self.godot_owner,[NULL,],NULL)
