from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_line2d__curve_changed
cdef godot_method_bind *bind_line2d__gradient_changed
cdef godot_method_bind *bind_line2d_add_point
cdef godot_method_bind *bind_line2d_clear_points
cdef godot_method_bind *bind_line2d_get_antialiased
cdef godot_method_bind *bind_line2d_get_begin_cap_mode
cdef godot_method_bind *bind_line2d_get_curve
cdef godot_method_bind *bind_line2d_get_default_color
cdef godot_method_bind *bind_line2d_get_end_cap_mode
cdef godot_method_bind *bind_line2d_get_gradient
cdef godot_method_bind *bind_line2d_get_joint_mode
cdef godot_method_bind *bind_line2d_get_point_count
cdef godot_method_bind *bind_line2d_get_point_position
cdef godot_method_bind *bind_line2d_get_points
cdef godot_method_bind *bind_line2d_get_round_precision
cdef godot_method_bind *bind_line2d_get_sharp_limit
cdef godot_method_bind *bind_line2d_get_texture
cdef godot_method_bind *bind_line2d_get_texture_mode
cdef godot_method_bind *bind_line2d_get_width
cdef godot_method_bind *bind_line2d_remove_point
cdef godot_method_bind *bind_line2d_set_antialiased
cdef godot_method_bind *bind_line2d_set_begin_cap_mode
cdef godot_method_bind *bind_line2d_set_curve
cdef godot_method_bind *bind_line2d_set_default_color
cdef godot_method_bind *bind_line2d_set_end_cap_mode
cdef godot_method_bind *bind_line2d_set_gradient
cdef godot_method_bind *bind_line2d_set_joint_mode
cdef godot_method_bind *bind_line2d_set_point_position
cdef godot_method_bind *bind_line2d_set_points
cdef godot_method_bind *bind_line2d_set_round_precision
cdef godot_method_bind *bind_line2d_set_sharp_limit
cdef godot_method_bind *bind_line2d_set_texture
cdef godot_method_bind *bind_line2d_set_texture_mode
cdef godot_method_bind *bind_line2d_set_width
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_line2d__curve_changed = api_core.godot_method_bind_get_method('Line2D', '_curve_changed')
  bind_line2d__gradient_changed = api_core.godot_method_bind_get_method('Line2D', '_gradient_changed')
  bind_line2d_add_point = api_core.godot_method_bind_get_method('Line2D', 'add_point')
  bind_line2d_clear_points = api_core.godot_method_bind_get_method('Line2D', 'clear_points')
  bind_line2d_get_antialiased = api_core.godot_method_bind_get_method('Line2D', 'get_antialiased')
  bind_line2d_get_begin_cap_mode = api_core.godot_method_bind_get_method('Line2D', 'get_begin_cap_mode')
  bind_line2d_get_curve = api_core.godot_method_bind_get_method('Line2D', 'get_curve')
  bind_line2d_get_default_color = api_core.godot_method_bind_get_method('Line2D', 'get_default_color')
  bind_line2d_get_end_cap_mode = api_core.godot_method_bind_get_method('Line2D', 'get_end_cap_mode')
  bind_line2d_get_gradient = api_core.godot_method_bind_get_method('Line2D', 'get_gradient')
  bind_line2d_get_joint_mode = api_core.godot_method_bind_get_method('Line2D', 'get_joint_mode')
  bind_line2d_get_point_count = api_core.godot_method_bind_get_method('Line2D', 'get_point_count')
  bind_line2d_get_point_position = api_core.godot_method_bind_get_method('Line2D', 'get_point_position')
  bind_line2d_get_points = api_core.godot_method_bind_get_method('Line2D', 'get_points')
  bind_line2d_get_round_precision = api_core.godot_method_bind_get_method('Line2D', 'get_round_precision')
  bind_line2d_get_sharp_limit = api_core.godot_method_bind_get_method('Line2D', 'get_sharp_limit')
  bind_line2d_get_texture = api_core.godot_method_bind_get_method('Line2D', 'get_texture')
  bind_line2d_get_texture_mode = api_core.godot_method_bind_get_method('Line2D', 'get_texture_mode')
  bind_line2d_get_width = api_core.godot_method_bind_get_method('Line2D', 'get_width')
  bind_line2d_remove_point = api_core.godot_method_bind_get_method('Line2D', 'remove_point')
  bind_line2d_set_antialiased = api_core.godot_method_bind_get_method('Line2D', 'set_antialiased')
  bind_line2d_set_begin_cap_mode = api_core.godot_method_bind_get_method('Line2D', 'set_begin_cap_mode')
  bind_line2d_set_curve = api_core.godot_method_bind_get_method('Line2D', 'set_curve')
  bind_line2d_set_default_color = api_core.godot_method_bind_get_method('Line2D', 'set_default_color')
  bind_line2d_set_end_cap_mode = api_core.godot_method_bind_get_method('Line2D', 'set_end_cap_mode')
  bind_line2d_set_gradient = api_core.godot_method_bind_get_method('Line2D', 'set_gradient')
  bind_line2d_set_joint_mode = api_core.godot_method_bind_get_method('Line2D', 'set_joint_mode')
  bind_line2d_set_point_position = api_core.godot_method_bind_get_method('Line2D', 'set_point_position')
  bind_line2d_set_points = api_core.godot_method_bind_get_method('Line2D', 'set_points')
  bind_line2d_set_round_precision = api_core.godot_method_bind_get_method('Line2D', 'set_round_precision')
  bind_line2d_set_sharp_limit = api_core.godot_method_bind_get_method('Line2D', 'set_sharp_limit')
  bind_line2d_set_texture = api_core.godot_method_bind_get_method('Line2D', 'set_texture')
  bind_line2d_set_texture_mode = api_core.godot_method_bind_get_method('Line2D', 'set_texture_mode')
  bind_line2d_set_width = api_core.godot_method_bind_get_method('Line2D', 'set_width')

