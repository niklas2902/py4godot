
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Node
cimport classes.BakedLightmapData
cimport classes.VisualInstance 

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
cdef class BakedLightmap(classes.VisualInstance.VisualInstance):
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
  def  bake(self,  classes.Node.Node from_node,  bool create_visual_debug):
    cdef godot_object *_owner = self.godot_owner

    cdef BakeError* ret = NULL;

    cdef void *args[2]

    args[0] = from_node.godot_owner
    args[1] = &create_visual_debug
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_bake,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  debug_bake(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_debug_bake,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_bake_cell_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_bake_cell_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bake_default_texels_per_unit(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_bake_default_texels_per_unit,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bake_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef BakeMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_bake_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bake_quality(self):
    cdef godot_object *_owner = self.godot_owner

    cdef BakeQuality* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_bake_quality,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_capture_cell_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_capture_cell_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_energy(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_energy,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_extents(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_extents,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_image_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_image_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_light_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_light_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_propagation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_get_propagation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_hdr(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_is_hdr,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_bake_cell_size(self,  float bake_cell_size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bake_cell_size
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_bake_cell_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bake_default_texels_per_unit(self,  float texels):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &texels
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_bake_default_texels_per_unit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bake_mode(self,  int bake_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bake_mode
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_bake_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bake_quality(self,  int bake_quality):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bake_quality
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_bake_quality,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_capture_cell_size(self,  float capture_cell_size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &capture_cell_size
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_capture_cell_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_energy(self,  float energy):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &energy
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_energy,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_extents(self,  Vector3 extents):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &extents._native
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_extents,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hdr(self,  bool hdr):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &hdr
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_hdr,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_image_path(self,  String image_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &image_path._native
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_image_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_light_data(self,  classes.BakedLightmapData.BakedLightmapData data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = data.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_light_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_propagation(self,  float propagation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &propagation
    api_core.godot_method_bind_ptrcall(bind_bakedlightmap_set_propagation,self.godot_owner,args,NULL)
    hello('hallo2')
