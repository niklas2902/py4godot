from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_polygon2d__get_bones
cdef godot_method_bind *bind_polygon2d__set_bones
cdef godot_method_bind *bind_polygon2d__skeleton_bone_setup_changed
cdef godot_method_bind *bind_polygon2d_add_bone
cdef godot_method_bind *bind_polygon2d_clear_bones
cdef godot_method_bind *bind_polygon2d_erase_bone
cdef godot_method_bind *bind_polygon2d_get_antialiased
cdef godot_method_bind *bind_polygon2d_get_bone_count
cdef godot_method_bind *bind_polygon2d_get_bone_path
cdef godot_method_bind *bind_polygon2d_get_bone_weights
cdef godot_method_bind *bind_polygon2d_get_color
cdef godot_method_bind *bind_polygon2d_get_internal_vertex_count
cdef godot_method_bind *bind_polygon2d_get_invert
cdef godot_method_bind *bind_polygon2d_get_invert_border
cdef godot_method_bind *bind_polygon2d_get_offset
cdef godot_method_bind *bind_polygon2d_get_polygon
cdef godot_method_bind *bind_polygon2d_get_polygons
cdef godot_method_bind *bind_polygon2d_get_skeleton
cdef godot_method_bind *bind_polygon2d_get_texture
cdef godot_method_bind *bind_polygon2d_get_texture_offset
cdef godot_method_bind *bind_polygon2d_get_texture_rotation
cdef godot_method_bind *bind_polygon2d_get_texture_rotation_degrees
cdef godot_method_bind *bind_polygon2d_get_texture_scale
cdef godot_method_bind *bind_polygon2d_get_uv
cdef godot_method_bind *bind_polygon2d_get_vertex_colors
cdef godot_method_bind *bind_polygon2d_set_antialiased
cdef godot_method_bind *bind_polygon2d_set_bone_path
cdef godot_method_bind *bind_polygon2d_set_bone_weights
cdef godot_method_bind *bind_polygon2d_set_color
cdef godot_method_bind *bind_polygon2d_set_internal_vertex_count
cdef godot_method_bind *bind_polygon2d_set_invert
cdef godot_method_bind *bind_polygon2d_set_invert_border
cdef godot_method_bind *bind_polygon2d_set_offset
cdef godot_method_bind *bind_polygon2d_set_polygon
cdef godot_method_bind *bind_polygon2d_set_polygons
cdef godot_method_bind *bind_polygon2d_set_skeleton
cdef godot_method_bind *bind_polygon2d_set_texture
cdef godot_method_bind *bind_polygon2d_set_texture_offset
cdef godot_method_bind *bind_polygon2d_set_texture_rotation
cdef godot_method_bind *bind_polygon2d_set_texture_rotation_degrees
cdef godot_method_bind *bind_polygon2d_set_texture_scale
cdef godot_method_bind *bind_polygon2d_set_uv
cdef godot_method_bind *bind_polygon2d_set_vertex_colors
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_polygon2d__get_bones = api_core.godot_method_bind_get_method('Polygon2D', '_get_bones')
  bind_polygon2d__set_bones = api_core.godot_method_bind_get_method('Polygon2D', '_set_bones')
  bind_polygon2d__skeleton_bone_setup_changed = api_core.godot_method_bind_get_method('Polygon2D', '_skeleton_bone_setup_changed')
  bind_polygon2d_add_bone = api_core.godot_method_bind_get_method('Polygon2D', 'add_bone')
  bind_polygon2d_clear_bones = api_core.godot_method_bind_get_method('Polygon2D', 'clear_bones')
  bind_polygon2d_erase_bone = api_core.godot_method_bind_get_method('Polygon2D', 'erase_bone')
  bind_polygon2d_get_antialiased = api_core.godot_method_bind_get_method('Polygon2D', 'get_antialiased')
  bind_polygon2d_get_bone_count = api_core.godot_method_bind_get_method('Polygon2D', 'get_bone_count')
  bind_polygon2d_get_bone_path = api_core.godot_method_bind_get_method('Polygon2D', 'get_bone_path')
  bind_polygon2d_get_bone_weights = api_core.godot_method_bind_get_method('Polygon2D', 'get_bone_weights')
  bind_polygon2d_get_color = api_core.godot_method_bind_get_method('Polygon2D', 'get_color')
  bind_polygon2d_get_internal_vertex_count = api_core.godot_method_bind_get_method('Polygon2D', 'get_internal_vertex_count')
  bind_polygon2d_get_invert = api_core.godot_method_bind_get_method('Polygon2D', 'get_invert')
  bind_polygon2d_get_invert_border = api_core.godot_method_bind_get_method('Polygon2D', 'get_invert_border')
  bind_polygon2d_get_offset = api_core.godot_method_bind_get_method('Polygon2D', 'get_offset')
  bind_polygon2d_get_polygon = api_core.godot_method_bind_get_method('Polygon2D', 'get_polygon')
  bind_polygon2d_get_polygons = api_core.godot_method_bind_get_method('Polygon2D', 'get_polygons')
  bind_polygon2d_get_skeleton = api_core.godot_method_bind_get_method('Polygon2D', 'get_skeleton')
  bind_polygon2d_get_texture = api_core.godot_method_bind_get_method('Polygon2D', 'get_texture')
  bind_polygon2d_get_texture_offset = api_core.godot_method_bind_get_method('Polygon2D', 'get_texture_offset')
  bind_polygon2d_get_texture_rotation = api_core.godot_method_bind_get_method('Polygon2D', 'get_texture_rotation')
  bind_polygon2d_get_texture_rotation_degrees = api_core.godot_method_bind_get_method('Polygon2D', 'get_texture_rotation_degrees')
  bind_polygon2d_get_texture_scale = api_core.godot_method_bind_get_method('Polygon2D', 'get_texture_scale')
  bind_polygon2d_get_uv = api_core.godot_method_bind_get_method('Polygon2D', 'get_uv')
  bind_polygon2d_get_vertex_colors = api_core.godot_method_bind_get_method('Polygon2D', 'get_vertex_colors')
  bind_polygon2d_set_antialiased = api_core.godot_method_bind_get_method('Polygon2D', 'set_antialiased')
  bind_polygon2d_set_bone_path = api_core.godot_method_bind_get_method('Polygon2D', 'set_bone_path')
  bind_polygon2d_set_bone_weights = api_core.godot_method_bind_get_method('Polygon2D', 'set_bone_weights')
  bind_polygon2d_set_color = api_core.godot_method_bind_get_method('Polygon2D', 'set_color')
  bind_polygon2d_set_internal_vertex_count = api_core.godot_method_bind_get_method('Polygon2D', 'set_internal_vertex_count')
  bind_polygon2d_set_invert = api_core.godot_method_bind_get_method('Polygon2D', 'set_invert')
  bind_polygon2d_set_invert_border = api_core.godot_method_bind_get_method('Polygon2D', 'set_invert_border')
  bind_polygon2d_set_offset = api_core.godot_method_bind_get_method('Polygon2D', 'set_offset')
  bind_polygon2d_set_polygon = api_core.godot_method_bind_get_method('Polygon2D', 'set_polygon')
  bind_polygon2d_set_polygons = api_core.godot_method_bind_get_method('Polygon2D', 'set_polygons')
  bind_polygon2d_set_skeleton = api_core.godot_method_bind_get_method('Polygon2D', 'set_skeleton')
  bind_polygon2d_set_texture = api_core.godot_method_bind_get_method('Polygon2D', 'set_texture')
  bind_polygon2d_set_texture_offset = api_core.godot_method_bind_get_method('Polygon2D', 'set_texture_offset')
  bind_polygon2d_set_texture_rotation = api_core.godot_method_bind_get_method('Polygon2D', 'set_texture_rotation')
  bind_polygon2d_set_texture_rotation_degrees = api_core.godot_method_bind_get_method('Polygon2D', 'set_texture_rotation_degrees')
  bind_polygon2d_set_texture_scale = api_core.godot_method_bind_get_method('Polygon2D', 'set_texture_scale')
  bind_polygon2d_set_uv = api_core.godot_method_bind_get_method('Polygon2D', 'set_uv')
  bind_polygon2d_set_vertex_colors = api_core.godot_method_bind_get_method('Polygon2D', 'set_vertex_colors')

