
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
cimport classes.Image
cimport classes.Image
cimport classes.Image
cimport classes.Image
cimport classes.Reference 

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
cdef class CameraFeed(classes.Reference.Reference):
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
  def  _allocate_texture(self,  int width,  int height,  int format,  int texture_type,  int data_type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &width
    args[1] = &height
    args[2] = &format
    args[3] = &texture_type
    args[4] = &data_type
    api_core.godot_method_bind_ptrcall(bind_camerafeed__allocate_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_RGB_img(self,  classes.Image.Image rgb_img):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = rgb_img.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camerafeed__set_RGB_img,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_YCbCr_img(self,  classes.Image.Image ycbcr_img):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = ycbcr_img.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camerafeed__set_YCbCr_img,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_YCbCr_imgs(self,  classes.Image.Image y_img,  classes.Image.Image cbcr_img):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = y_img.godot_owner
    args[1] = cbcr_img.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camerafeed__set_YCbCr_imgs,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_name(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_camerafeed__set_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_position(self,  int position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position
    api_core.godot_method_bind_ptrcall(bind_camerafeed__set_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camerafeed_get_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camerafeed_get_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef FeedPosition* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camerafeed_get_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_transform(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camerafeed_get_transform,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  is_active(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camerafeed_is_active,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_active(self,  bool active):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &active
    api_core.godot_method_bind_ptrcall(bind_camerafeed_set_active,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_transform(self,  Transform2D transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_camerafeed_set_transform,self.godot_owner,args,NULL)
    hello('hallo2')
