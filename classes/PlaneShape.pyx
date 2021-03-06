from classes.Shape cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_planeshape_get_plane
cdef godot_method_bind *bind_planeshape_set_plane
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_planeshape_get_plane = api_core.godot_method_bind_get_method('PlaneShape', 'get_plane')
  bind_planeshape_set_plane = api_core.godot_method_bind_get_method('PlaneShape', 'set_plane')

############################Generated class###################################
cdef class PlaneShape(Shape):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PlaneShape")())
##################################Generated Properties#########################################
  @property
  def plane(self): 
    return self.get_plane()
  @plane.setter 
  def plane(self,value): 
    self.set_plane(value)

##################################Generated Methods#########################################
  def  get_plane(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Plane ret
    api_core.godot_method_bind_ptrcall(bind_planeshape_get_plane,self.godot_owner,[NULL,],&ret)
  def  set_plane(self, plane):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_planeshape_set_plane,self.godot_owner,[NULL,],NULL)
