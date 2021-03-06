from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_position2d__get_gizmo_extents
cdef godot_method_bind *bind_position2d__set_gizmo_extents
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_position2d__get_gizmo_extents = api_core.godot_method_bind_get_method('Position2D', '_get_gizmo_extents')
  bind_position2d__set_gizmo_extents = api_core.godot_method_bind_get_method('Position2D', '_set_gizmo_extents')

############################Generated class###################################
cdef class Position2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Position2D")())
##################################Generated Properties#########################################
  @property
  def gizmo_extents(self): 
    return self.get_gizmo_extents()
  @gizmo_extents.setter 
  def gizmo_extents(self,value): 
    self.set_gizmo_extents(value)

##################################Generated Methods#########################################
  def  _get_gizmo_extents(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_position2d__get_gizmo_extents,self.godot_owner,[NULL,],&ret)
  def  _set_gizmo_extents(self, extents):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_position2d__set_gizmo_extents,self.godot_owner,[NULL,],NULL)
