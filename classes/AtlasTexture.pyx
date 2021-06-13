
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Texture
cimport classes.Texture 

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
cdef class AtlasTexture(classes.Texture.Texture):
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

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_atlastexture_get_atlas,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_margin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_atlastexture_get_margin,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_region(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_atlastexture_get_region,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  has_filter_clip(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_atlastexture_has_filter_clip,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_atlas(self,  classes.Texture.Texture atlas):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = atlas.godot_owner
    api_core.godot_method_bind_ptrcall(bind_atlastexture_set_atlas,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_filter_clip(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_atlastexture_set_filter_clip,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_margin(self,  Rect2 margin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &margin._native
    api_core.godot_method_bind_ptrcall(bind_atlastexture_set_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_region(self,  Rect2 region):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &region._native
    api_core.godot_method_bind_ptrcall(bind_atlastexture_set_region,self.godot_owner,args,NULL)
    hello('hallo2')
