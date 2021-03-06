from classes.VisualShaderNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodecubemap_get_cube_map
cdef godot_method_bind *bind_visualshadernodecubemap_get_source
cdef godot_method_bind *bind_visualshadernodecubemap_get_texture_type
cdef godot_method_bind *bind_visualshadernodecubemap_set_cube_map
cdef godot_method_bind *bind_visualshadernodecubemap_set_source
cdef godot_method_bind *bind_visualshadernodecubemap_set_texture_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodecubemap_get_cube_map = api_core.godot_method_bind_get_method('VisualShaderNodeCubeMap', 'get_cube_map')
  bind_visualshadernodecubemap_get_source = api_core.godot_method_bind_get_method('VisualShaderNodeCubeMap', 'get_source')
  bind_visualshadernodecubemap_get_texture_type = api_core.godot_method_bind_get_method('VisualShaderNodeCubeMap', 'get_texture_type')
  bind_visualshadernodecubemap_set_cube_map = api_core.godot_method_bind_get_method('VisualShaderNodeCubeMap', 'set_cube_map')
  bind_visualshadernodecubemap_set_source = api_core.godot_method_bind_get_method('VisualShaderNodeCubeMap', 'set_source')
  bind_visualshadernodecubemap_set_texture_type = api_core.godot_method_bind_get_method('VisualShaderNodeCubeMap', 'set_texture_type')

############################Generated class###################################
cdef class VisualShaderNodeCubeMap(VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeCubeMap")())
##################################Generated Properties#########################################
  @property
  def cube_map(self): 
    return self.get_cube_map()
  @cube_map.setter 
  def cube_map(self,value): 
    self.set_cube_map(value)
  @property
  def source(self): 
    return self.get_source()
  @source.setter 
  def source(self,value): 
    self.set_source(value)
  @property
  def texture_type(self): 
    return self.get_texture_type()
  @texture_type.setter 
  def texture_type(self,value): 
    self.set_texture_type(value)

##################################Generated Methods#########################################
  def  get_cube_map(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CubeMap ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecubemap_get_cube_map,self.godot_owner,[NULL,],&ret)
  def  get_source(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualShaderNodeCubeMap::Source ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecubemap_get_source,self.godot_owner,[NULL,],&ret)
  def  get_texture_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualShaderNodeCubeMap::TextureType ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecubemap_get_texture_type,self.godot_owner,[NULL,],&ret)
  def  set_cube_map(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecubemap_set_cube_map,self.godot_owner,[NULL,],NULL)
  def  set_source(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecubemap_set_source,self.godot_owner,[NULL,],NULL)
  def  set_texture_type(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecubemap_set_texture_type,self.godot_owner,[NULL,],NULL)
