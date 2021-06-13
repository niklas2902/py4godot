
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
cimport classes.Curve
cimport classes.Gradient
cimport classes.Texture
cimport classes.Node2D 

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
cdef class Line2D(classes.Node2D.Node2D):
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

    api_core.godot_method_bind_ptrcall(bind_line2d__curve_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _gradient_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_line2d__gradient_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  add_point(self,  Vector2 position,  int at_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &position._native
    args[1] = &at_position
    api_core.godot_method_bind_ptrcall(bind_line2d_add_point,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_points(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_line2d_clear_points,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_antialiased(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_antialiased,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_begin_cap_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Line2D_LineCapMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_begin_cap_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_curve(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_curve,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_default_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_default_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_end_cap_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Line2D_LineCapMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_end_cap_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_gradient(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_gradient,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_joint_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Line2D_LineJointMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_joint_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_point_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_point_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_point_position(self,  int i):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &i
    api_core.godot_method_bind_ptrcall(bind_line2d_get_point_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_points(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_points,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_round_precision(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_round_precision,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_sharp_limit(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_sharp_limit,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_texture_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Line2D_LineTextureMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_texture_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_width(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_line2d_get_width,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_point(self,  int i):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &i
    api_core.godot_method_bind_ptrcall(bind_line2d_remove_point,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_antialiased(self,  bool antialiased):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &antialiased
    api_core.godot_method_bind_ptrcall(bind_line2d_set_antialiased,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_begin_cap_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_line2d_set_begin_cap_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_curve(self,  classes.Curve.Curve curve):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = curve.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_curve,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_default_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_line2d_set_default_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_end_cap_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_line2d_set_end_cap_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_gradient(self,  classes.Gradient.Gradient color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = color.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_gradient,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_joint_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_line2d_set_joint_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_position(self,  int i,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &i
    args[1] = &position._native
    api_core.godot_method_bind_ptrcall(bind_line2d_set_point_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_points(self,  PoolVector2Array points):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &points._native
    api_core.godot_method_bind_ptrcall(bind_line2d_set_points,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_round_precision(self,  int precision):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &precision
    api_core.godot_method_bind_ptrcall(bind_line2d_set_round_precision,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sharp_limit(self,  float limit):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &limit
    api_core.godot_method_bind_ptrcall(bind_line2d_set_sharp_limit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_line2d_set_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_line2d_set_texture_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_width(self,  float width):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &width
    api_core.godot_method_bind_ptrcall(bind_line2d_set_width,self.godot_owner,args,NULL)
    hello('hallo2')
