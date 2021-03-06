from classes.Shape2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_rectangleshape2d_get_extents
cdef godot_method_bind *bind_rectangleshape2d_set_extents
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_rectangleshape2d_get_extents = api_core.godot_method_bind_get_method('RectangleShape2D', 'get_extents')
  bind_rectangleshape2d_set_extents = api_core.godot_method_bind_get_method('RectangleShape2D', 'set_extents')

############################Generated class###################################
cdef class RectangleShape2D(Shape2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RectangleShape2D")())
##################################Generated Properties#########################################
  @property
  def extents(self): 
    return self.get_extents()
  @extents.setter 
  def extents(self,value): 
    self.set_extents(value)

##################################Generated Methods#########################################
  def  get_extents(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_rectangleshape2d_get_extents,self.godot_owner,[NULL,],&ret)
  def  set_extents(self, extents):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_rectangleshape2d_set_extents,self.godot_owner,[NULL,],NULL)
