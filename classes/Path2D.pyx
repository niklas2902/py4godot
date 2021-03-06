from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_path2d__curve_changed
cdef godot_method_bind *bind_path2d_get_curve
cdef godot_method_bind *bind_path2d_set_curve
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_path2d__curve_changed = api_core.godot_method_bind_get_method('Path2D', '_curve_changed')
  bind_path2d_get_curve = api_core.godot_method_bind_get_method('Path2D', 'get_curve')
  bind_path2d_set_curve = api_core.godot_method_bind_get_method('Path2D', 'set_curve')

############################Generated class###################################
cdef class Path2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Path2D")())
##################################Generated Properties#########################################
  @property
  def curve(self): 
    return self.get_curve()
  @curve.setter 
  def curve(self,value): 
    self.set_curve(value)

##################################Generated Methods#########################################
  def  _curve_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_path2d__curve_changed,self.godot_owner,[NULL,],NULL)
  def  get_curve(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Curve2D ret
    api_core.godot_method_bind_ptrcall(bind_path2d_get_curve,self.godot_owner,[NULL,],&ret)
  def  set_curve(self, curve):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_path2d_set_curve,self.godot_owner,[NULL,],NULL)
