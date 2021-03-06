from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_springarm_add_excluded_object
cdef godot_method_bind *bind_springarm_clear_excluded_objects
cdef godot_method_bind *bind_springarm_get_collision_mask
cdef godot_method_bind *bind_springarm_get_hit_length
cdef godot_method_bind *bind_springarm_get_length
cdef godot_method_bind *bind_springarm_get_margin
cdef godot_method_bind *bind_springarm_get_shape
cdef godot_method_bind *bind_springarm_remove_excluded_object
cdef godot_method_bind *bind_springarm_set_collision_mask
cdef godot_method_bind *bind_springarm_set_length
cdef godot_method_bind *bind_springarm_set_margin
cdef godot_method_bind *bind_springarm_set_shape
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_springarm_add_excluded_object = api_core.godot_method_bind_get_method('SpringArm', 'add_excluded_object')
  bind_springarm_clear_excluded_objects = api_core.godot_method_bind_get_method('SpringArm', 'clear_excluded_objects')
  bind_springarm_get_collision_mask = api_core.godot_method_bind_get_method('SpringArm', 'get_collision_mask')
  bind_springarm_get_hit_length = api_core.godot_method_bind_get_method('SpringArm', 'get_hit_length')
  bind_springarm_get_length = api_core.godot_method_bind_get_method('SpringArm', 'get_length')
  bind_springarm_get_margin = api_core.godot_method_bind_get_method('SpringArm', 'get_margin')
  bind_springarm_get_shape = api_core.godot_method_bind_get_method('SpringArm', 'get_shape')
  bind_springarm_remove_excluded_object = api_core.godot_method_bind_get_method('SpringArm', 'remove_excluded_object')
  bind_springarm_set_collision_mask = api_core.godot_method_bind_get_method('SpringArm', 'set_collision_mask')
  bind_springarm_set_length = api_core.godot_method_bind_get_method('SpringArm', 'set_length')
  bind_springarm_set_margin = api_core.godot_method_bind_get_method('SpringArm', 'set_margin')
  bind_springarm_set_shape = api_core.godot_method_bind_get_method('SpringArm', 'set_shape')

############################Generated class###################################
cdef class SpringArm(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SpringArm")())
##################################Generated Properties#########################################
  @property
  def collision_mask(self): 
    return self.get_collision_mask()
  @collision_mask.setter 
  def collision_mask(self,value): 
    self.set_collision_mask(value)
  @property
  def margin(self): 
    return self.get_margin()
  @margin.setter 
  def margin(self,value): 
    self.set_margin(value)
  @property
  def shape(self): 
    return self.get_shape()
  @shape.setter 
  def shape(self,value): 
    self.set_shape(value)
  @property
  def spring_length(self): 
    return self.get_spring_length()
  @spring_length.setter 
  def spring_length(self,value): 
    self.set_spring_length(value)

##################################Generated Methods#########################################
  def  add_excluded_object(self, RID):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_springarm_add_excluded_object,self.godot_owner,[NULL,],NULL)
  def  clear_excluded_objects(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_springarm_clear_excluded_objects,self.godot_owner,[NULL,],NULL)
  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_springarm_get_collision_mask,self.godot_owner,[NULL,],&ret)
  def  get_hit_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_springarm_get_hit_length,self.godot_owner,[NULL,],&ret)
  def  get_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_springarm_get_length,self.godot_owner,[NULL,],&ret)
  def  get_margin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_springarm_get_margin,self.godot_owner,[NULL,],&ret)
  def  get_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Shape ret
    api_core.godot_method_bind_ptrcall(bind_springarm_get_shape,self.godot_owner,[NULL,],&ret)
  def  remove_excluded_object(self, RID):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_springarm_remove_excluded_object,self.godot_owner,[NULL,],&ret)
  def  set_collision_mask(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_springarm_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  set_length(self, length):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_springarm_set_length,self.godot_owner,[NULL,],NULL)
  def  set_margin(self, margin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_springarm_set_margin,self.godot_owner,[NULL,],NULL)
  def  set_shape(self, shape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_springarm_set_shape,self.godot_owner,[NULL,],NULL)
