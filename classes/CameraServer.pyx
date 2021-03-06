from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_cameraserver_add_feed
cdef godot_method_bind *bind_cameraserver_feeds
cdef godot_method_bind *bind_cameraserver_get_feed
cdef godot_method_bind *bind_cameraserver_get_feed_count
cdef godot_method_bind *bind_cameraserver_remove_feed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_cameraserver_add_feed = api_core.godot_method_bind_get_method('CameraServer', 'add_feed')
  bind_cameraserver_feeds = api_core.godot_method_bind_get_method('CameraServer', 'feeds')
  bind_cameraserver_get_feed = api_core.godot_method_bind_get_method('CameraServer', 'get_feed')
  bind_cameraserver_get_feed_count = api_core.godot_method_bind_get_method('CameraServer', 'get_feed_count')
  bind_cameraserver_remove_feed = api_core.godot_method_bind_get_method('CameraServer', 'remove_feed')

############################Generated class###################################
cdef class CameraServer(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CameraServer")())
##################################Generated Methods#########################################
  def  add_feed(self, feed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cameraserver_add_feed,self.godot_owner,[NULL,],NULL)
  def  feeds(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_cameraserver_feeds,self.godot_owner,[NULL,],&ret)
  def  get_feed(self, index):
    cdef godot_object *_owner = self.godot_owner
    cdef CameraFeed ret
    api_core.godot_method_bind_ptrcall(bind_cameraserver_get_feed,self.godot_owner,[NULL,],&ret)
  def  get_feed_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_cameraserver_get_feed_count,self.godot_owner,[NULL,],&ret)
  def  remove_feed(self, feed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cameraserver_remove_feed,self.godot_owner,[NULL,],NULL)
