from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_packeddatacontainer__get_data
cdef godot_method_bind *bind_packeddatacontainer__iter_get
cdef godot_method_bind *bind_packeddatacontainer__iter_init
cdef godot_method_bind *bind_packeddatacontainer__iter_next
cdef godot_method_bind *bind_packeddatacontainer__set_data
cdef godot_method_bind *bind_packeddatacontainer_pack
cdef godot_method_bind *bind_packeddatacontainer_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_packeddatacontainer__get_data = api_core.godot_method_bind_get_method('PackedDataContainer', '_get_data')
  bind_packeddatacontainer__iter_get = api_core.godot_method_bind_get_method('PackedDataContainer', '_iter_get')
  bind_packeddatacontainer__iter_init = api_core.godot_method_bind_get_method('PackedDataContainer', '_iter_init')
  bind_packeddatacontainer__iter_next = api_core.godot_method_bind_get_method('PackedDataContainer', '_iter_next')
  bind_packeddatacontainer__set_data = api_core.godot_method_bind_get_method('PackedDataContainer', '_set_data')
  bind_packeddatacontainer_pack = api_core.godot_method_bind_get_method('PackedDataContainer', 'pack')
  bind_packeddatacontainer_size = api_core.godot_method_bind_get_method('PackedDataContainer', 'size')

############################Generated class###################################
cdef class PackedDataContainer(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PackedDataContainer")())
##################################Generated Properties#########################################
  @property
  def __data__(self): 
    return self.get___data__()
  @__data__.setter 
  def __data__(self,value): 
    self.set___data__(value)

##################################Generated Methods#########################################
  def  _get_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolByteArray ret
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer__get_data,self.godot_owner,[NULL,],&ret)
  def  _iter_get(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer__iter_get,self.godot_owner,[NULL,],&ret)
  def  _iter_init(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer__iter_init,self.godot_owner,[NULL,],&ret)
  def  _iter_next(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer__iter_next,self.godot_owner,[NULL,],&ret)
  def  _set_data(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer__set_data,self.godot_owner,[NULL,],NULL)
  def  pack(self, value):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer_pack,self.godot_owner,[NULL,],&ret)
  def  size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer_size,self.godot_owner,[NULL,],&ret)
