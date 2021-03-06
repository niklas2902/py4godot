from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class StyleBox(Resource):
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
  def  draw(self, canvas_itemrect):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_stylebox_draw,self.godot_owner,[NULL,],NULL)
  def  get_center_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_stylebox_get_center_size,self.godot_owner,[NULL,],&ret)
  def  get_current_item_drawn(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CanvasItem ret
    api_core.godot_method_bind_ptrcall(bind_stylebox_get_current_item_drawn,self.godot_owner,[NULL,],&ret)
  def  get_default_margin(self, margin):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_stylebox_get_default_margin,self.godot_owner,[NULL,],&ret)
  def  get_margin(self, margin):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_stylebox_get_margin,self.godot_owner,[NULL,],&ret)
  def  get_minimum_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_stylebox_get_minimum_size,self.godot_owner,[NULL,],&ret)
  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_stylebox_get_offset,self.godot_owner,[NULL,],&ret)
  def  set_default_margin(self, marginoffset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_stylebox_set_default_margin,self.godot_owner,[NULL,],NULL)
  def  test_mask(self, pointrect):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_stylebox_test_mask,self.godot_owner,[NULL,],&ret)
