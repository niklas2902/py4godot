from classes.VisualInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_bakedlightmap_bake
cdef godot_method_bind *bind_bakedlightmap_debug_bake
cdef godot_method_bind *bind_bakedlightmap_get_bake_cell_size
cdef godot_method_bind *bind_bakedlightmap_get_bake_default_texels_per_unit
cdef godot_method_bind *bind_bakedlightmap_get_bake_mode
cdef godot_method_bind *bind_bakedlightmap_get_bake_quality
cdef godot_method_bind *bind_bakedlightmap_get_capture_cell_size
cdef godot_method_bind *bind_bakedlightmap_get_energy
cdef godot_method_bind *bind_bakedlightmap_get_extents
cdef godot_method_bind *bind_bakedlightmap_get_image_path
cdef godot_method_bind *bind_bakedlightmap_get_light_data
cdef godot_method_bind *bind_bakedlightmap_get_propagation
cdef godot_method_bind *bind_bakedlightmap_is_hdr
cdef godot_method_bind *bind_bakedlightmap_set_bake_cell_size
cdef godot_method_bind *bind_bakedlightmap_set_bake_default_texels_per_unit
cdef godot_method_bind *bind_bakedlightmap_set_bake_mode
cdef godot_method_bind *bind_bakedlightmap_set_bake_quality
cdef godot_method_bind *bind_bakedlightmap_set_capture_cell_size
cdef godot_method_bind *bind_bakedlightmap_set_energy
cdef godot_method_bind *bind_bakedlightmap_set_extents
cdef godot_method_bind *bind_bakedlightmap_set_hdr
cdef godot_method_bind *bind_bakedlightmap_set_image_path
cdef godot_method_bind *bind_bakedlightmap_set_light_data
cdef godot_method_bind *bind_bakedlightmap_set_propagation
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_bakedlightmap_bake = api_core.godot_method_bind_get_method('BakedLightmap', 'bake')
  bind_bakedlightmap_debug_bake = api_core.godot_method_bind_get_method('BakedLightmap', 'debug_bake')
  bind_bakedlightmap_get_bake_cell_size = api_core.godot_method_bind_get_method('BakedLightmap', 'get_bake_cell_size')
  bind_bakedlightmap_get_bake_default_texels_per_unit = api_core.godot_method_bind_get_method('BakedLightmap', 'get_bake_default_texels_per_unit')
  bind_bakedlightmap_get_bake_mode = api_core.godot_method_bind_get_method('BakedLightmap', 'get_bake_mode')
  bind_bakedlightmap_get_bake_quality = api_core.godot_method_bind_get_method('BakedLightmap', 'get_bake_quality')
  bind_bakedlightmap_get_capture_cell_size = api_core.godot_method_bind_get_method('BakedLightmap', 'get_capture_cell_size')
  bind_bakedlightmap_get_energy = api_core.godot_method_bind_get_method('BakedLightmap', 'get_energy')
  bind_bakedlightmap_get_extents = api_core.godot_method_bind_get_method('BakedLightmap', 'get_extents')
  bind_bakedlightmap_get_image_path = api_core.godot_method_bind_get_method('BakedLightmap', 'get_image_path')
  bind_bakedlightmap_get_light_data = api_core.godot_method_bind_get_method('BakedLightmap', 'get_light_data')
  bind_bakedlightmap_get_propagation = api_core.godot_method_bind_get_method('BakedLightmap', 'get_propagation')
  bind_bakedlightmap_is_hdr = api_core.godot_method_bind_get_method('BakedLightmap', 'is_hdr')
  bind_bakedlightmap_set_bake_cell_size = api_core.godot_method_bind_get_method('BakedLightmap', 'set_bake_cell_size')
  bind_bakedlightmap_set_bake_default_texels_per_unit = api_core.godot_method_bind_get_method('BakedLightmap', 'set_bake_default_texels_per_unit')
  bind_bakedlightmap_set_bake_mode = api_core.godot_method_bind_get_method('BakedLightmap', 'set_bake_mode')
  bind_bakedlightmap_set_bake_quality = api_core.godot_method_bind_get_method('BakedLightmap', 'set_bake_quality')
  bind_bakedlightmap_set_capture_cell_size = api_core.godot_method_bind_get_method('BakedLightmap', 'set_capture_cell_size')
  bind_bakedlightmap_set_energy = api_core.godot_method_bind_get_method('BakedLightmap', 'set_energy')
  bind_bakedlightmap_set_extents = api_core.godot_method_bind_get_method('BakedLightmap', 'set_extents')
  bind_bakedlightmap_set_hdr = api_core.godot_method_bind_get_method('BakedLightmap', 'set_hdr')
  bind_bakedlightmap_set_image_path = api_core.godot_method_bind_get_method('BakedLightmap', 'set_image_path')
  bind_bakedlightmap_set_light_data = api_core.godot_method_bind_get_method('BakedLightmap', 'set_light_data')
  bind_bakedlightmap_set_propagation = api_core.godot_method_bind_get_method('BakedLightmap', 'set_propagation')

