from classes.Shape cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_concavepolygonshape_get_faces
cdef godot_method_bind *bind_concavepolygonshape_set_faces
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_concavepolygonshape_get_faces = api_core.godot_method_bind_get_method('ConcavePolygonShape', 'get_faces')
  bind_concavepolygonshape_set_faces = api_core.godot_method_bind_get_method('ConcavePolygonShape', 'set_faces')

############################Generated class###################################
cdef class ConcavePolygonShape(Shape):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ConcavePolygonShape")())
##################################Generated Properties#########################################
  @property
  def data(self): 
    return self.get_data()
  @data.setter 
  def data(self,value): 
    self.set_data(value)

##################################Generated Methods#########################################
  def  get_faces(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector3Array ret
    api_core.godot_method_bind_ptrcall(bind_concavepolygonshape_get_faces,self.godot_owner,[NULL,],&ret)
  def  set_faces(self, faces):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_concavepolygonshape_set_faces,self.godot_owner,[NULL,],NULL)
