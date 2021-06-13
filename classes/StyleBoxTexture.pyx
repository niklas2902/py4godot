
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
cimport classes.StyleBox 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_styleboxtexture_get_expand_margin_size
cdef godot_method_bind *bind_styleboxtexture_get_h_axis_stretch_mode
cdef godot_method_bind *bind_styleboxtexture_get_margin_size
cdef godot_method_bind *bind_styleboxtexture_get_modulate
cdef godot_method_bind *bind_styleboxtexture_get_normal_map
cdef godot_method_bind *bind_styleboxtexture_get_region_rect
cdef godot_method_bind *bind_styleboxtexture_get_texture
cdef godot_method_bind *bind_styleboxtexture_get_v_axis_stretch_mode
cdef godot_method_bind *bind_styleboxtexture_is_draw_center_enabled
cdef godot_method_bind *bind_styleboxtexture_set_draw_center
cdef godot_method_bind *bind_styleboxtexture_set_expand_margin_all
cdef godot_method_bind *bind_styleboxtexture_set_expand_margin_individual
cdef godot_method_bind *bind_styleboxtexture_set_expand_margin_size
cdef godot_method_bind *bind_styleboxtexture_set_h_axis_stretch_mode
cdef godot_method_bind *bind_styleboxtexture_set_margin_size
cdef godot_method_bind *bind_styleboxtexture_set_modulate
cdef godot_method_bind *bind_styleboxtexture_set_normal_map
cdef godot_method_bind *bind_styleboxtexture_set_region_rect
cdef godot_method_bind *bind_styleboxtexture_set_texture
cdef godot_method_bind *bind_styleboxtexture_set_v_axis_stretch_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_styleboxtexture_get_expand_margin_size = api_core.godot_method_bind_get_method('StyleBoxTexture', 'get_expand_margin_size')
  bind_styleboxtexture_get_h_axis_stretch_mode = api_core.godot_method_bind_get_method('StyleBoxTexture', 'get_h_axis_stretch_mode')
  bind_styleboxtexture_get_margin_size = api_core.godot_method_bind_get_method('StyleBoxTexture', 'get_margin_size')
  bind_styleboxtexture_get_modulate = api_core.godot_method_bind_get_method('StyleBoxTexture', 'get_modulate')
  bind_styleboxtexture_get_normal_map = api_core.godot_method_bind_get_method('StyleBoxTexture', 'get_normal_map')
  bind_styleboxtexture_get_region_rect = api_core.godot_method_bind_get_method('StyleBoxTexture', 'get_region_rect')
  bind_styleboxtexture_get_texture = api_core.godot_method_bind_get_method('StyleBoxTexture', 'get_texture')
  bind_styleboxtexture_get_v_axis_stretch_mode = api_core.godot_method_bind_get_method('StyleBoxTexture', 'get_v_axis_stretch_mode')
  bind_styleboxtexture_is_draw_center_enabled = api_core.godot_method_bind_get_method('StyleBoxTexture', 'is_draw_center_enabled')
  bind_styleboxtexture_set_draw_center = api_core.godot_method_bind_get_method('StyleBoxTexture', 'set_draw_center')
  bind_styleboxtexture_set_expand_margin_all = api_core.godot_method_bind_get_method('StyleBoxTexture', 'set_expand_margin_all')
  bind_styleboxtexture_set_expand_margin_individual = api_core.godot_method_bind_get_method('StyleBoxTexture', 'set_expand_margin_individual')
  bind_styleboxtexture_set_expand_margin_size = api_core.godot_method_bind_get_method('StyleBoxTexture', 'set_expand_margin_size')
  bind_styleboxtexture_set_h_axis_stretch_mode = api_core.godot_method_bind_get_method('StyleBoxTexture', 'set_h_axis_stretch_mode')
  bind_styleboxtexture_set_margin_size = api_core.godot_method_bind_get_method('StyleBoxTexture', 'set_margin_size')
  bind_styleboxtexture_set_modulate = api_core.godot_method_bind_get_method('StyleBoxTexture', 'set_modulate')
  bind_styleboxtexture_set_normal_map = api_core.godot_method_bind_get_method('StyleBoxTexture', 'set_normal_map')
  bind_styleboxtexture_set_region_rect = api_core.godot_method_bind_get_method('StyleBoxTexture', 'set_region_rect')
  bind_styleboxtexture_set_texture = api_core.godot_method_bind_get_method('StyleBoxTexture', 'set_texture')
  bind_styleboxtexture_set_v_axis_stretch_mode = api_core.godot_method_bind_get_method('StyleBoxTexture', 'set_v_axis_stretch_mode')

