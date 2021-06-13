
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
cimport classes.SpatialMaterial
cimport classes.GeometryInstance 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_spritebase3d__im_update
cdef godot_method_bind *bind_spritebase3d__queue_update
cdef godot_method_bind *bind_spritebase3d_generate_triangle_mesh
cdef godot_method_bind *bind_spritebase3d_get_alpha_cut_mode
cdef godot_method_bind *bind_spritebase3d_get_axis
cdef godot_method_bind *bind_spritebase3d_get_billboard_mode
cdef godot_method_bind *bind_spritebase3d_get_draw_flag
cdef godot_method_bind *bind_spritebase3d_get_item_rect
cdef godot_method_bind *bind_spritebase3d_get_modulate
cdef godot_method_bind *bind_spritebase3d_get_offset
cdef godot_method_bind *bind_spritebase3d_get_opacity
cdef godot_method_bind *bind_spritebase3d_get_pixel_size
cdef godot_method_bind *bind_spritebase3d_is_centered
cdef godot_method_bind *bind_spritebase3d_is_flipped_h
cdef godot_method_bind *bind_spritebase3d_is_flipped_v
cdef godot_method_bind *bind_spritebase3d_set_alpha_cut_mode
cdef godot_method_bind *bind_spritebase3d_set_axis
cdef godot_method_bind *bind_spritebase3d_set_billboard_mode
cdef godot_method_bind *bind_spritebase3d_set_centered
cdef godot_method_bind *bind_spritebase3d_set_draw_flag
cdef godot_method_bind *bind_spritebase3d_set_flip_h
cdef godot_method_bind *bind_spritebase3d_set_flip_v
cdef godot_method_bind *bind_spritebase3d_set_modulate
cdef godot_method_bind *bind_spritebase3d_set_offset
cdef godot_method_bind *bind_spritebase3d_set_opacity
cdef godot_method_bind *bind_spritebase3d_set_pixel_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_spritebase3d__im_update = api_core.godot_method_bind_get_method('SpriteBase3D', '_im_update')
  bind_spritebase3d__queue_update = api_core.godot_method_bind_get_method('SpriteBase3D', '_queue_update')
  bind_spritebase3d_generate_triangle_mesh = api_core.godot_method_bind_get_method('SpriteBase3D', 'generate_triangle_mesh')
  bind_spritebase3d_get_alpha_cut_mode = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_alpha_cut_mode')
  bind_spritebase3d_get_axis = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_axis')
  bind_spritebase3d_get_billboard_mode = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_billboard_mode')
  bind_spritebase3d_get_draw_flag = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_draw_flag')
  bind_spritebase3d_get_item_rect = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_item_rect')
  bind_spritebase3d_get_modulate = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_modulate')
  bind_spritebase3d_get_offset = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_offset')
  bind_spritebase3d_get_opacity = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_opacity')
  bind_spritebase3d_get_pixel_size = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_pixel_size')
  bind_spritebase3d_is_centered = api_core.godot_method_bind_get_method('SpriteBase3D', 'is_centered')
  bind_spritebase3d_is_flipped_h = api_core.godot_method_bind_get_method('SpriteBase3D', 'is_flipped_h')
  bind_spritebase3d_is_flipped_v = api_core.godot_method_bind_get_method('SpriteBase3D', 'is_flipped_v')
  bind_spritebase3d_set_alpha_cut_mode = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_alpha_cut_mode')
  bind_spritebase3d_set_axis = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_axis')
  bind_spritebase3d_set_billboard_mode = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_billboard_mode')
  bind_spritebase3d_set_centered = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_centered')
  bind_spritebase3d_set_draw_flag = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_draw_flag')
  bind_spritebase3d_set_flip_h = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_flip_h')
  bind_spritebase3d_set_flip_v = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_flip_v')
  bind_spritebase3d_set_modulate = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_modulate')
  bind_spritebase3d_set_offset = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_offset')
  bind_spritebase3d_set_opacity = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_opacity')
  bind_spritebase3d_set_pixel_size = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_pixel_size')

############################Generated class###################################
cdef class SpriteBase3D(classes.GeometryInstance.GeometryInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SpriteBase3D")())
##################################Generated Properties#########################################
  @property
  def alpha_cut(self): 
    return self.get_alpha_cut()
  @alpha_cut.setter 
  def alpha_cut(self,value): 
    self.set_alpha_cut(value)
  @property
  def axis(self): 
    return self.get_axis()
  @axis.setter 
  def axis(self,value): 
    self.set_axis(value)
  @property
  def billboard(self): 
    return self.get_billboard()
  @billboard.setter 
  def billboard(self,value): 
    self.set_billboard(value)
  @property
  def centered(self): 
    return self.get_centered()
  @centered.setter 
  def centered(self,value): 
    self.set_centered(value)
  @property
  def double_sided(self): 
    return self.get_double_sided()
  @double_sided.setter 
  def double_sided(self,value): 
    self.set_double_sided(value)
  @property
  def flip_h(self): 
    return self.get_flip_h()
  @flip_h.setter 
  def flip_h(self,value): 
    self.set_flip_h(value)
  @property
  def flip_v(self): 
    return self.get_flip_v()
  @flip_v.setter 
  def flip_v(self,value): 
    self.set_flip_v(value)
  @property
  def modulate(self): 
    return self.get_modulate()
  @modulate.setter 
  def modulate(self,value): 
    self.set_modulate(value)
  @property
  def offset(self): 
    return self.get_offset()
  @offset.setter 
  def offset(self,value): 
    self.set_offset(value)
  @property
  def opacity(self): 
    return self.get_opacity()
  @opacity.setter 
  def opacity(self,value): 
    self.set_opacity(value)
  @property
  def pixel_size(self): 
    return self.get_pixel_size()
  @pixel_size.setter 
  def pixel_size(self,value): 
    self.set_pixel_size(value)
  @property
  def shaded(self): 
    return self.get_shaded()
  @shaded.setter 
  def shaded(self,value): 
    self.set_shaded(value)
  @property
  def transparent(self): 
    return self.get_transparent()
  @transparent.setter 
  def transparent(self,value): 
    self.set_transparent(value)

##################################Generated Methods#########################################
  def  _im_update(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_spritebase3d__im_update,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _queue_update(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_spritebase3d__queue_update,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  generate_triangle_mesh(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spritebase3d_generate_triangle_mesh,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_alpha_cut_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef SpriteBase3D_AlphaCutMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_alpha_cut_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_axis(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Vector3_Axis* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_axis,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_billboard_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef classes.SpatialMaterial.SpatialMaterial_BillboardMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_billboard_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_draw_flag(self,  int flag):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &flag
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_draw_flag,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_item_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_modulate(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_modulate,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_opacity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_opacity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_pixel_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_pixel_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_centered(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spritebase3d_is_centered,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_flipped_h(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spritebase3d_is_flipped_h,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_flipped_v(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spritebase3d_is_flipped_v,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_alpha_cut_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_alpha_cut_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_axis(self,  int axis):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &axis
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_axis,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_billboard_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_billboard_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_centered(self,  bool centered):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &centered
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_centered,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_draw_flag(self,  int flag,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &flag
    args[1] = &enabled
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_draw_flag,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flip_h(self,  bool flip_h):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flip_h
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_flip_h,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flip_v(self,  bool flip_v):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flip_v
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_flip_v,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_modulate(self,  Color modulate):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &modulate._native
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_modulate,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_offset(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_opacity(self,  float opacity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &opacity
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_opacity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pixel_size(self,  float pixel_size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pixel_size
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_pixel_size,self.godot_owner,args,NULL)
    hello('hallo2')
