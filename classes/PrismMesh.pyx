from classes.PrimitiveMesh cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_prismmesh_get_left_to_right
cdef godot_method_bind *bind_prismmesh_get_size
cdef godot_method_bind *bind_prismmesh_get_subdivide_depth
cdef godot_method_bind *bind_prismmesh_get_subdivide_height
cdef godot_method_bind *bind_prismmesh_get_subdivide_width
cdef godot_method_bind *bind_prismmesh_set_left_to_right
cdef godot_method_bind *bind_prismmesh_set_size
cdef godot_method_bind *bind_prismmesh_set_subdivide_depth
cdef godot_method_bind *bind_prismmesh_set_subdivide_height
cdef godot_method_bind *bind_prismmesh_set_subdivide_width
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_prismmesh_get_left_to_right = api_core.godot_method_bind_get_method('PrismMesh', 'get_left_to_right')
  bind_prismmesh_get_size = api_core.godot_method_bind_get_method('PrismMesh', 'get_size')
  bind_prismmesh_get_subdivide_depth = api_core.godot_method_bind_get_method('PrismMesh', 'get_subdivide_depth')
  bind_prismmesh_get_subdivide_height = api_core.godot_method_bind_get_method('PrismMesh', 'get_subdivide_height')
  bind_prismmesh_get_subdivide_width = api_core.godot_method_bind_get_method('PrismMesh', 'get_subdivide_width')
  bind_prismmesh_set_left_to_right = api_core.godot_method_bind_get_method('PrismMesh', 'set_left_to_right')
  bind_prismmesh_set_size = api_core.godot_method_bind_get_method('PrismMesh', 'set_size')
  bind_prismmesh_set_subdivide_depth = api_core.godot_method_bind_get_method('PrismMesh', 'set_subdivide_depth')
  bind_prismmesh_set_subdivide_height = api_core.godot_method_bind_get_method('PrismMesh', 'set_subdivide_height')
  bind_prismmesh_set_subdivide_width = api_core.godot_method_bind_get_method('PrismMesh', 'set_subdivide_width')

############################Generated class###################################
cdef class PrismMesh(PrimitiveMesh):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PrismMesh")())
##################################Generated Properties#########################################
  @property
  def left_to_right(self): 
    return self.get_left_to_right()
  @left_to_right.setter 
  def left_to_right(self,value): 
    self.set_left_to_right(value)
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
  def  get_left_to_right(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_prismmesh_get_left_to_right,self.godot_owner,[NULL,],&ret)
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_prismmesh_get_size,self.godot_owner,[NULL,],&ret)
  def  get_subdivide_depth(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_prismmesh_get_subdivide_depth,self.godot_owner,[NULL,],&ret)
  def  get_subdivide_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_prismmesh_get_subdivide_height,self.godot_owner,[NULL,],&ret)
  def  get_subdivide_width(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_prismmesh_get_subdivide_width,self.godot_owner,[NULL,],&ret)
  def  set_left_to_right(self, left_to_right):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_prismmesh_set_left_to_right,self.godot_owner,[NULL,],NULL)
  def  set_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_prismmesh_set_size,self.godot_owner,[NULL,],NULL)
  def  set_subdivide_depth(self, segments):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_prismmesh_set_subdivide_depth,self.godot_owner,[NULL,],NULL)
  def  set_subdivide_height(self, segments):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_prismmesh_set_subdivide_height,self.godot_owner,[NULL,],NULL)
  def  set_subdivide_width(self, segments):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_prismmesh_set_subdivide_width,self.godot_owner,[NULL,],NULL)
