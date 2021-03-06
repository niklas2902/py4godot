from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_bone2d_apply_rest
cdef godot_method_bind *bind_bone2d_get_default_length
cdef godot_method_bind *bind_bone2d_get_index_in_skeleton
cdef godot_method_bind *bind_bone2d_get_rest
cdef godot_method_bind *bind_bone2d_get_skeleton_rest
cdef godot_method_bind *bind_bone2d_set_default_length
cdef godot_method_bind *bind_bone2d_set_rest
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_bone2d_apply_rest = api_core.godot_method_bind_get_method('Bone2D', 'apply_rest')
  bind_bone2d_get_default_length = api_core.godot_method_bind_get_method('Bone2D', 'get_default_length')
  bind_bone2d_get_index_in_skeleton = api_core.godot_method_bind_get_method('Bone2D', 'get_index_in_skeleton')
  bind_bone2d_get_rest = api_core.godot_method_bind_get_method('Bone2D', 'get_rest')
  bind_bone2d_get_skeleton_rest = api_core.godot_method_bind_get_method('Bone2D', 'get_skeleton_rest')
  bind_bone2d_set_default_length = api_core.godot_method_bind_get_method('Bone2D', 'set_default_length')
  bind_bone2d_set_rest = api_core.godot_method_bind_get_method('Bone2D', 'set_rest')

############################Generated class###################################
cdef class Bone2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Bone2D")())
##################################Generated Properties#########################################
  @property
  def default_length(self): 
    return self.get_default_length()
  @default_length.setter 
  def default_length(self,value): 
    self.set_default_length(value)
  @property
  def rest(self): 
    return self.get_rest()
  @rest.setter 
  def rest(self,value): 
    self.set_rest(value)

##################################Generated Methods#########################################
  def  apply_rest(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bone2d_apply_rest,self.godot_owner,[NULL,],NULL)
  def  get_default_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_bone2d_get_default_length,self.godot_owner,[NULL,],&ret)
  def  get_index_in_skeleton(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_bone2d_get_index_in_skeleton,self.godot_owner,[NULL,],&ret)
  def  get_rest(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_bone2d_get_rest,self.godot_owner,[NULL,],&ret)
  def  get_skeleton_rest(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_bone2d_get_skeleton_rest,self.godot_owner,[NULL,],&ret)
  def  set_default_length(self, default_length):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bone2d_set_default_length,self.godot_owner,[NULL,],NULL)
  def  set_rest(self, rest):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bone2d_set_rest,self.godot_owner,[NULL,],NULL)
