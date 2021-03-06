from classes.Texture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_curvetexture__update
cdef godot_method_bind *bind_curvetexture_get_curve
cdef godot_method_bind *bind_curvetexture_set_curve
cdef godot_method_bind *bind_curvetexture_set_width
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_curvetexture__update = api_core.godot_method_bind_get_method('CurveTexture', '_update')
  bind_curvetexture_get_curve = api_core.godot_method_bind_get_method('CurveTexture', 'get_curve')
  bind_curvetexture_set_curve = api_core.godot_method_bind_get_method('CurveTexture', 'set_curve')
  bind_curvetexture_set_width = api_core.godot_method_bind_get_method('CurveTexture', 'set_width')

############################Generated class###################################
cdef class CurveTexture(Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CurveTexture")())
##################################Generated Properties#########################################
  @property
  def curve(self): 
    return self.get_curve()
  @curve.setter 
  def curve(self,value): 
    self.set_curve(value)
  @property
  def width(self): 
    return self.get_width()
  @width.setter 
  def width(self,value): 
    self.set_width(value)

##################################Generated Methods#########################################
  def  _update(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_curvetexture__update,self.godot_owner,[NULL,],NULL)
  def  get_curve(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Curve ret
    api_core.godot_method_bind_ptrcall(bind_curvetexture_get_curve,self.godot_owner,[NULL,],&ret)
  def  set_curve(self, curve):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_curvetexture_set_curve,self.godot_owner,[NULL,],NULL)
  def  set_width(self, width):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_curvetexture_set_width,self.godot_owner,[NULL,],NULL)
