from classes.PrimitiveMesh cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_cubemesh_get_size
cdef godot_method_bind *bind_cubemesh_get_subdivide_depth
cdef godot_method_bind *bind_cubemesh_get_subdivide_height
cdef godot_method_bind *bind_cubemesh_get_subdivide_width
cdef godot_method_bind *bind_cubemesh_set_size
cdef godot_method_bind *bind_cubemesh_set_subdivide_depth
cdef godot_method_bind *bind_cubemesh_set_subdivide_height
cdef godot_method_bind *bind_cubemesh_set_subdivide_width
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_cubemesh_get_size = api_core.godot_method_bind_get_method('CubeMesh', 'get_size')
  bind_cubemesh_get_subdivide_depth = api_core.godot_method_bind_get_method('CubeMesh', 'get_subdivide_depth')
  bind_cubemesh_get_subdivide_height = api_core.godot_method_bind_get_method('CubeMesh', 'get_subdivide_height')
  bind_cubemesh_get_subdivide_width = api_core.godot_method_bind_get_method('CubeMesh', 'get_subdivide_width')
  bind_cubemesh_set_size = api_core.godot_method_bind_get_method('CubeMesh', 'set_size')
  bind_cubemesh_set_subdivide_depth = api_core.godot_method_bind_get_method('CubeMesh', 'set_subdivide_depth')
  bind_cubemesh_set_subdivide_height = api_core.godot_method_bind_get_method('CubeMesh', 'set_subdivide_height')
  bind_cubemesh_set_subdivide_width = api_core.godot_method_bind_get_method('CubeMesh', 'set_subdivide_width')

############################Generated class###################################
cdef class CubeMesh(PrimitiveMesh):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CubeMesh")())
##################################Generated Properties#########################################
  @property
  def size(self): 
    return self.get_size()
  @size.setter 
  def size(self,value): 
    self.set_size(value)
  @property
  def subdivide_depth(self): 
    return self.get_subdivide_depth()
  @subdivide_depth.setter 
  def subdivide_depth(self,value): 
    self.set_subdivide_depth(value)
  @property
  def subdivide_height(self): 
    return self.get_subdivide_height()
  @subdivide_height.setter 
  def subdivide_height(self,value): 
    self.set_subdivide_height(value)
  @property
  def subdivide_width(self): 
    return self.get_subdivide_width()
  @subdivide_width.setter 
  def subdivide_width(self,value): 
    self.set_subdivide_width(value)

##################################Generated Methods#########################################
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_cubemesh_get_size,self.godot_owner,[NULL,],&ret)
  def  get_subdivide_depth(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_cubemesh_get_subdivide_depth,self.godot_owner,[NULL,],&ret)
  def  get_subdivide_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_cubemesh_get_subdivide_height,self.godot_owner,[NULL,],&ret)
  def  get_subdivide_width(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_cubemesh_get_subdivide_width,self.godot_owner,[NULL,],&ret)
  def  set_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cubemesh_set_size,self.godot_owner,[NULL,],NULL)
  def  set_subdivide_depth(self, divisions):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cubemesh_set_subdivide_depth,self.godot_owner,[NULL,],NULL)
  def  set_subdivide_height(self, divisions):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cubemesh_set_subdivide_height,self.godot_owner,[NULL,],NULL)
  def  set_subdivide_width(self, subdivide):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cubemesh_set_subdivide_width,self.godot_owner,[NULL,],NULL)
