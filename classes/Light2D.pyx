from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_light2d_get_color
cdef godot_method_bind *bind_light2d_get_energy
cdef godot_method_bind *bind_light2d_get_height
cdef godot_method_bind *bind_light2d_get_item_cull_mask
cdef godot_method_bind *bind_light2d_get_item_shadow_cull_mask
cdef godot_method_bind *bind_light2d_get_layer_range_max
cdef godot_method_bind *bind_light2d_get_layer_range_min
cdef godot_method_bind *bind_light2d_get_mode
cdef godot_method_bind *bind_light2d_get_shadow_buffer_size
cdef godot_method_bind *bind_light2d_get_shadow_color
cdef godot_method_bind *bind_light2d_get_shadow_filter
cdef godot_method_bind *bind_light2d_get_shadow_gradient_length
cdef godot_method_bind *bind_light2d_get_shadow_smooth
cdef godot_method_bind *bind_light2d_get_texture
cdef godot_method_bind *bind_light2d_get_texture_offset
cdef godot_method_bind *bind_light2d_get_texture_scale
cdef godot_method_bind *bind_light2d_get_z_range_max
cdef godot_method_bind *bind_light2d_get_z_range_min
cdef godot_method_bind *bind_light2d_is_editor_only
cdef godot_method_bind *bind_light2d_is_enabled
cdef godot_method_bind *bind_light2d_is_shadow_enabled
cdef godot_method_bind *bind_light2d_set_color
cdef godot_method_bind *bind_light2d_set_editor_only
cdef godot_method_bind *bind_light2d_set_enabled
cdef godot_method_bind *bind_light2d_set_energy
cdef godot_method_bind *bind_light2d_set_height
cdef godot_method_bind *bind_light2d_set_item_cull_mask
cdef godot_method_bind *bind_light2d_set_item_shadow_cull_mask
cdef godot_method_bind *bind_light2d_set_layer_range_max
cdef godot_method_bind *bind_light2d_set_layer_range_min
cdef godot_method_bind *bind_light2d_set_mode
cdef godot_method_bind *bind_light2d_set_shadow_buffer_size
cdef godot_method_bind *bind_light2d_set_shadow_color
cdef godot_method_bind *bind_light2d_set_shadow_enabled
cdef godot_method_bind *bind_light2d_set_shadow_filter
cdef godot_method_bind *bind_light2d_set_shadow_gradient_length
cdef godot_method_bind *bind_light2d_set_shadow_smooth
cdef godot_method_bind *bind_light2d_set_texture
cdef godot_method_bind *bind_light2d_set_texture_offset
cdef godot_method_bind *bind_light2d_set_texture_scale
cdef godot_method_bind *bind_light2d_set_z_range_max
cdef godot_method_bind *bind_light2d_set_z_range_min
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_light2d_get_color = api_core.godot_method_bind_get_method('Light2D', 'get_color')
  bind_light2d_get_energy = api_core.godot_method_bind_get_method('Light2D', 'get_energy')
  bind_light2d_get_height = api_core.godot_method_bind_get_method('Light2D', 'get_height')
  bind_light2d_get_item_cull_mask = api_core.godot_method_bind_get_method('Light2D', 'get_item_cull_mask')
  bind_light2d_get_item_shadow_cull_mask = api_core.godot_method_bind_get_method('Light2D', 'get_item_shadow_cull_mask')
  bind_light2d_get_layer_range_max = api_core.godot_method_bind_get_method('Light2D', 'get_layer_range_max')
  bind_light2d_get_layer_range_min = api_core.godot_method_bind_get_method('Light2D', 'get_layer_range_min')
  bind_light2d_get_mode = api_core.godot_method_bind_get_method('Light2D', 'get_mode')
  bind_light2d_get_shadow_buffer_size = api_core.godot_method_bind_get_method('Light2D', 'get_shadow_buffer_size')
  bind_light2d_get_shadow_color = api_core.godot_method_bind_get_method('Light2D', 'get_shadow_color')
  bind_light2d_get_shadow_filter = api_core.godot_method_bind_get_method('Light2D', 'get_shadow_filter')
  bind_light2d_get_shadow_gradient_length = api_core.godot_method_bind_get_method('Light2D', 'get_shadow_gradient_length')
  bind_light2d_get_shadow_smooth = api_core.godot_method_bind_get_method('Light2D', 'get_shadow_smooth')
  bind_light2d_get_texture = api_core.godot_method_bind_get_method('Light2D', 'get_texture')
  bind_light2d_get_texture_offset = api_core.godot_method_bind_get_method('Light2D', 'get_texture_offset')
  bind_light2d_get_texture_scale = api_core.godot_method_bind_get_method('Light2D', 'get_texture_scale')
  bind_light2d_get_z_range_max = api_core.godot_method_bind_get_method('Light2D', 'get_z_range_max')
  bind_light2d_get_z_range_min = api_core.godot_method_bind_get_method('Light2D', 'get_z_range_min')
  bind_light2d_is_editor_only = api_core.godot_method_bind_get_method('Light2D', 'is_editor_only')
  bind_light2d_is_enabled = api_core.godot_method_bind_get_method('Light2D', 'is_enabled')
  bind_light2d_is_shadow_enabled = api_core.godot_method_bind_get_method('Light2D', 'is_shadow_enabled')
  bind_light2d_set_color = api_core.godot_method_bind_get_method('Light2D', 'set_color')
  bind_light2d_set_editor_only = api_core.godot_method_bind_get_method('Light2D', 'set_editor_only')
  bind_light2d_set_enabled = api_core.godot_method_bind_get_method('Light2D', 'set_enabled')
  bind_light2d_set_energy = api_core.godot_method_bind_get_method('Light2D', 'set_energy')
  bind_light2d_set_height = api_core.godot_method_bind_get_method('Light2D', 'set_height')
  bind_light2d_set_item_cull_mask = api_core.godot_method_bind_get_method('Light2D', 'set_item_cull_mask')
  bind_light2d_set_item_shadow_cull_mask = api_core.godot_method_bind_get_method('Light2D', 'set_item_shadow_cull_mask')
  bind_light2d_set_layer_range_max = api_core.godot_method_bind_get_method('Light2D', 'set_layer_range_max')
  bind_light2d_set_layer_range_min = api_core.godot_method_bind_get_method('Light2D', 'set_layer_range_min')
  bind_light2d_set_mode = api_core.godot_method_bind_get_method('Light2D', 'set_mode')
  bind_light2d_set_shadow_buffer_size = api_core.godot_method_bind_get_method('Light2D', 'set_shadow_buffer_size')
  bind_light2d_set_shadow_color = api_core.godot_method_bind_get_method('Light2D', 'set_shadow_color')
  bind_light2d_set_shadow_enabled = api_core.godot_method_bind_get_method('Light2D', 'set_shadow_enabled')
  bind_light2d_set_shadow_filter = api_core.godot_method_bind_get_method('Light2D', 'set_shadow_filter')
  bind_light2d_set_shadow_gradient_length = api_core.godot_method_bind_get_method('Light2D', 'set_shadow_gradient_length')
  bind_light2d_set_shadow_smooth = api_core.godot_method_bind_get_method('Light2D', 'set_shadow_smooth')
  bind_light2d_set_texture = api_core.godot_method_bind_get_method('Light2D', 'set_texture')
  bind_light2d_set_texture_offset = api_core.godot_method_bind_get_method('Light2D', 'set_texture_offset')
  bind_light2d_set_texture_scale = api_core.godot_method_bind_get_method('Light2D', 'set_texture_scale')
  bind_light2d_set_z_range_max = api_core.godot_method_bind_get_method('Light2D', 'set_z_range_max')
  bind_light2d_set_z_range_min = api_core.godot_method_bind_get_method('Light2D', 'set_z_range_min')