############################Generated class###################################
cdef class Polygon2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Polygon2D")())
##################################Generated Properties#########################################
  @property
  def antialiased(self): 
    return self.get_antialiased()
  @antialiased.setter 
  def antialiased(self,value): 
    self.set_antialiased(value)
  @property
  def bones(self): 
    return self.get_bones()
  @bones.setter 
  def bones(self,value): 
    self.set_bones(value)
  @property
  def color(self): 
    return self.get_color()
  @color.setter 
  def color(self,value): 
    self.set_color(value)
  @property
  def internal_vertex_count(self): 
    return self.get_internal_vertex_count()
  @internal_vertex_count.setter 
  def internal_vertex_count(self,value): 
    self.set_internal_vertex_count(value)
  @property
  def invert_border(self): 
    return self.get_invert_border()
  @invert_border.setter 
  def invert_border(self,value): 
    self.set_invert_border(value)
  @property
  def invert_enable(self): 
    return self.get_invert_enable()
  @invert_enable.setter 
  def invert_enable(self,value): 
    self.set_invert_enable(value)
  @property
  def offset(self): 
    return self.get_offset()
  @offset.setter 
  def offset(self,value): 
    self.set_offset(value)
  @property
  def polygon(self): 
    return self.get_polygon()
  @polygon.setter 
  def polygon(self,value): 
    self.set_polygon(value)
  @property
  def polygons(self): 
    return self.get_polygons()
  @polygons.setter 
  def polygons(self,value): 
    self.set_polygons(value)
  @property
  def skeleton(self): 
    return self.get_skeleton()
  @skeleton.setter 
  def skeleton(self,value): 
    self.set_skeleton(value)
  @property
  def texture(self): 
    return self.get_texture()
  @texture.setter 
  def texture(self,value): 
    self.set_texture(value)
  @property
  def texture_offset(self): 
    return self.get_texture_offset()
  @texture_offset.setter 
  def texture_offset(self,value): 
    self.set_texture_offset(value)
  @property
  def texture_rotation(self): 
    return self.get_texture_rotation()
  @texture_rotation.setter 
  def texture_rotation(self,value): 
    self.set_texture_rotation(value)
  @property
  def texture_rotation_degrees(self): 
    return self.get_texture_rotation_degrees()
  @texture_rotation_degrees.setter 
  def texture_rotation_degrees(self,value): 
    self.set_texture_rotation_degrees(value)
  @property
  def texture_scale(self): 
    return self.get_texture_scale()
  @texture_scale.setter 
  def texture_scale(self,value): 
    self.set_texture_scale(value)
  @property
  def uv(self): 
    return self.get_uv()
  @uv.setter 
  def uv(self,value): 
    self.set_uv(value)
  @property
  def vertex_colors(self): 
    return self.get_vertex_colors()
  @vertex_colors.setter 
  def vertex_colors(self,value): 
    self.set_vertex_colors(value)