############################Generated class###################################
cdef class BakedLightmap(VisualInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("BakedLightmap")())
##################################Generated Properties#########################################
  @property
  def bake_cell_size(self): 
    return self.get_bake_cell_size()
  @bake_cell_size.setter 
  def bake_cell_size(self,value): 
    self.set_bake_cell_size(value)
  @property
  def bake_default_texels_per_unit(self): 
    return self.get_bake_default_texels_per_unit()
  @bake_default_texels_per_unit.setter 
  def bake_default_texels_per_unit(self,value): 
    self.set_bake_default_texels_per_unit(value)
  @property
  def bake_energy(self): 
    return self.get_bake_energy()
  @bake_energy.setter 
  def bake_energy(self,value): 
    self.set_bake_energy(value)
  @property
  def bake_extents(self): 
    return self.get_bake_extents()
  @bake_extents.setter 
  def bake_extents(self,value): 
    self.set_bake_extents(value)
  @property
  def bake_hdr(self): 
    return self.get_bake_hdr()
  @bake_hdr.setter 
  def bake_hdr(self,value): 
    self.set_bake_hdr(value)
  @property
  def bake_mode(self): 
    return self.get_bake_mode()
  @bake_mode.setter 
  def bake_mode(self,value): 
    self.set_bake_mode(value)
  @property
  def bake_propagation(self): 
    return self.get_bake_propagation()
  @bake_propagation.setter 
  def bake_propagation(self,value): 
    self.set_bake_propagation(value)
  @property
  def bake_quality(self): 
    return self.get_bake_quality()
  @bake_quality.setter 
  def bake_quality(self,value): 
    self.set_bake_quality(value)
  @property
  def capture_cell_size(self): 
    return self.get_capture_cell_size()
  @capture_cell_size.setter 
  def capture_cell_size(self,value): 
    self.set_capture_cell_size(value)
  @property
  def image_path(self): 
    return self.get_image_path()
  @image_path.setter 
  def image_path(self,value): 
    self.set_image_path(value)
  @property
  def light_data(self): 
    return self.get_light_data()
  @light_data.setter 
  def light_data(self,value): 
    self.set_light_data(value)

##################################Generated Methods#########################################
  def  bake(self, from_nodecreate_visual_debug):
    cdef godot_object *_owner = self.godot_owner
    cdef BakedLightmap::BakeError ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_bake,self.godot_owner,[NULL,],&ret)
  def  debug_bake(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_debug_bake,self.godot_owner,[NULL,],NULL)
  def  get_bake_cell_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_bake_cell_size,self.godot_owner,[NULL,],&ret)
  def  get_bake_default_texels_per_unit(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_bake_default_texels_per_unit,self.godot_owner,[NULL,],&ret)
  def  get_bake_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef BakedLightmap::BakeMode ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_bake_mode,self.godot_owner,[NULL,],&ret)
  def  get_bake_quality(self):
    cdef godot_object *_owner = self.godot_owner
    cdef BakedLightmap::BakeQuality ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_bake_quality,self.godot_owner,[NULL,],&ret)
  def  get_capture_cell_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_capture_cell_size,self.godot_owner,[NULL,],&ret)
  def  get_energy(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_energy,self.godot_owner,[NULL,],&ret)
  def  get_extents(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_extents,self.godot_owner,[NULL,],&ret)
  def  get_image_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_image_path,self.godot_owner,[NULL,],&ret)
  def  get_light_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef BakedLightmapData ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_light_data,self.godot_owner,[NULL,],&ret)
  def  get_propagation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_propagation,self.godot_owner,[NULL,],&ret)
  def  is_hdr(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_is_hdr,self.godot_owner,[NULL,],&ret)
  def  set_bake_cell_size(self, bake_cell_size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_bake_cell_size,self.godot_owner,[NULL,],NULL)
  def  set_bake_default_texels_per_unit(self, texels):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_bake_default_texels_per_unit,self.godot_owner,[NULL,],NULL)
  def  set_bake_mode(self, bake_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_bake_mode,self.godot_owner,[NULL,],NULL)
  def  set_bake_quality(self, bake_quality):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_bake_quality,self.godot_owner,[NULL,],NULL)
  def  set_capture_cell_size(self, capture_cell_size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_capture_cell_size,self.godot_owner,[NULL,],NULL)
  def  set_energy(self, energy):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_energy,self.godot_owner,[NULL,],NULL)
  def  set_extents(self, extents):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_extents,self.godot_owner,[NULL,],NULL)
  def  set_hdr(self, hdr):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_hdr,self.godot_owner,[NULL,],NULL)
  def  set_image_path(self, image_path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_image_path,self.godot_owner,[NULL,],NULL)
  def  set_light_data(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_light_data,self.godot_owner,[NULL,],NULL)
  def  set_propagation(self, propagation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_propagation,self.godot_owner,[NULL,],NULL)