############################Generated class###################################
cdef class Light2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Light2D")())
##################################Generated Properties#########################################
  @property
  def color(self): 
    return self.get_color()
  @color.setter 
  def color(self,value): 
    self.set_color(value)
  @property
  def editor_only(self): 
    return self.get_editor_only()
  @editor_only.setter 
  def editor_only(self,value): 
    self.set_editor_only(value)
  @property
  def enabled(self): 
    return self.get_enabled()
  @enabled.setter 
  def enabled(self,value): 
    self.set_enabled(value)
  @property
  def energy(self): 
    return self.get_energy()
  @energy.setter 
  def energy(self,value): 
    self.set_energy(value)
  @property
  def mode(self): 
    return self.get_mode()
  @mode.setter 
  def mode(self,value): 
    self.set_mode(value)
  @property
  def offset(self): 
    return self.get_offset()
  @offset.setter 
  def offset(self,value): 
    self.set_offset(value)
  @property
  def range_height(self): 
    return self.get_range_height()
  @range_height.setter 
  def range_height(self,value): 
    self.set_range_height(value)
  @property
  def range_item_cull_mask(self): 
    return self.get_range_item_cull_mask()
  @range_item_cull_mask.setter 
  def range_item_cull_mask(self,value): 
    self.set_range_item_cull_mask(value)
  @property
  def range_layer_max(self): 
    return self.get_range_layer_max()
  @range_layer_max.setter 
  def range_layer_max(self,value): 
    self.set_range_layer_max(value)
  @property
  def range_layer_min(self): 
    return self.get_range_layer_min()
  @range_layer_min.setter 
  def range_layer_min(self,value): 
    self.set_range_layer_min(value)
  @property
  def range_z_max(self): 
    return self.get_range_z_max()
  @range_z_max.setter 
  def range_z_max(self,value): 
    self.set_range_z_max(value)
  @property
  def range_z_min(self): 
    return self.get_range_z_min()
  @range_z_min.setter 
  def range_z_min(self,value): 
    self.set_range_z_min(value)
  @property
  def shadow_buffer_size(self): 
    return self.get_shadow_buffer_size()
  @shadow_buffer_size.setter 
  def shadow_buffer_size(self,value): 
    self.set_shadow_buffer_size(value)
  @property
  def shadow_color(self): 
    return self.get_shadow_color()
  @shadow_color.setter 
  def shadow_color(self,value): 
    self.set_shadow_color(value)
  @property
  def shadow_enabled(self): 
    return self.get_shadow_enabled()
  @shadow_enabled.setter 
  def shadow_enabled(self,value): 
    self.set_shadow_enabled(value)
  @property
  def shadow_filter(self): 
    return self.get_shadow_filter()
  @shadow_filter.setter 
  def shadow_filter(self,value): 
    self.set_shadow_filter(value)
  @property
  def shadow_filter_smooth(self): 
    return self.get_shadow_filter_smooth()
  @shadow_filter_smooth.setter 
  def shadow_filter_smooth(self,value): 
    self.set_shadow_filter_smooth(value)
  @property
  def shadow_gradient_length(self): 
    return self.get_shadow_gradient_length()
  @shadow_gradient_length.setter 
  def shadow_gradient_length(self,value): 
    self.set_shadow_gradient_length(value)
  @property
  def shadow_item_cull_mask(self): 
    return self.get_shadow_item_cull_mask()
  @shadow_item_cull_mask.setter 
  def shadow_item_cull_mask(self,value): 
    self.set_shadow_item_cull_mask(value)
  @property
  def texture(self): 
    return self.get_texture()
  @texture.setter 
  def texture(self,value): 
    self.set_texture(value)
  @property
  def texture_scale(self): 
    return self.get_texture_scale()
  @texture_scale.setter 
  def texture_scale(self,value): 
    self.set_texture_scale(value)

