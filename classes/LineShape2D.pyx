from classes.Shape2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_lineshape2d_get_d
cdef godot_method_bind *bind_lineshape2d_get_normal
cdef godot_method_bind *bind_lineshape2d_set_d
cdef godot_method_bind *bind_lineshape2d_set_normal
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_lineshape2d_get_d = api_core.godot_method_bind_get_method('LineShape2D', 'get_d')
  bind_lineshape2d_get_normal = api_core.godot_method_bind_get_method('LineShape2D', 'get_normal')
  bind_lineshape2d_set_d = api_core.godot_method_bind_get_method('LineShape2D', 'set_d')
  bind_lineshape2d_set_normal = api_core.godot_method_bind_get_method('LineShape2D', 'set_normal')

############################Generated class###################################
cdef class LineShape2D(Shape2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("LineShape2D")())
##################################Generated Properties#########################################
  @property
  def d(self): 
    return self.get_d()
  @d.setter 
  def d(self,value): 
    self.set_d(value)
  @property
  def normal(self): 
    return self.get_normal()
  @normal.setter 
  def normal(self,value): 
    self.set_normal(value)

##################################Generated Methods#########################################
  def  get_d(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_lineshape2d_get_d,self.godot_owner,[NULL,],&ret)
  def  get_normal(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_lineshape2d_get_normal,self.godot_owner,[NULL,],&ret)
  def  set_d(self, d):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_lineshape2d_set_d,self.godot_owner,[NULL,],NULL)
  def  set_normal(self, normal):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_lineshape2d_set_normal,self.godot_owner,[NULL,],NULL)
