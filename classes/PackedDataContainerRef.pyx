from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_packeddatacontainerref__is_dictionary
cdef godot_method_bind *bind_packeddatacontainerref__iter_get
cdef godot_method_bind *bind_packeddatacontainerref__iter_init
cdef godot_method_bind *bind_packeddatacontainerref__iter_next
cdef godot_method_bind *bind_packeddatacontainerref_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_packeddatacontainerref__is_dictionary = api_core.godot_method_bind_get_method('PackedDataContainerRef', '_is_dictionary')
  bind_packeddatacontainerref__iter_get = api_core.godot_method_bind_get_method('PackedDataContainerRef', '_iter_get')
  bind_packeddatacontainerref__iter_init = api_core.godot_method_bind_get_method('PackedDataContainerRef', '_iter_init')
  bind_packeddatacontainerref__iter_next = api_core.godot_method_bind_get_method('PackedDataContainerRef', '_iter_next')
  bind_packeddatacontainerref_size = api_core.godot_method_bind_get_method('PackedDataContainerRef', 'size')

############################Generated class###################################
cdef class PackedDataContainerRef(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PackedDataContainerRef")())
##################################Generated Methods#########################################
  def  _is_dictionary(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainerref__is_dictionary,self.godot_owner,[NULL,],&ret)
  def  _iter_get(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainerref__iter_get,self.godot_owner,[NULL,],&ret)
  def  _iter_init(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainerref__iter_init,self.godot_owner,[NULL,],&ret)
  def  _iter_next(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainerref__iter_next,self.godot_owner,[NULL,],&ret)
  def  size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainerref_size,self.godot_owner,[NULL,],&ret)
