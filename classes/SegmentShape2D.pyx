from classes.Shape2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_segmentshape2d_get_a
cdef godot_method_bind *bind_segmentshape2d_get_b
cdef godot_method_bind *bind_segmentshape2d_set_a
cdef godot_method_bind *bind_segmentshape2d_set_b
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_segmentshape2d_get_a = api_core.godot_method_bind_get_method('SegmentShape2D', 'get_a')
  bind_segmentshape2d_get_b = api_core.godot_method_bind_get_method('SegmentShape2D', 'get_b')
  bind_segmentshape2d_set_a = api_core.godot_method_bind_get_method('SegmentShape2D', 'set_a')
  bind_segmentshape2d_set_b = api_core.godot_method_bind_get_method('SegmentShape2D', 'set_b')

############################Generated class###################################
cdef class SegmentShape2D(Shape2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SegmentShape2D")())
##################################Generated Properties#########################################
  @property
  def a(self): 
    return self.get_a()
  @a.setter 
  def a(self,value): 
    self.set_a(value)
  @property
  def b(self): 
    return self.get_b()
  @b.setter 
  def b(self,value): 
    self.set_b(value)

##################################Generated Methods#########################################
  def  get_a(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_segmentshape2d_get_a,self.godot_owner,[NULL,],&ret)
  def  get_b(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_segmentshape2d_get_b,self.godot_owner,[NULL,],&ret)
  def  set_a(self, a):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_segmentshape2d_set_a,self.godot_owner,[NULL,],NULL)
  def  set_b(self, b):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_segmentshape2d_set_b,self.godot_owner,[NULL,],NULL)