############################Generated class###################################
cdef class Line2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Line2D")())
##################################Generated Properties#########################################
  @property
  def antialiased(self): 
    return self.get_antialiased()
  @antialiased.setter 
  def antialiased(self,value): 
    self.set_antialiased(value)
  @property
  def begin_cap_mode(self): 
    return self.get_begin_cap_mode()
  @begin_cap_mode.setter 
  def begin_cap_mode(self,value): 
    self.set_begin_cap_mode(value)
  @property
  def default_color(self): 
    return self.get_default_color()
  @default_color.setter 
  def default_color(self,value): 
    self.set_default_color(value)
  @property
  def end_cap_mode(self): 
    return self.get_end_cap_mode()
  @end_cap_mode.setter 
  def end_cap_mode(self,value): 
    self.set_end_cap_mode(value)
  @property
  def gradient(self): 
    return self.get_gradient()
  @gradient.setter 
  def gradient(self,value): 
    self.set_gradient(value)
  @property
  def joint_mode(self): 
    return self.get_joint_mode()
  @joint_mode.setter 
  def joint_mode(self,value): 
    self.set_joint_mode(value)
  @property
  def points(self): 
    return self.get_points()
  @points.setter 
  def points(self,value): 
    self.set_points(value)
  @property
  def round_precision(self): 
    return self.get_round_precision()
  @round_precision.setter 
  def round_precision(self,value): 
    self.set_round_precision(value)
  @property
  def sharp_limit(self): 
    return self.get_sharp_limit()
  @sharp_limit.setter 
  def sharp_limit(self,value): 
    self.set_sharp_limit(value)
  @property
  def texture(self): 
    return self.get_texture()
  @texture.setter 
  def texture(self,value): 
    self.set_texture(value)
  @property
  def texture_mode(self): 
    return self.get_texture_mode()
  @texture_mode.setter 
  def texture_mode(self,value): 
    self.set_texture_mode(value)
  @property
  def width(self): 
    return self.get_width()
  @width.setter 
  def width(self,value): 
    self.set_width(value)
  @property
  def width_curve(self): 
    return self.get_width_curve()
  @width_curve.setter 
  def width_curve(self,value): 
    self.set_width_curve(value)

##################################Generated Methods#########################################
  def  _curve_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d__curve_changed,self.godot_owner,[NULL,],NULL)
  def  _gradient_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d__gradient_changed,self.godot_owner,[NULL,],NULL)
  def  add_point(self, positionat_position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_add_point,self.godot_owner,[NULL,],NULL)
  def  clear_points(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_clear_points,self.godot_owner,[NULL,],NULL)
  def  get_antialiased(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_antialiased,self.godot_owner,[NULL,],&ret)
  def  get_begin_cap_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Line2D::LineCapMode ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_begin_cap_mode,self.godot_owner,[NULL,],&ret)
  def  get_curve(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Curve ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_curve,self.godot_owner,[NULL,],&ret)
  def  get_default_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_default_color,self.godot_owner,[NULL,],&ret)
  def  get_end_cap_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Line2D::LineCapMode ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_end_cap_mode,self.godot_owner,[NULL,],&ret)
  def  get_gradient(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Gradient ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_gradient,self.godot_owner,[NULL,],&ret)
  def  get_joint_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Line2D::LineJointMode ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_joint_mode,self.godot_owner,[NULL,],&ret)
  def  get_point_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_point_count,self.godot_owner,[NULL,],&ret)
  def  get_point_position(self, i):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_point_position,self.godot_owner,[NULL,],&ret)
  def  get_points(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_points,self.godot_owner,[NULL,],&ret)
  def  get_round_precision(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_round_precision,self.godot_owner,[NULL,],&ret)
  def  get_sharp_limit(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_sharp_limit,self.godot_owner,[NULL,],&ret)
  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_texture,self.godot_owner,[NULL,],&ret)
  def  get_texture_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Line2D::LineTextureMode ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_texture_mode,self.godot_owner,[NULL,],&ret)
  def  get_width(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_line2d_get_width,self.godot_owner,[NULL,],&ret)
  def  remove_point(self, i):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_remove_point,self.godot_owner,[NULL,],NULL)
  def  set_antialiased(self, antialiased):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_antialiased,self.godot_owner,[NULL,],NULL)
  def  set_begin_cap_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_begin_cap_mode,self.godot_owner,[NULL,],NULL)
  def  set_curve(self, curve):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_curve,self.godot_owner,[NULL,],NULL)
  def  set_default_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_default_color,self.godot_owner,[NULL,],NULL)
  def  set_end_cap_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_end_cap_mode,self.godot_owner,[NULL,],NULL)
  def  set_gradient(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_gradient,self.godot_owner,[NULL,],NULL)
  def  set_joint_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_joint_mode,self.godot_owner,[NULL,],NULL)
  def  set_point_position(self, iposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_point_position,self.godot_owner,[NULL,],NULL)
  def  set_points(self, points):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_points,self.godot_owner,[NULL,],NULL)
  def  set_round_precision(self, precision):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_round_precision,self.godot_owner,[NULL,],NULL)
  def  set_sharp_limit(self, limit):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_sharp_limit,self.godot_owner,[NULL,],NULL)
  def  set_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_texture,self.godot_owner,[NULL,],NULL)
  def  set_texture_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_texture_mode,self.godot_owner,[NULL,],NULL)
  def  set_width(self, width):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_width,self.godot_owner,[NULL,],NULL)
