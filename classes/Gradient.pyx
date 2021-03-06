from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_gradient_add_point
cdef godot_method_bind *bind_gradient_get_color
cdef godot_method_bind *bind_gradient_get_colors
cdef godot_method_bind *bind_gradient_get_offset
cdef godot_method_bind *bind_gradient_get_offsets
cdef godot_method_bind *bind_gradient_get_point_count
cdef godot_method_bind *bind_gradient_interpolate
cdef godot_method_bind *bind_gradient_remove_point
cdef godot_method_bind *bind_gradient_set_color
cdef godot_method_bind *bind_gradient_set_colors
cdef godot_method_bind *bind_gradient_set_offset
cdef godot_method_bind *bind_gradient_set_offsets
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_gradient_add_point = api_core.godot_method_bind_get_method('Gradient', 'add_point')
  bind_gradient_get_color = api_core.godot_method_bind_get_method('Gradient', 'get_color')
  bind_gradient_get_colors = api_core.godot_method_bind_get_method('Gradient', 'get_colors')
  bind_gradient_get_offset = api_core.godot_method_bind_get_method('Gradient', 'get_offset')
  bind_gradient_get_offsets = api_core.godot_method_bind_get_method('Gradient', 'get_offsets')
  bind_gradient_get_point_count = api_core.godot_method_bind_get_method('Gradient', 'get_point_count')
  bind_gradient_interpolate = api_core.godot_method_bind_get_method('Gradient', 'interpolate')
  bind_gradient_remove_point = api_core.godot_method_bind_get_method('Gradient', 'remove_point')
  bind_gradient_set_color = api_core.godot_method_bind_get_method('Gradient', 'set_color')
  bind_gradient_set_colors = api_core.godot_method_bind_get_method('Gradient', 'set_colors')
  bind_gradient_set_offset = api_core.godot_method_bind_get_method('Gradient', 'set_offset')
  bind_gradient_set_offsets = api_core.godot_method_bind_get_method('Gradient', 'set_offsets')

############################Generated class###################################
cdef class Gradient(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Gradient")())
##################################Generated Properties#########################################
  @property
  def colors(self): 
    return self.get_colors()
  @colors.setter 
  def colors(self,value): 
    self.set_colors(value)
  @property
  def offsets(self): 
    return self.get_offsets()
  @offsets.setter 
  def offsets(self,value): 
    self.set_offsets(value)

##################################Generated Methods#########################################
  def  add_point(self, offsetcolor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gradient_add_point,self.godot_owner,[NULL,],NULL)
  def  get_color(self, point):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_gradient_get_color,self.godot_owner,[NULL,],&ret)
  def  get_colors(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolColorArray ret
    api_core.godot_method_bind_ptrcall(bind_gradient_get_colors,self.godot_owner,[NULL,],&ret)
  def  get_offset(self, point):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_gradient_get_offset,self.godot_owner,[NULL,],&ret)
  def  get_offsets(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolRealArray ret
    api_core.godot_method_bind_ptrcall(bind_gradient_get_offsets,self.godot_owner,[NULL,],&ret)
  def  get_point_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_gradient_get_point_count,self.godot_owner,[NULL,],&ret)
  def  interpolate(self, offset):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_gradient_interpolate,self.godot_owner,[NULL,],&ret)
  def  remove_point(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gradient_remove_point,self.godot_owner,[NULL,],NULL)
  def  set_color(self, pointcolor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gradient_set_color,self.godot_owner,[NULL,],NULL)
  def  set_colors(self, colors):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gradient_set_colors,self.godot_owner,[NULL,],NULL)
  def  set_offset(self, pointoffset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gradient_set_offset,self.godot_owner,[NULL,],NULL)
  def  set_offsets(self, offsets):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gradient_set_offsets,self.godot_owner,[NULL,],NULL)
