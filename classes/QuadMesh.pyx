from classes.PrimitiveMesh cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_quadmesh_get_size
cdef godot_method_bind *bind_quadmesh_set_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_quadmesh_get_size = api_core.godot_method_bind_get_method('QuadMesh', 'get_size')
  bind_quadmesh_set_size = api_core.godot_method_bind_get_method('QuadMesh', 'set_size')

############################Generated class###################################
cdef class QuadMesh(PrimitiveMesh):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("QuadMesh")())
##################################Generated Properties#########################################
  @property
  def size(self): 
    return self.get_size()
  @size.setter 
  def size(self,value): 
    self.set_size(value)

##################################Generated Methods#########################################
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_quadmesh_get_size,self.godot_owner,[NULL,],&ret)
  def  set_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_quadmesh_set_size,self.godot_owner,[NULL,],NULL)
