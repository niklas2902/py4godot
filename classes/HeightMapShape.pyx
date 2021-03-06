from classes.Shape cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_heightmapshape_get_map_data
cdef godot_method_bind *bind_heightmapshape_get_map_depth
cdef godot_method_bind *bind_heightmapshape_get_map_width
cdef godot_method_bind *bind_heightmapshape_set_map_data
cdef godot_method_bind *bind_heightmapshape_set_map_depth
cdef godot_method_bind *bind_heightmapshape_set_map_width
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_heightmapshape_get_map_data = api_core.godot_method_bind_get_method('HeightMapShape', 'get_map_data')
  bind_heightmapshape_get_map_depth = api_core.godot_method_bind_get_method('HeightMapShape', 'get_map_depth')
  bind_heightmapshape_get_map_width = api_core.godot_method_bind_get_method('HeightMapShape', 'get_map_width')
  bind_heightmapshape_set_map_data = api_core.godot_method_bind_get_method('HeightMapShape', 'set_map_data')
  bind_heightmapshape_set_map_depth = api_core.godot_method_bind_get_method('HeightMapShape', 'set_map_depth')
  bind_heightmapshape_set_map_width = api_core.godot_method_bind_get_method('HeightMapShape', 'set_map_width')

############################Generated class###################################
cdef class HeightMapShape(Shape):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("HeightMapShape")())
##################################Generated Properties#########################################
  @property
  def map_data(self): 
    return self.get_map_data()
  @map_data.setter 
  def map_data(self,value): 
    self.set_map_data(value)
  @property
  def map_depth(self): 
    return self.get_map_depth()
  @map_depth.setter 
  def map_depth(self,value): 
    self.set_map_depth(value)
  @property
  def map_width(self): 
    return self.get_map_width()
  @map_width.setter 
  def map_width(self,value): 
    self.set_map_width(value)

##################################Generated Methods#########################################
  def  get_map_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolRealArray ret
    api_core.godot_method_bind_ptrcall(bind_heightmapshape_get_map_data,self.godot_owner,[NULL,],&ret)
  def  get_map_depth(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_heightmapshape_get_map_depth,self.godot_owner,[NULL,],&ret)
  def  get_map_width(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_heightmapshape_get_map_width,self.godot_owner,[NULL,],&ret)
  def  set_map_data(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_heightmapshape_set_map_data,self.godot_owner,[NULL,],NULL)
  def  set_map_depth(self, height):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_heightmapshape_set_map_depth,self.godot_owner,[NULL,],NULL)
  def  set_map_width(self, width):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_heightmapshape_set_map_width,self.godot_owner,[NULL,],NULL)
