
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
cimport classes.StreamPeer 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_streampeerbuffer_clear
cdef godot_method_bind *bind_streampeerbuffer_duplicate
cdef godot_method_bind *bind_streampeerbuffer_get_data_array
cdef godot_method_bind *bind_streampeerbuffer_get_position
cdef godot_method_bind *bind_streampeerbuffer_get_size
cdef godot_method_bind *bind_streampeerbuffer_resize
cdef godot_method_bind *bind_streampeerbuffer_seek
cdef godot_method_bind *bind_streampeerbuffer_set_data_array
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_streampeerbuffer_clear = api_core.godot_method_bind_get_method('StreamPeerBuffer', 'clear')
  bind_streampeerbuffer_duplicate = api_core.godot_method_bind_get_method('StreamPeerBuffer', 'duplicate')
  bind_streampeerbuffer_get_data_array = api_core.godot_method_bind_get_method('StreamPeerBuffer', 'get_data_array')
  bind_streampeerbuffer_get_position = api_core.godot_method_bind_get_method('StreamPeerBuffer', 'get_position')
  bind_streampeerbuffer_get_size = api_core.godot_method_bind_get_method('StreamPeerBuffer', 'get_size')
  bind_streampeerbuffer_resize = api_core.godot_method_bind_get_method('StreamPeerBuffer', 'resize')
  bind_streampeerbuffer_seek = api_core.godot_method_bind_get_method('StreamPeerBuffer', 'seek')
  bind_streampeerbuffer_set_data_array = api_core.godot_method_bind_get_method('StreamPeerBuffer', 'set_data_array')

############################Generated class###################################
cdef class StreamPeerBuffer(classes.StreamPeer.StreamPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StreamPeerBuffer")())
##################################Generated Properties#########################################
  @property
  def data_array(self): 
    return self.get_data_array()
  @data_array.setter 
  def data_array(self,value): 
    self.set_data_array(value)

##################################Generated Methods#########################################
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  duplicate(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_duplicate,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_data_array(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_get_data_array,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_get_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_get_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  resize(self,  int size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_resize,self.godot_owner,args,NULL)
    hello('hallo2')
  def  seek(self,  int position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position
    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_seek,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_data_array(self,  PoolByteArray data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &data._native
    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_set_data_array,self.godot_owner,args,NULL)
    hello('hallo2')
