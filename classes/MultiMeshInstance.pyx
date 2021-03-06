from classes.GeometryInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_multimeshinstance_get_multimesh
cdef godot_method_bind *bind_multimeshinstance_set_multimesh
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_multimeshinstance_get_multimesh = api_core.godot_method_bind_get_method('MultiMeshInstance', 'get_multimesh')
  bind_multimeshinstance_set_multimesh = api_core.godot_method_bind_get_method('MultiMeshInstance', 'set_multimesh')

############################Generated class###################################
cdef class MultiMeshInstance(GeometryInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MultiMeshInstance")())
##################################Generated Properties#########################################
  @property
  def multimesh(self): 
    return self.get_multimesh()
  @multimesh.setter 
  def multimesh(self,value): 
    self.set_multimesh(value)

##################################Generated Methods#########################################
  def  get_multimesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef MultiMesh ret
    api_core.godot_method_bind_ptrcall(bind_multimeshinstance_get_multimesh,self.godot_owner,[NULL,],&ret)
  def  set_multimesh(self, multimesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multimeshinstance_set_multimesh,self.godot_owner,[NULL,],NULL)
