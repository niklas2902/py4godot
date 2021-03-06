from classes.Shape cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_sphereshape_get_radius
cdef godot_method_bind *bind_sphereshape_set_radius
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_sphereshape_get_radius = api_core.godot_method_bind_get_method('SphereShape', 'get_radius')
  bind_sphereshape_set_radius = api_core.godot_method_bind_get_method('SphereShape', 'set_radius')

############################Generated class###################################
cdef class SphereShape(Shape):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SphereShape")())
##################################Generated Properties#########################################
  @property
  def radius(self): 
    return self.get_radius()
  @radius.setter 
  def radius(self,value): 
    self.set_radius(value)

##################################Generated Methods#########################################
  def  get_radius(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_sphereshape_get_radius,self.godot_owner,[NULL,],&ret)
  def  set_radius(self, radius):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sphereshape_set_radius,self.godot_owner,[NULL,],NULL)
