
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
cimport classes.Texture
cimport classes.Control 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_ninepatchrect_get_h_axis_stretch_mode
cdef godot_method_bind *bind_ninepatchrect_get_patch_margin
cdef godot_method_bind *bind_ninepatchrect_get_region_rect
cdef godot_method_bind *bind_ninepatchrect_get_texture
cdef godot_method_bind *bind_ninepatchrect_get_v_axis_stretch_mode
cdef godot_method_bind *bind_ninepatchrect_is_draw_center_enabled
cdef godot_method_bind *bind_ninepatchrect_set_draw_center
cdef godot_method_bind *bind_ninepatchrect_set_h_axis_stretch_mode
cdef godot_method_bind *bind_ninepatchrect_set_patch_margin
cdef godot_method_bind *bind_ninepatchrect_set_region_rect
cdef godot_method_bind *bind_ninepatchrect_set_texture
cdef godot_method_bind *bind_ninepatchrect_set_v_axis_stretch_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_ninepatchrect_get_h_axis_stretch_mode = api_core.godot_method_bind_get_method('NinePatchRect', 'get_h_axis_stretch_mode')
  bind_ninepatchrect_get_patch_margin = api_core.godot_method_bind_get_method('NinePatchRect', 'get_patch_margin')
  bind_ninepatchrect_get_region_rect = api_core.godot_method_bind_get_method('NinePatchRect', 'get_region_rect')
  bind_ninepatchrect_get_texture = api_core.godot_method_bind_get_method('NinePatchRect', 'get_texture')
  bind_ninepatchrect_get_v_axis_stretch_mode = api_core.godot_method_bind_get_method('NinePatchRect', 'get_v_axis_stretch_mode')
  bind_ninepatchrect_is_draw_center_enabled = api_core.godot_method_bind_get_method('NinePatchRect', 'is_draw_center_enabled')
  bind_ninepatchrect_set_draw_center = api_core.godot_method_bind_get_method('NinePatchRect', 'set_draw_center')
  bind_ninepatchrect_set_h_axis_stretch_mode = api_core.godot_method_bind_get_method('NinePatchRect', 'set_h_axis_stretch_mode')
  bind_ninepatchrect_set_patch_margin = api_core.godot_method_bind_get_method('NinePatchRect', 'set_patch_margin')
  bind_ninepatchrect_set_region_rect = api_core.godot_method_bind_get_method('NinePatchRect', 'set_region_rect')
  bind_ninepatchrect_set_texture = api_core.godot_method_bind_get_method('NinePatchRect', 'set_texture')
  bind_ninepatchrect_set_v_axis_stretch_mode = api_core.godot_method_bind_get_method('NinePatchRect', 'set_v_axis_stretch_mode')

############################Generated class###################################
cdef class NinePatchRect(classes.Control.Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("NinePatchRect")())
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
  def patch_margin_bottom(self): 
    return self.get_patch_margin_bottom()
  @patch_margin_bottom.setter 
  def patch_margin_bottom(self,value): 
    self.set_patch_margin_bottom(value)
  @property
  def patch_margin_left(self): 
    return self.get_patch_margin_left()
  @patch_margin_left.setter 
  def patch_margin_left(self,value): 
    self.set_patch_margin_left(value)
  @property
  def patch_margin_right(self): 
    return self.get_patch_margin_right()
  @patch_margin_right.setter 
  def patch_margin_right(self,value): 
    self.set_patch_margin_right(value)
  @property
  def patch_margin_top(self): 
    return self.get_patch_margin_top()
  @patch_margin_top.setter 
  def patch_margin_top(self,value): 
    self.set_patch_margin_top(value)
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
  def  get_h_axis_stretch_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef AxisStretchMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_get_h_axis_stretch_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_patch_margin(self,  int margin):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_get_patch_margin,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_region_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_get_region_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_get_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_v_axis_stretch_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef AxisStretchMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_get_v_axis_stretch_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_draw_center_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_is_draw_center_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_draw_center(self,  bool draw_center):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &draw_center
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_set_draw_center,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_h_axis_stretch_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_set_h_axis_stretch_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_patch_margin(self,  int margin,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &margin
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_set_patch_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_region_rect(self,  Rect2 rect):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rect._native
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_set_region_rect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_set_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_v_axis_stretch_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_set_v_axis_stretch_mode,self.godot_owner,args,NULL)
    hello('hallo2')
