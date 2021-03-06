from classes.Texture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_atlastexture_get_atlas
cdef godot_method_bind *bind_atlastexture_get_margin
cdef godot_method_bind *bind_atlastexture_get_region
cdef godot_method_bind *bind_atlastexture_has_filter_clip
cdef godot_method_bind *bind_atlastexture_set_atlas
cdef godot_method_bind *bind_atlastexture_set_filter_clip
cdef godot_method_bind *bind_atlastexture_set_margin
cdef godot_method_bind *bind_atlastexture_set_region
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_atlastexture_get_atlas = api_core.godot_method_bind_get_method('AtlasTexture', 'get_atlas')
  bind_atlastexture_get_margin = api_core.godot_method_bind_get_method('AtlasTexture', 'get_margin')
  bind_atlastexture_get_region = api_core.godot_method_bind_get_method('AtlasTexture', 'get_region')
  bind_atlastexture_has_filter_clip = api_core.godot_method_bind_get_method('AtlasTexture', 'has_filter_clip')
  bind_atlastexture_set_atlas = api_core.godot_method_bind_get_method('AtlasTexture', 'set_atlas')
  bind_atlastexture_set_filter_clip = api_core.godot_method_bind_get_method('AtlasTexture', 'set_filter_clip')
  bind_atlastexture_set_margin = api_core.godot_method_bind_get_method('AtlasTexture', 'set_margin')
  bind_atlastexture_set_region = api_core.godot_method_bind_get_method('AtlasTexture', 'set_region')

############################Generated class###################################
cdef class AtlasTexture(Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AtlasTexture")())
##################################Generated Properties#########################################
  @property
  def atlas(self): 
    return self.get_atlas()
  @atlas.setter 
  def atlas(self,value): 
    self.set_atlas(value)
  @property
  def filter_clip(self): 
    return self.get_filter_clip()
  @filter_clip.setter 
  def filter_clip(self,value): 
    self.set_filter_clip(value)
  @property
  def margin(self): 
    return self.get_margin()
  @margin.setter 
  def margin(self,value): 
    self.set_margin(value)
  @property
  def region(self): 
    return self.get_region()
  @region.setter 
  def region(self,value): 
    self.set_region(value)

##################################Generated Methods#########################################
  def  get_atlas(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_atlastexture_get_atlas,self.godot_owner,[NULL,],&ret)
  def  get_margin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_atlastexture_get_margin,self.godot_owner,[NULL,],&ret)
  def  get_region(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_atlastexture_get_region,self.godot_owner,[NULL,],&ret)
  def  has_filter_clip(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_atlastexture_has_filter_clip,self.godot_owner,[NULL,],&ret)
  def  set_atlas(self, atlas):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_atlastexture_set_atlas,self.godot_owner,[NULL,],NULL)
  def  set_filter_clip(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_atlastexture_set_filter_clip,self.godot_owner,[NULL,],NULL)
  def  set_margin(self, margin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_atlastexture_set_margin,self.godot_owner,[NULL,],NULL)
  def  set_region(self, region):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_atlastexture_set_region,self.godot_owner,[NULL,],NULL)
