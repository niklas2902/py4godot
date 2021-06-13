
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
cimport classes.StyleBox 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_styleboxflat_get_aa_size
cdef godot_method_bind *bind_styleboxflat_get_bg_color
cdef godot_method_bind *bind_styleboxflat_get_border_blend
cdef godot_method_bind *bind_styleboxflat_get_border_color
cdef godot_method_bind *bind_styleboxflat_get_border_width
cdef godot_method_bind *bind_styleboxflat_get_border_width_min
cdef godot_method_bind *bind_styleboxflat_get_corner_detail
cdef godot_method_bind *bind_styleboxflat_get_corner_radius
cdef godot_method_bind *bind_styleboxflat_get_expand_margin
cdef godot_method_bind *bind_styleboxflat_get_shadow_color
cdef godot_method_bind *bind_styleboxflat_get_shadow_offset
cdef godot_method_bind *bind_styleboxflat_get_shadow_size
cdef godot_method_bind *bind_styleboxflat_is_anti_aliased
cdef godot_method_bind *bind_styleboxflat_is_draw_center_enabled
cdef godot_method_bind *bind_styleboxflat_set_aa_size
cdef godot_method_bind *bind_styleboxflat_set_anti_aliased
cdef godot_method_bind *bind_styleboxflat_set_bg_color
cdef godot_method_bind *bind_styleboxflat_set_border_blend
cdef godot_method_bind *bind_styleboxflat_set_border_color
cdef godot_method_bind *bind_styleboxflat_set_border_width
cdef godot_method_bind *bind_styleboxflat_set_border_width_all
cdef godot_method_bind *bind_styleboxflat_set_corner_detail
cdef godot_method_bind *bind_styleboxflat_set_corner_radius
cdef godot_method_bind *bind_styleboxflat_set_corner_radius_all
cdef godot_method_bind *bind_styleboxflat_set_corner_radius_individual
cdef godot_method_bind *bind_styleboxflat_set_draw_center
cdef godot_method_bind *bind_styleboxflat_set_expand_margin
cdef godot_method_bind *bind_styleboxflat_set_expand_margin_all
cdef godot_method_bind *bind_styleboxflat_set_expand_margin_individual
cdef godot_method_bind *bind_styleboxflat_set_shadow_color
cdef godot_method_bind *bind_styleboxflat_set_shadow_offset
cdef godot_method_bind *bind_styleboxflat_set_shadow_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_styleboxflat_get_aa_size = api_core.godot_method_bind_get_method('StyleBoxFlat', 'get_aa_size')
  bind_styleboxflat_get_bg_color = api_core.godot_method_bind_get_method('StyleBoxFlat', 'get_bg_color')
  bind_styleboxflat_get_border_blend = api_core.godot_method_bind_get_method('StyleBoxFlat', 'get_border_blend')
  bind_styleboxflat_get_border_color = api_core.godot_method_bind_get_method('StyleBoxFlat', 'get_border_color')
  bind_styleboxflat_get_border_width = api_core.godot_method_bind_get_method('StyleBoxFlat', 'get_border_width')
  bind_styleboxflat_get_border_width_min = api_core.godot_method_bind_get_method('StyleBoxFlat', 'get_border_width_min')
  bind_styleboxflat_get_corner_detail = api_core.godot_method_bind_get_method('StyleBoxFlat', 'get_corner_detail')
  bind_styleboxflat_get_corner_radius = api_core.godot_method_bind_get_method('StyleBoxFlat', 'get_corner_radius')
  bind_styleboxflat_get_expand_margin = api_core.godot_method_bind_get_method('StyleBoxFlat', 'get_expand_margin')
  bind_styleboxflat_get_shadow_color = api_core.godot_method_bind_get_method('StyleBoxFlat', 'get_shadow_color')
  bind_styleboxflat_get_shadow_offset = api_core.godot_method_bind_get_method('StyleBoxFlat', 'get_shadow_offset')
  bind_styleboxflat_get_shadow_size = api_core.godot_method_bind_get_method('StyleBoxFlat', 'get_shadow_size')
  bind_styleboxflat_is_anti_aliased = api_core.godot_method_bind_get_method('StyleBoxFlat', 'is_anti_aliased')
  bind_styleboxflat_is_draw_center_enabled = api_core.godot_method_bind_get_method('StyleBoxFlat', 'is_draw_center_enabled')
  bind_styleboxflat_set_aa_size = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_aa_size')
  bind_styleboxflat_set_anti_aliased = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_anti_aliased')
  bind_styleboxflat_set_bg_color = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_bg_color')
  bind_styleboxflat_set_border_blend = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_border_blend')
  bind_styleboxflat_set_border_color = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_border_color')
  bind_styleboxflat_set_border_width = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_border_width')
  bind_styleboxflat_set_border_width_all = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_border_width_all')
  bind_styleboxflat_set_corner_detail = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_corner_detail')
  bind_styleboxflat_set_corner_radius = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_corner_radius')
  bind_styleboxflat_set_corner_radius_all = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_corner_radius_all')
  bind_styleboxflat_set_corner_radius_individual = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_corner_radius_individual')
  bind_styleboxflat_set_draw_center = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_draw_center')
  bind_styleboxflat_set_expand_margin = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_expand_margin')
  bind_styleboxflat_set_expand_margin_all = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_expand_margin_all')
  bind_styleboxflat_set_expand_margin_individual = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_expand_margin_individual')
  bind_styleboxflat_set_shadow_color = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_shadow_color')
  bind_styleboxflat_set_shadow_offset = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_shadow_offset')
  bind_styleboxflat_set_shadow_size = api_core.godot_method_bind_get_method('StyleBoxFlat', 'set_shadow_size')