##################################Generated Methods#########################################
  def  get_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_color,self.godot_owner,[NULL,],&ret)
  def  get_energy(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_energy,self.godot_owner,[NULL,],&ret)
  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_height,self.godot_owner,[NULL,],&ret)
  def  get_item_cull_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_item_cull_mask,self.godot_owner,[NULL,],&ret)
  def  get_item_shadow_cull_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_item_shadow_cull_mask,self.godot_owner,[NULL,],&ret)
  def  get_layer_range_max(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_layer_range_max,self.godot_owner,[NULL,],&ret)
  def  get_layer_range_min(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_layer_range_min,self.godot_owner,[NULL,],&ret)
  def  get_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Light2D::Mode ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_mode,self.godot_owner,[NULL,],&ret)
  def  get_shadow_buffer_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_shadow_buffer_size,self.godot_owner,[NULL,],&ret)
  def  get_shadow_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_shadow_color,self.godot_owner,[NULL,],&ret)
  def  get_shadow_filter(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Light2D::ShadowFilter ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_shadow_filter,self.godot_owner,[NULL,],&ret)
  def  get_shadow_gradient_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_shadow_gradient_length,self.godot_owner,[NULL,],&ret)
  def  get_shadow_smooth(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_shadow_smooth,self.godot_owner,[NULL,],&ret)
  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_texture,self.godot_owner,[NULL,],&ret)
  def  get_texture_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_texture_offset,self.godot_owner,[NULL,],&ret)
  def  get_texture_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_texture_scale,self.godot_owner,[NULL,],&ret)
  def  get_z_range_max(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_z_range_max,self.godot_owner,[NULL,],&ret)
  def  get_z_range_min(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_light2d_get_z_range_min,self.godot_owner,[NULL,],&ret)
  def  is_editor_only(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_light2d_is_editor_only,self.godot_owner,[NULL,],&ret)
  def  is_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_light2d_is_enabled,self.godot_owner,[NULL,],&ret)
  def  is_shadow_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_light2d_is_shadow_enabled,self.godot_owner,[NULL,],&ret)
  def  set_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_color,self.godot_owner,[NULL,],NULL)
  def  set_editor_only(self, editor_only):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_editor_only,self.godot_owner,[NULL,],NULL)
  def  set_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_enabled,self.godot_owner,[NULL,],NULL)
  def  set_energy(self, energy):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_energy,self.godot_owner,[NULL,],NULL)
  def  set_height(self, height):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_height,self.godot_owner,[NULL,],NULL)
  def  set_item_cull_mask(self, item_cull_mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_item_cull_mask,self.godot_owner,[NULL,],NULL)
  def  set_item_shadow_cull_mask(self, item_shadow_cull_mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_item_shadow_cull_mask,self.godot_owner,[NULL,],NULL)
  def  set_layer_range_max(self, layer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_layer_range_max,self.godot_owner,[NULL,],NULL)
  def  set_layer_range_min(self, layer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_layer_range_min,self.godot_owner,[NULL,],NULL)
  def  set_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_mode,self.godot_owner,[NULL,],NULL)
  def  set_shadow_buffer_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_shadow_buffer_size,self.godot_owner,[NULL,],NULL)
  def  set_shadow_color(self, shadow_color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_shadow_color,self.godot_owner,[NULL,],NULL)
  def  set_shadow_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_shadow_enabled,self.godot_owner,[NULL,],NULL)
  def  set_shadow_filter(self, filter):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_shadow_filter,self.godot_owner,[NULL,],NULL)
  def  set_shadow_gradient_length(self, multiplier):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_shadow_gradient_length,self.godot_owner,[NULL,],NULL)
  def  set_shadow_smooth(self, smooth):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_shadow_smooth,self.godot_owner,[NULL,],NULL)
  def  set_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_texture,self.godot_owner,[NULL,],NULL)
  def  set_texture_offset(self, texture_offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_texture_offset,self.godot_owner,[NULL,],NULL)
  def  set_texture_scale(self, texture_scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_texture_scale,self.godot_owner,[NULL,],NULL)
  def  set_z_range_max(self, z):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_z_range_max,self.godot_owner,[NULL,],NULL)
  def  set_z_range_min(self, z):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light2d_set_z_range_min,self.godot_owner,[NULL,],NULL)