##################################Generated Methods#########################################
  def  _get_bones(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d__get_bones,self.godot_owner,[NULL,],&ret)
  def  _set_bones(self, bones):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d__set_bones,self.godot_owner,[NULL,],NULL)
  def  _skeleton_bone_setup_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d__skeleton_bone_setup_changed,self.godot_owner,[NULL,],NULL)
  def  add_bone(self, pathweights):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_add_bone,self.godot_owner,[NULL,],NULL)
  def  clear_bones(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_clear_bones,self.godot_owner,[NULL,],NULL)
  def  erase_bone(self, index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_erase_bone,self.godot_owner,[NULL,],NULL)
  def  get_antialiased(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_antialiased,self.godot_owner,[NULL,],&ret)
  def  get_bone_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_bone_count,self.godot_owner,[NULL,],&ret)
  def  get_bone_path(self, index):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_bone_path,self.godot_owner,[NULL,],&ret)
  def  get_bone_weights(self, index):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolRealArray ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_bone_weights,self.godot_owner,[NULL,],&ret)
  def  get_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_color,self.godot_owner,[NULL,],&ret)
  def  get_internal_vertex_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_internal_vertex_count,self.godot_owner,[NULL,],&ret)
  def  get_invert(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_invert,self.godot_owner,[NULL,],&ret)
  def  get_invert_border(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_invert_border,self.godot_owner,[NULL,],&ret)
  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_offset,self.godot_owner,[NULL,],&ret)
  def  get_polygon(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_polygon,self.godot_owner,[NULL,],&ret)
  def  get_polygons(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_polygons,self.godot_owner,[NULL,],&ret)
  def  get_skeleton(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_skeleton,self.godot_owner,[NULL,],&ret)
  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_texture,self.godot_owner,[NULL,],&ret)
  def  get_texture_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_texture_offset,self.godot_owner,[NULL,],&ret)
  def  get_texture_rotation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_texture_rotation,self.godot_owner,[NULL,],&ret)
  def  get_texture_rotation_degrees(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_texture_rotation_degrees,self.godot_owner,[NULL,],&ret)
  def  get_texture_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_texture_scale,self.godot_owner,[NULL,],&ret)
  def  get_uv(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_uv,self.godot_owner,[NULL,],&ret)
  def  get_vertex_colors(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolColorArray ret
    api_core.godot_method_bind_ptrcall(bind_polygon2d_get_vertex_colors,self.godot_owner,[NULL,],&ret)
  def  set_antialiased(self, antialiased):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_antialiased,self.godot_owner,[NULL,],NULL)
  def  set_bone_path(self, indexpath):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_bone_path,self.godot_owner,[NULL,],NULL)
  def  set_bone_weights(self, indexweights):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_bone_weights,self.godot_owner,[NULL,],NULL)
  def  set_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_color,self.godot_owner,[NULL,],NULL)
  def  set_internal_vertex_count(self, internal_vertex_count):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_internal_vertex_count,self.godot_owner,[NULL,],NULL)
  def  set_invert(self, invert):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_invert,self.godot_owner,[NULL,],NULL)
  def  set_invert_border(self, invert_border):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_invert_border,self.godot_owner,[NULL,],NULL)
  def  set_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_offset,self.godot_owner,[NULL,],NULL)
  def  set_polygon(self, polygon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_polygon,self.godot_owner,[NULL,],NULL)
  def  set_polygons(self, polygons):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_polygons,self.godot_owner,[NULL,],NULL)
  def  set_skeleton(self, skeleton):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_skeleton,self.godot_owner,[NULL,],NULL)
  def  set_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_texture,self.godot_owner,[NULL,],NULL)
  def  set_texture_offset(self, texture_offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_texture_offset,self.godot_owner,[NULL,],NULL)
  def  set_texture_rotation(self, texture_rotation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_texture_rotation,self.godot_owner,[NULL,],NULL)
  def  set_texture_rotation_degrees(self, texture_rotation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_texture_rotation_degrees,self.godot_owner,[NULL,],NULL)
  def  set_texture_scale(self, texture_scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_texture_scale,self.godot_owner,[NULL,],NULL)
  def  set_uv(self, uv):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_uv,self.godot_owner,[NULL,],NULL)
  def  set_vertex_colors(self, vertex_colors):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygon2d_set_vertex_colors,self.godot_owner,[NULL,],NULL)