############################Generated class###################################
cdef class StyleBoxFlat(classes.StyleBox.StyleBox):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StyleBoxFlat")())
##################################Generated Properties#########################################
  @property
  def anti_aliasing(self): 
    return self.get_anti_aliasing()
  @anti_aliasing.setter 
  def anti_aliasing(self,value): 
    self.set_anti_aliasing(value)
  @property
  def anti_aliasing_size(self): 
    return self.get_anti_aliasing_size()
  @anti_aliasing_size.setter 
  def anti_aliasing_size(self,value): 
    self.set_anti_aliasing_size(value)
  @property
  def bg_color(self): 
    return self.get_bg_color()
  @bg_color.setter 
  def bg_color(self,value): 
    self.set_bg_color(value)
  @property
  def border_blend(self): 
    return self.get_border_blend()
  @border_blend.setter 
  def border_blend(self,value): 
    self.set_border_blend(value)
  @property
  def border_color(self): 
    return self.get_border_color()
  @border_color.setter 
  def border_color(self,value): 
    self.set_border_color(value)
  @property
  def border_width_bottom(self): 
    return self.get_border_width_bottom()
  @border_width_bottom.setter 
  def border_width_bottom(self,value): 
    self.set_border_width_bottom(value)
  @property
  def border_width_left(self): 
    return self.get_border_width_left()
  @border_width_left.setter 
  def border_width_left(self,value): 
    self.set_border_width_left(value)
  @property
  def border_width_right(self): 
    return self.get_border_width_right()
  @border_width_right.setter 
  def border_width_right(self,value): 
    self.set_border_width_right(value)
  @property
  def border_width_top(self): 
    return self.get_border_width_top()
  @border_width_top.setter 
  def border_width_top(self,value): 
    self.set_border_width_top(value)
  @property
  def corner_detail(self): 
    return self.get_corner_detail()
  @corner_detail.setter 
  def corner_detail(self,value): 
    self.set_corner_detail(value)
  @property
  def corner_radius_bottom_left(self): 
    return self.get_corner_radius_bottom_left()
  @corner_radius_bottom_left.setter 
  def corner_radius_bottom_left(self,value): 
    self.set_corner_radius_bottom_left(value)
  @property
  def corner_radius_bottom_right(self): 
    return self.get_corner_radius_bottom_right()
  @corner_radius_bottom_right.setter 
  def corner_radius_bottom_right(self,value): 
    self.set_corner_radius_bottom_right(value)
  @property
  def corner_radius_top_left(self): 
    return self.get_corner_radius_top_left()
  @corner_radius_top_left.setter 
  def corner_radius_top_left(self,value): 
    self.set_corner_radius_top_left(value)
  @property
  def corner_radius_top_right(self): 
    return self.get_corner_radius_top_right()
  @corner_radius_top_right.setter 
  def corner_radius_top_right(self,value): 
    self.set_corner_radius_top_right(value)
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
  def shadow_color(self): 
    return self.get_shadow_color()
  @shadow_color.setter 
  def shadow_color(self,value): 
    self.set_shadow_color(value)
  @property
  def shadow_offset(self): 
    return self.get_shadow_offset()
  @shadow_offset.setter 
  def shadow_offset(self,value): 
    self.set_shadow_offset(value)
  @property
  def shadow_size(self): 
    return self.get_shadow_size()
  @shadow_size.setter 
  def shadow_size(self,value): 
    self.set_shadow_size(value)

##################################Generated Methods#########################################
  def  get_aa_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxflat_get_aa_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bg_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxflat_get_bg_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_border_blend(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxflat_get_border_blend,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_border_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxflat_get_border_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_border_width(self,  int margin):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_get_border_width,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_border_width_min(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxflat_get_border_width_min,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_corner_detail(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxflat_get_corner_detail,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_corner_radius(self,  int corner):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &corner
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_get_corner_radius,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_expand_margin(self,  int margin):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_get_expand_margin,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_shadow_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxflat_get_shadow_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_shadow_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxflat_get_shadow_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_shadow_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxflat_get_shadow_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_anti_aliased(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxflat_is_anti_aliased,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_draw_center_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_styleboxflat_is_draw_center_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_aa_size(self,  int size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_aa_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_anti_aliased(self,  bool anti_aliased):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &anti_aliased
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_anti_aliased,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bg_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_bg_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_border_blend(self,  bool blend):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &blend
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_border_blend,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_border_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_border_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_border_width(self,  int margin,  int width):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &margin
    args[1] = &width
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_border_width,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_border_width_all(self,  int width):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &width
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_border_width_all,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_corner_detail(self,  int detail):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &detail
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_corner_detail,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_corner_radius(self,  int corner,  int radius):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &corner
    args[1] = &radius
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_corner_radius,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_corner_radius_all(self,  int radius):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radius
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_corner_radius_all,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_corner_radius_individual(self,  int radius_top_left,  int radius_top_right,  int radius_bottom_right,  int radius_bottom_left):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &radius_top_left
    args[1] = &radius_top_right
    args[2] = &radius_bottom_right
    args[3] = &radius_bottom_left
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_corner_radius_individual,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_draw_center(self,  bool draw_center):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &draw_center
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_draw_center,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_expand_margin(self,  int margin,  float size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &margin
    args[1] = &size
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_expand_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_expand_margin_all(self,  float size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_expand_margin_all,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_expand_margin_individual(self,  float size_left,  float size_top,  float size_right,  float size_bottom):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &size_left
    args[1] = &size_top
    args[2] = &size_right
    args[3] = &size_bottom
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_expand_margin_individual,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shadow_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_shadow_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shadow_offset(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_shadow_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shadow_size(self,  int size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_styleboxflat_set_shadow_size,self.godot_owner,args,NULL)
    hello('hallo2')