############################Generated class###################################
cdef class StyleBoxTexture(classes.StyleBox.StyleBox):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StyleBoxTexture")())
##################################Generated Properties#########################################
  @property
  def axis_stretch_horizontal(self): 
    return self.get_axis_stretch_horizontal()
  @axis_stretch_horizontal.setter 
  def axis_stretch_horizontal(self,value): 
    self.set_axis_stretch_horizontal(value)
  @property
  def axis_stretch_vertical(self): 
    return self.get_axis_stretch_vertical()
  @axis_stretch_vertical.setter 
  def axis_stretch_vertical(self,value): 
    self.set_axis_stretch_vertical(value)
  @property
  def draw_center(self): 
    return self.get_draw_center()
  @draw_center.setter 
  def draw_center(self,value): 
    self.set_draw_center(value)
  @property
  def expand_margin_bottom(self): 
    return self.get_expand_margin_bottom()
  @expand_margin_bottom.setter 
  def expand_margin_bottom(self,value): 
    self.set_expand_margin_bottom(value)
  @property
  def expand_margin_left(self): 
    return self.get_expand_margin_left()
  @expand_margin_left.setter 
  def expand_margin_left(self,value): 
    self.set_expand_margin_left(value)
  @property
  def expand_margin_right(self): 
    return self.get_expand_margin_right()
  @expand_margin_right.setter 
  def expand_margin_right(self,value): 
    self.set_expand_margin_right(value)
  @property
  def expand_margin_top(self): 
    return self.get_expand_margin_top()
  @expand_margin_top.setter 
  def expand_margin_top(self,value): 
    self.set_expand_margin_top(value)
  @property
  def margin_bottom(self): 
    return self.get_margin_bottom()
  @margin_bottom.setter 
  def margin_bottom(self,value): 
    self.set_margin_bottom(value)
  @property
  def margin_left(self): 
    return self.get_margin_left()
  @margin_left.setter 
  def margin_left(self,value): 
    self.set_margin_left(value)
  @property
  def margin_right(self): 
    return self.get_margin_right()
  @margin_right.setter 
  def margin_right(self,value): 
    self.set_margin_right(value)
  @property
  def margin_top(self): 
    return self.get_margin_top()
  @margin_top.setter 
  def margin_top(self,value): 
    self.set_margin_top(value)
  @property
  def modulate_color(self): 
    return self.get_modulate_color()
  @modulate_color.setter 
  def modulate_color(self,value): 
    self.set_modulate_color(value)
  @property
  def normal_map(self): 
    return self.get_normal_map()
  @normal_map.setter 
  def normal_map(self,value): 
    self.set_normal_map(value)
  @property
  def region_rect(self): 
    return self.get_region_rect()
  @region_rect.setter 
  def region_rect(self,value): 
    self.set_region_rect(value)
  @property
  def texture(self): 
    return self.get_texture()
  @texture.setter 
  def texture(self,value): 
    self.set_texture(value)

##################################Generated Methods#########################################
  def  get_expand_margin_size(self,  int margin):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_get_expand_margin_size,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_h_axis_stretch_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef StyleBoxTexture_AxisStretchMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_get_h_axis_stretch_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_margin_size(self,  int margin):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_get_margin_size,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_modulate(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_get_modulate,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_normal_map(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_get_normal_map,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_region_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_get_region_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_get_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_v_axis_stretch_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef StyleBoxTexture_AxisStretchMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_get_v_axis_stretch_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_draw_center_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_is_draw_center_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_draw_center(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_set_draw_center,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_expand_margin_all(self,  float size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_set_expand_margin_all,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_expand_margin_individual(self,  float size_left,  float size_top,  float size_right,  float size_bottom):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &size_left
    args[1] = &size_top
    args[2] = &size_right
    args[3] = &size_bottom
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_set_expand_margin_individual,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_expand_margin_size(self,  int margin,  float size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &margin
    args[1] = &size
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_set_expand_margin_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_h_axis_stretch_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_set_h_axis_stretch_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_margin_size(self,  int margin,  float size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &margin
    args[1] = &size
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_set_margin_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_modulate(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_set_modulate,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_normal_map(self,  classes.Texture.Texture normal_map):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = normal_map.godot_owner
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_set_normal_map,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_region_rect(self,  Rect2 region):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &region._native
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_set_region_rect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_set_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_v_axis_stretch_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_styleboxtexture_set_v_axis_stretch_mode,self.godot_owner,args,NULL)
    hello('hallo2')
