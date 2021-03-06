from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_shape_get_margin
cdef godot_method_bind *bind_shape_set_margin
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_shape_get_margin = api_core.godot_method_bind_get_method('Shape', 'get_margin')
  bind_shape_set_margin = api_core.godot_method_bind_get_method('Shape', 'set_margin')

############################Generated class###################################
cdef class Shape(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Shape")())
##################################Generated Properties#########################################
  @property
  def margin(self): 
    return self.get_margin()
  @margin.setter 
  def margin(self,value): 
    self.set_margin(value)

##################################Generated Methods#########################################
  def  get_margin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_shape_get_margin,self.godot_owner,[NULL,],&ret)
  def  set_margin(self, margin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_shape_set_margin,self.godot_owner,[NULL,],NULL)
