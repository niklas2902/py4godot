from classes.Joint2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_groovejoint2d_get_initial_offset
cdef godot_method_bind *bind_groovejoint2d_get_length
cdef godot_method_bind *bind_groovejoint2d_set_initial_offset
cdef godot_method_bind *bind_groovejoint2d_set_length
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_groovejoint2d_get_initial_offset = api_core.godot_method_bind_get_method('GrooveJoint2D', 'get_initial_offset')
  bind_groovejoint2d_get_length = api_core.godot_method_bind_get_method('GrooveJoint2D', 'get_length')
  bind_groovejoint2d_set_initial_offset = api_core.godot_method_bind_get_method('GrooveJoint2D', 'set_initial_offset')
  bind_groovejoint2d_set_length = api_core.godot_method_bind_get_method('GrooveJoint2D', 'set_length')

############################Generated class###################################
cdef class GrooveJoint2D(Joint2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GrooveJoint2D")())
##################################Generated Properties#########################################
  @property
  def initial_offset(self): 
    return self.get_initial_offset()
  @initial_offset.setter 
  def initial_offset(self,value): 
    self.set_initial_offset(value)
  @property
  def length(self): 
    return self.get_length()
  @length.setter 
  def length(self,value): 
    self.set_length(value)

##################################Generated Methods#########################################
  def  get_initial_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_groovejoint2d_get_initial_offset,self.godot_owner,[NULL,],&ret)
  def  get_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_groovejoint2d_get_length,self.godot_owner,[NULL,],&ret)
  def  set_initial_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_groovejoint2d_set_initial_offset,self.godot_owner,[NULL,],NULL)
  def  set_length(self, length):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_groovejoint2d_set_length,self.godot_owner,[NULL,],NULL)
