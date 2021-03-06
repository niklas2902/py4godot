from classes.CSGShape cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_csgprimitive_is_inverting_faces
cdef godot_method_bind *bind_csgprimitive_set_invert_faces
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_csgprimitive_is_inverting_faces = api_core.godot_method_bind_get_method('CSGPrimitive', 'is_inverting_faces')
  bind_csgprimitive_set_invert_faces = api_core.godot_method_bind_get_method('CSGPrimitive', 'set_invert_faces')

############################Generated class###################################
cdef class CSGPrimitive(CSGShape):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CSGPrimitive")())
##################################Generated Properties#########################################
  @property
  def invert_faces(self): 
    return self.get_invert_faces()
  @invert_faces.setter 
  def invert_faces(self,value): 
    self.set_invert_faces(value)

##################################Generated Methods#########################################
  def  is_inverting_faces(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgprimitive_is_inverting_faces,self.godot_owner,[NULL,],&ret)
  def  set_invert_faces(self, invert_faces):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgprimitive_set_invert_faces,self.godot_owner,[NULL,],NULL)
