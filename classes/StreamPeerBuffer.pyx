from classes.StreamPeer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class StreamPeerBuffer(StreamPeer):
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
    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_clear,self.godot_owner,[NULL,],NULL)
  def  duplicate(self):
    cdef godot_object *_owner = self.godot_owner
    cdef StreamPeerBuffer ret
    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_duplicate,self.godot_owner,[NULL,],&ret)
  def  get_data_array(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolByteArray ret
    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_get_data_array,self.godot_owner,[NULL,],&ret)
  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_get_position,self.godot_owner,[NULL,],&ret)
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_get_size,self.godot_owner,[NULL,],&ret)
  def  resize(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_resize,self.godot_owner,[NULL,],NULL)
  def  seek(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_seek,self.godot_owner,[NULL,],NULL)
  def  set_data_array(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeerbuffer_set_data_array,self.godot_owner,[NULL,],NULL)
