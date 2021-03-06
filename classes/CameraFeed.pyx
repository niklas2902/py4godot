from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_camerafeed__allocate_texture
cdef godot_method_bind *bind_camerafeed__set_RGB_img
cdef godot_method_bind *bind_camerafeed__set_YCbCr_img
cdef godot_method_bind *bind_camerafeed__set_YCbCr_imgs
cdef godot_method_bind *bind_camerafeed__set_name
cdef godot_method_bind *bind_camerafeed__set_position
cdef godot_method_bind *bind_camerafeed_get_id
cdef godot_method_bind *bind_camerafeed_get_name
cdef godot_method_bind *bind_camerafeed_get_position
cdef godot_method_bind *bind_camerafeed_get_transform
cdef godot_method_bind *bind_camerafeed_is_active
cdef godot_method_bind *bind_camerafeed_set_active
cdef godot_method_bind *bind_camerafeed_set_transform
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_camerafeed__allocate_texture = api_core.godot_method_bind_get_method('CameraFeed', '_allocate_texture')
  bind_camerafeed__set_RGB_img = api_core.godot_method_bind_get_method('CameraFeed', '_set_RGB_img')
  bind_camerafeed__set_YCbCr_img = api_core.godot_method_bind_get_method('CameraFeed', '_set_YCbCr_img')
  bind_camerafeed__set_YCbCr_imgs = api_core.godot_method_bind_get_method('CameraFeed', '_set_YCbCr_imgs')
  bind_camerafeed__set_name = api_core.godot_method_bind_get_method('CameraFeed', '_set_name')
  bind_camerafeed__set_position = api_core.godot_method_bind_get_method('CameraFeed', '_set_position')
  bind_camerafeed_get_id = api_core.godot_method_bind_get_method('CameraFeed', 'get_id')
  bind_camerafeed_get_name = api_core.godot_method_bind_get_method('CameraFeed', 'get_name')
  bind_camerafeed_get_position = api_core.godot_method_bind_get_method('CameraFeed', 'get_position')
  bind_camerafeed_get_transform = api_core.godot_method_bind_get_method('CameraFeed', 'get_transform')
  bind_camerafeed_is_active = api_core.godot_method_bind_get_method('CameraFeed', 'is_active')
  bind_camerafeed_set_active = api_core.godot_method_bind_get_method('CameraFeed', 'set_active')
  bind_camerafeed_set_transform = api_core.godot_method_bind_get_method('CameraFeed', 'set_transform')

############################Generated class###################################
cdef class CameraFeed(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CameraFeed")())
##################################Generated Properties#########################################
  @property
  def feed_is_active(self): 
    return self.get_feed_is_active()
  @feed_is_active.setter 
  def feed_is_active(self,value): 
    self.set_feed_is_active(value)
  @property
  def feed_transform(self): 
    return self.get_feed_transform()
  @feed_transform.setter 
  def feed_transform(self,value): 
    self.set_feed_transform(value)

##################################Generated Methods#########################################
  def  _allocate_texture(self, widthheightformattexture_typedata_type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camerafeed__allocate_texture,self.godot_owner,[NULL,],NULL)
  def  _set_RGB_img(self, rgb_img):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camerafeed__set_RGB_img,self.godot_owner,[NULL,],NULL)
  def  _set_YCbCr_img(self, ycbcr_img):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camerafeed__set_YCbCr_img,self.godot_owner,[NULL,],NULL)
  def  _set_YCbCr_imgs(self, y_imgcbcr_img):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camerafeed__set_YCbCr_imgs,self.godot_owner,[NULL,],NULL)
  def  _set_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camerafeed__set_name,self.godot_owner,[NULL,],NULL)
  def  _set_position(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camerafeed__set_position,self.godot_owner,[NULL,],NULL)
  def  get_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_camerafeed_get_id,self.godot_owner,[NULL,],&ret)
  def  get_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_camerafeed_get_name,self.godot_owner,[NULL,],&ret)
  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CameraFeed::FeedPosition ret
    api_core.godot_method_bind_ptrcall(bind_camerafeed_get_position,self.godot_owner,[NULL,],&ret)
  def  get_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_camerafeed_get_transform,self.godot_owner,[NULL,],&ret)
  def  is_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_camerafeed_is_active,self.godot_owner,[NULL,],&ret)
  def  set_active(self, active):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camerafeed_set_active,self.godot_owner,[NULL,],NULL)
  def  set_transform(self, transform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camerafeed_set_transform,self.godot_owner,[NULL,],NULL)
