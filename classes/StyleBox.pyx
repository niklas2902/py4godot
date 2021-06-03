
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_stylebox_draw
cdef godot_method_bind *bind_stylebox_get_center_size
cdef godot_method_bind *bind_stylebox_get_current_item_drawn
cdef godot_method_bind *bind_stylebox_get_default_margin
cdef godot_method_bind *bind_stylebox_get_margin
cdef godot_method_bind *bind_stylebox_get_minimum_size
cdef godot_method_bind *bind_stylebox_get_offset
cdef godot_method_bind *bind_stylebox_set_default_margin
cdef godot_method_bind *bind_stylebox_test_mask
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_stylebox_draw = api_core.godot_method_bind_get_method('StyleBox', 'draw')
  bind_stylebox_get_center_size = api_core.godot_method_bind_get_method('StyleBox', 'get_center_size')
  bind_stylebox_get_current_item_drawn = api_core.godot_method_bind_get_method('StyleBox', 'get_current_item_drawn')
  bind_stylebox_get_default_margin = api_core.godot_method_bind_get_method('StyleBox', 'get_default_margin')
  bind_stylebox_get_margin = api_core.godot_method_bind_get_method('StyleBox', 'get_margin')
  bind_stylebox_get_minimum_size = api_core.godot_method_bind_get_method('StyleBox', 'get_minimum_size')
  bind_stylebox_get_offset = api_core.godot_method_bind_get_method('StyleBox', 'get_offset')
  bind_stylebox_set_default_margin = api_core.godot_method_bind_get_method('StyleBox', 'set_default_margin')
  bind_stylebox_test_mask = api_core.godot_method_bind_get_method('StyleBox', 'test_mask')

############################Generated class###################################
cdef class StyleBox(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StyleBox")())
##################################Generated Properties#########################################
  @property
  def content_margin_bottom(self): 
    return self.get_content_margin_bottom()
  @content_margin_bottom.setter 
  def content_margin_bottom(self,value): 
    self.set_content_margin_bottom(value)
  @property
  def content_margin_left(self): 
    return self.get_content_margin_left()
  @content_margin_left.setter 
  def content_margin_left(self,value): 
    self.set_content_margin_left(value)
  @property
  def content_margin_right(self): 
    return self.get_content_margin_right()
  @content_margin_right.setter 
  def content_margin_right(self,value): 
    self.set_content_margin_right(value)
  @property
  def content_margin_top(self): 
    return self.get_content_margin_top()
  @content_margin_top.setter 
  def content_margin_top(self,value): 
    self.set_content_margin_top(value)

##################################Generated Methods#########################################
  def  draw(self,  RID canvas_item,  Rect2 rect):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &canvas_item._native
    args[1] = &rect._native
    api_core.godot_method_bind_ptrcall(bind_stylebox_draw,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_center_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_stylebox_get_center_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_current_item_drawn(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_stylebox_get_current_item_drawn,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_default_margin(self,  int margin):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_stylebox_get_default_margin,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_margin(self,  int margin):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_stylebox_get_margin,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_minimum_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_stylebox_get_minimum_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_stylebox_get_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  set_default_margin(self,  int margin,  float offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &margin
    args[1] = &offset
    api_core.godot_method_bind_ptrcall(bind_stylebox_set_default_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  test_mask(self,  Vector2 point,  Rect2 rect):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &point._native
    args[1] = &rect._native
    api_core.godot_method_bind_ptrcall(bind_stylebox_test_mask,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

