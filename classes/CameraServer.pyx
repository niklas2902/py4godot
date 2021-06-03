
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
cimport classes.CameraFeed
cimport classes.CameraFeed
cimport classes.Object 

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
cdef class CameraServer(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CameraServer")())
##################################Generated Methods#########################################
  def  add_feed(self,  classes.CameraFeed.CameraFeed feed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = feed.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cameraserver_add_feed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  feeds(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_cameraserver_feeds,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_feed(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_cameraserver_get_feed,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_feed_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_cameraserver_get_feed_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_feed(self,  classes.CameraFeed.CameraFeed feed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = feed.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cameraserver_remove_feed,self.godot_owner,args,NULL)
    hello('hallo2')
