from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_cubemap_get_flags
cdef godot_method_bind *bind_cubemap_get_height
cdef godot_method_bind *bind_cubemap_get_lossy_storage_quality
cdef godot_method_bind *bind_cubemap_get_side
cdef godot_method_bind *bind_cubemap_get_storage
cdef godot_method_bind *bind_cubemap_get_width
cdef godot_method_bind *bind_cubemap_set_flags
cdef godot_method_bind *bind_cubemap_set_lossy_storage_quality
cdef godot_method_bind *bind_cubemap_set_side
cdef godot_method_bind *bind_cubemap_set_storage
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_cubemap_get_flags = api_core.godot_method_bind_get_method('CubeMap', 'get_flags')
  bind_cubemap_get_height = api_core.godot_method_bind_get_method('CubeMap', 'get_height')
  bind_cubemap_get_lossy_storage_quality = api_core.godot_method_bind_get_method('CubeMap', 'get_lossy_storage_quality')
  bind_cubemap_get_side = api_core.godot_method_bind_get_method('CubeMap', 'get_side')
  bind_cubemap_get_storage = api_core.godot_method_bind_get_method('CubeMap', 'get_storage')
  bind_cubemap_get_width = api_core.godot_method_bind_get_method('CubeMap', 'get_width')
  bind_cubemap_set_flags = api_core.godot_method_bind_get_method('CubeMap', 'set_flags')
  bind_cubemap_set_lossy_storage_quality = api_core.godot_method_bind_get_method('CubeMap', 'set_lossy_storage_quality')
  bind_cubemap_set_side = api_core.godot_method_bind_get_method('CubeMap', 'set_side')
  bind_cubemap_set_storage = api_core.godot_method_bind_get_method('CubeMap', 'set_storage')

############################Generated class###################################
cdef class CubeMap(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CubeMap")())
##################################Generated Properties#########################################
  @property
  def flags(self): 
    return self.get_flags()
  @flags.setter 
  def flags(self,value): 
    self.set_flags(value)
  @property
  def lossy_storage_quality(self): 
    return self.get_lossy_storage_quality()
  @lossy_storage_quality.setter 
  def lossy_storage_quality(self,value): 
    self.set_lossy_storage_quality(value)
  @property
  def storage_mode(self): 
    return self.get_storage_mode()
  @storage_mode.setter 
  def storage_mode(self,value): 
    self.set_storage_mode(value)

##################################Generated Methods#########################################
  def  get_flags(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_cubemap_get_flags,self.godot_owner,[NULL,],&ret)
  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_cubemap_get_height,self.godot_owner,[NULL,],&ret)
  def  get_lossy_storage_quality(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cubemap_get_lossy_storage_quality,self.godot_owner,[NULL,],&ret)
  def  get_side(self, side):
    cdef godot_object *_owner = self.godot_owner
    cdef Image ret
    api_core.godot_method_bind_ptrcall(bind_cubemap_get_side,self.godot_owner,[NULL,],&ret)
  def  get_storage(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CubeMap::Storage ret
    api_core.godot_method_bind_ptrcall(bind_cubemap_get_storage,self.godot_owner,[NULL,],&ret)
  def  get_width(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_cubemap_get_width,self.godot_owner,[NULL,],&ret)
  def  set_flags(self, flags):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cubemap_set_flags,self.godot_owner,[NULL,],NULL)
  def  set_lossy_storage_quality(self, quality):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cubemap_set_lossy_storage_quality,self.godot_owner,[NULL,],NULL)
  def  set_side(self, sideimage):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cubemap_set_side,self.godot_owner,[NULL,],NULL)
  def  set_storage(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cubemap_set_storage,self.godot_owner,[NULL,],NULL)
