from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_pckpacker_add_file
cdef godot_method_bind *bind_pckpacker_flush
cdef godot_method_bind *bind_pckpacker_pck_start
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_pckpacker_add_file = api_core.godot_method_bind_get_method('PCKPacker', 'add_file')
  bind_pckpacker_flush = api_core.godot_method_bind_get_method('PCKPacker', 'flush')
  bind_pckpacker_pck_start = api_core.godot_method_bind_get_method('PCKPacker', 'pck_start')

############################Generated class###################################
cdef class PCKPacker(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PCKPacker")())
##################################Generated Methods#########################################
  def  add_file(self, pck_pathsource_path):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_pckpacker_add_file,self.godot_owner,[NULL,],&ret)
  def  flush(self, verbose):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_pckpacker_flush,self.godot_owner,[NULL,],&ret)
  def  pck_start(self, pck_namealignment):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_pckpacker_pck_start,self.godot_owner,[NULL,],&ret)
