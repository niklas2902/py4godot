from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_pathfollow2d_get_cubic_interpolation
cdef godot_method_bind *bind_pathfollow2d_get_h_offset
cdef godot_method_bind *bind_pathfollow2d_get_lookahead
cdef godot_method_bind *bind_pathfollow2d_get_offset
cdef godot_method_bind *bind_pathfollow2d_get_unit_offset
cdef godot_method_bind *bind_pathfollow2d_get_v_offset
cdef godot_method_bind *bind_pathfollow2d_has_loop
cdef godot_method_bind *bind_pathfollow2d_is_rotating
cdef godot_method_bind *bind_pathfollow2d_set_cubic_interpolation
cdef godot_method_bind *bind_pathfollow2d_set_h_offset
cdef godot_method_bind *bind_pathfollow2d_set_lookahead
cdef godot_method_bind *bind_pathfollow2d_set_loop
cdef godot_method_bind *bind_pathfollow2d_set_offset
cdef godot_method_bind *bind_pathfollow2d_set_rotate
cdef godot_method_bind *bind_pathfollow2d_set_unit_offset
cdef godot_method_bind *bind_pathfollow2d_set_v_offset
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_pathfollow2d_get_cubic_interpolation = api_core.godot_method_bind_get_method('PathFollow2D', 'get_cubic_interpolation')
  bind_pathfollow2d_get_h_offset = api_core.godot_method_bind_get_method('PathFollow2D', 'get_h_offset')
  bind_pathfollow2d_get_lookahead = api_core.godot_method_bind_get_method('PathFollow2D', 'get_lookahead')
  bind_pathfollow2d_get_offset = api_core.godot_method_bind_get_method('PathFollow2D', 'get_offset')
  bind_pathfollow2d_get_unit_offset = api_core.godot_method_bind_get_method('PathFollow2D', 'get_unit_offset')
  bind_pathfollow2d_get_v_offset = api_core.godot_method_bind_get_method('PathFollow2D', 'get_v_offset')
  bind_pathfollow2d_has_loop = api_core.godot_method_bind_get_method('PathFollow2D', 'has_loop')
  bind_pathfollow2d_is_rotating = api_core.godot_method_bind_get_method('PathFollow2D', 'is_rotating')
  bind_pathfollow2d_set_cubic_interpolation = api_core.godot_method_bind_get_method('PathFollow2D', 'set_cubic_interpolation')
  bind_pathfollow2d_set_h_offset = api_core.godot_method_bind_get_method('PathFollow2D', 'set_h_offset')
  bind_pathfollow2d_set_lookahead = api_core.godot_method_bind_get_method('PathFollow2D', 'set_lookahead')
  bind_pathfollow2d_set_loop = api_core.godot_method_bind_get_method('PathFollow2D', 'set_loop')
  bind_pathfollow2d_set_offset = api_core.godot_method_bind_get_method('PathFollow2D', 'set_offset')
  bind_pathfollow2d_set_rotate = api_core.godot_method_bind_get_method('PathFollow2D', 'set_rotate')
  bind_pathfollow2d_set_unit_offset = api_core.godot_method_bind_get_method('PathFollow2D', 'set_unit_offset')
  bind_pathfollow2d_set_v_offset = api_core.godot_method_bind_get_method('PathFollow2D', 'set_v_offset')

############################Generated class###################################
cdef class PathFollow2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PathFollow2D")())
##################################Generated Properties#########################################
  @property
  def cubic_interp(self): 
    return self.get_cubic_interp()
  @cubic_interp.setter 
  def cubic_interp(self,value): 
    self.set_cubic_interp(value)
  @property
  def h_offset(self): 
    return self.get_h_offset()
  @h_offset.setter 
  def h_offset(self,value): 
    self.set_h_offset(value)
  @property
  def lookahead(self): 
    return self.get_lookahead()
  @lookahead.setter 
  def lookahead(self,value): 
    self.set_lookahead(value)
  @property
  def loop(self): 
    return self.get_loop()
  @loop.setter 
  def loop(self,value): 
    self.set_loop(value)
  @property
  def offset(self): 
    return self.get_offset()
  @offset.setter 
  def offset(self,value): 
    self.set_offset(value)
  @property
  def rotate(self): 
    return self.get_rotate()
  @rotate.setter 
  def rotate(self,value): 
    self.set_rotate(value)
  @property
  def unit_offset(self): 
    return self.get_unit_offset()
  @unit_offset.setter 
  def unit_offset(self,value): 
    self.set_unit_offset(value)
  @property
  def v_offset(self): 
    return self.get_v_offset()
  @v_offset.setter 
  def v_offset(self,value): 
    self.set_v_offset(value)

##################################Generated Methods#########################################
  def  get_cubic_interpolation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_get_cubic_interpolation,self.godot_owner,[NULL,],&ret)
  def  get_h_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_get_h_offset,self.godot_owner,[NULL,],&ret)
  def  get_lookahead(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_get_lookahead,self.godot_owner,[NULL,],&ret)
  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_get_offset,self.godot_owner,[NULL,],&ret)
  def  get_unit_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_get_unit_offset,self.godot_owner,[NULL,],&ret)
  def  get_v_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_get_v_offset,self.godot_owner,[NULL,],&ret)
  def  has_loop(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_has_loop,self.godot_owner,[NULL,],&ret)
  def  is_rotating(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_is_rotating,self.godot_owner,[NULL,],&ret)
  def  set_cubic_interpolation(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_set_cubic_interpolation,self.godot_owner,[NULL,],NULL)
  def  set_h_offset(self, h_offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_set_h_offset,self.godot_owner,[NULL,],NULL)
  def  set_lookahead(self, lookahead):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_set_lookahead,self.godot_owner,[NULL,],NULL)
  def  set_loop(self, loop):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_set_loop,self.godot_owner,[NULL,],NULL)
  def  set_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_set_offset,self.godot_owner,[NULL,],NULL)
  def  set_rotate(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_set_rotate,self.godot_owner,[NULL,],NULL)
  def  set_unit_offset(self, unit_offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_set_unit_offset,self.godot_owner,[NULL,],NULL)
  def  set_v_offset(self, v_offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_pathfollow2d_set_v_offset,self.godot_owner,[NULL,],NULL)
