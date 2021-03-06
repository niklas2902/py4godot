from classes.GeometryInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_csgshape__update_shape
cdef godot_method_bind *bind_csgshape_get_collision_layer
cdef godot_method_bind *bind_csgshape_get_collision_layer_bit
cdef godot_method_bind *bind_csgshape_get_collision_mask
cdef godot_method_bind *bind_csgshape_get_collision_mask_bit
cdef godot_method_bind *bind_csgshape_get_meshes
cdef godot_method_bind *bind_csgshape_get_operation
cdef godot_method_bind *bind_csgshape_get_snap
cdef godot_method_bind *bind_csgshape_is_calculating_tangents
cdef godot_method_bind *bind_csgshape_is_root_shape
cdef godot_method_bind *bind_csgshape_is_using_collision
cdef godot_method_bind *bind_csgshape_set_calculate_tangents
cdef godot_method_bind *bind_csgshape_set_collision_layer
cdef godot_method_bind *bind_csgshape_set_collision_layer_bit
cdef godot_method_bind *bind_csgshape_set_collision_mask
cdef godot_method_bind *bind_csgshape_set_collision_mask_bit
cdef godot_method_bind *bind_csgshape_set_operation
cdef godot_method_bind *bind_csgshape_set_snap
cdef godot_method_bind *bind_csgshape_set_use_collision
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_csgshape__update_shape = api_core.godot_method_bind_get_method('CSGShape', '_update_shape')
  bind_csgshape_get_collision_layer = api_core.godot_method_bind_get_method('CSGShape', 'get_collision_layer')
  bind_csgshape_get_collision_layer_bit = api_core.godot_method_bind_get_method('CSGShape', 'get_collision_layer_bit')
  bind_csgshape_get_collision_mask = api_core.godot_method_bind_get_method('CSGShape', 'get_collision_mask')
  bind_csgshape_get_collision_mask_bit = api_core.godot_method_bind_get_method('CSGShape', 'get_collision_mask_bit')
  bind_csgshape_get_meshes = api_core.godot_method_bind_get_method('CSGShape', 'get_meshes')
  bind_csgshape_get_operation = api_core.godot_method_bind_get_method('CSGShape', 'get_operation')
  bind_csgshape_get_snap = api_core.godot_method_bind_get_method('CSGShape', 'get_snap')
  bind_csgshape_is_calculating_tangents = api_core.godot_method_bind_get_method('CSGShape', 'is_calculating_tangents')
  bind_csgshape_is_root_shape = api_core.godot_method_bind_get_method('CSGShape', 'is_root_shape')
  bind_csgshape_is_using_collision = api_core.godot_method_bind_get_method('CSGShape', 'is_using_collision')
  bind_csgshape_set_calculate_tangents = api_core.godot_method_bind_get_method('CSGShape', 'set_calculate_tangents')
  bind_csgshape_set_collision_layer = api_core.godot_method_bind_get_method('CSGShape', 'set_collision_layer')
  bind_csgshape_set_collision_layer_bit = api_core.godot_method_bind_get_method('CSGShape', 'set_collision_layer_bit')
  bind_csgshape_set_collision_mask = api_core.godot_method_bind_get_method('CSGShape', 'set_collision_mask')
  bind_csgshape_set_collision_mask_bit = api_core.godot_method_bind_get_method('CSGShape', 'set_collision_mask_bit')
  bind_csgshape_set_operation = api_core.godot_method_bind_get_method('CSGShape', 'set_operation')
  bind_csgshape_set_snap = api_core.godot_method_bind_get_method('CSGShape', 'set_snap')
  bind_csgshape_set_use_collision = api_core.godot_method_bind_get_method('CSGShape', 'set_use_collision')

############################Generated class###################################
cdef class CSGShape(GeometryInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CSGShape")())
##################################Generated Properties#########################################
  @property
  def calculate_tangents(self): 
    return self.get_calculate_tangents()
  @calculate_tangents.setter 
  def calculate_tangents(self,value): 
    self.set_calculate_tangents(value)
  @property
  def collision_layer(self): 
    return self.get_collision_layer()
  @collision_layer.setter 
  def collision_layer(self,value): 
    self.set_collision_layer(value)
  @property
  def collision_mask(self): 
    return self.get_collision_mask()
  @collision_mask.setter 
  def collision_mask(self,value): 
    self.set_collision_mask(value)
  @property
  def operation(self): 
    return self.get_operation()
  @operation.setter 
  def operation(self,value): 
    self.set_operation(value)
  @property
  def snap(self): 
    return self.get_snap()
  @snap.setter 
  def snap(self,value): 
    self.set_snap(value)
  @property
  def use_collision(self): 
    return self.get_use_collision()
  @use_collision.setter 
  def use_collision(self,value): 
    self.set_use_collision(value)

##################################Generated Methods#########################################
  def  _update_shape(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgshape__update_shape,self.godot_owner,[NULL,],NULL)
  def  get_collision_layer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_csgshape_get_collision_layer,self.godot_owner,[NULL,],&ret)
  def  get_collision_layer_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgshape_get_collision_layer_bit,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_csgshape_get_collision_mask,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgshape_get_collision_mask_bit,self.godot_owner,[NULL,],&ret)
  def  get_meshes(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_csgshape_get_meshes,self.godot_owner,[NULL,],&ret)
  def  get_operation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CSGShape::Operation ret
    api_core.godot_method_bind_ptrcall(bind_csgshape_get_operation,self.godot_owner,[NULL,],&ret)
  def  get_snap(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_csgshape_get_snap,self.godot_owner,[NULL,],&ret)
  def  is_calculating_tangents(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgshape_is_calculating_tangents,self.godot_owner,[NULL,],&ret)
  def  is_root_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgshape_is_root_shape,self.godot_owner,[NULL,],&ret)
  def  is_using_collision(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgshape_is_using_collision,self.godot_owner,[NULL,],&ret)
  def  set_calculate_tangents(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_calculate_tangents,self.godot_owner,[NULL,],NULL)
  def  set_collision_layer(self, layer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_collision_layer,self.godot_owner,[NULL,],NULL)
  def  set_collision_layer_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_collision_layer_bit,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_collision_mask_bit,self.godot_owner,[NULL,],NULL)
  def  set_operation(self, operation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_operation,self.godot_owner,[NULL,],NULL)
  def  set_snap(self, snap):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_snap,self.godot_owner,[NULL,],NULL)
  def  set_use_collision(self, operation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_use_collision,self.godot_owner,[NULL,],NULL)
