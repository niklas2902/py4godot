from classes.Shape2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_concavepolygonshape2d_get_segments
cdef godot_method_bind *bind_concavepolygonshape2d_set_segments
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_concavepolygonshape2d_get_segments = api_core.godot_method_bind_get_method('ConcavePolygonShape2D', 'get_segments')
  bind_concavepolygonshape2d_set_segments = api_core.godot_method_bind_get_method('ConcavePolygonShape2D', 'set_segments')

############################Generated class###################################
cdef class ConcavePolygonShape2D(Shape2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ConcavePolygonShape2D")())
##################################Generated Properties#########################################
  @property
  def segments(self): 
    return self.get_segments()
  @segments.setter 
  def segments(self,value): 
    self.set_segments(value)

##################################Generated Methods#########################################
  def  get_segments(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_concavepolygonshape2d_get_segments,self.godot_owner,[NULL,],&ret)
  def  set_segments(self, segments):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_concavepolygonshape2d_set_segments,self.godot_owner,[NULL,],NULL)
