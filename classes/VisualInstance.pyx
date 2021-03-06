from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualinstance__get_visual_instance_rid
cdef godot_method_bind *bind_visualinstance_get_aabb
cdef godot_method_bind *bind_visualinstance_get_base
cdef godot_method_bind *bind_visualinstance_get_instance
cdef godot_method_bind *bind_visualinstance_get_layer_mask
cdef godot_method_bind *bind_visualinstance_get_layer_mask_bit
cdef godot_method_bind *bind_visualinstance_get_transformed_aabb
cdef godot_method_bind *bind_visualinstance_set_base
cdef godot_method_bind *bind_visualinstance_set_layer_mask
cdef godot_method_bind *bind_visualinstance_set_layer_mask_bit
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualinstance__get_visual_instance_rid = api_core.godot_method_bind_get_method('VisualInstance', '_get_visual_instance_rid')
  bind_visualinstance_get_aabb = api_core.godot_method_bind_get_method('VisualInstance', 'get_aabb')
  bind_visualinstance_get_base = api_core.godot_method_bind_get_method('VisualInstance', 'get_base')
  bind_visualinstance_get_instance = api_core.godot_method_bind_get_method('VisualInstance', 'get_instance')
  bind_visualinstance_get_layer_mask = api_core.godot_method_bind_get_method('VisualInstance', 'get_layer_mask')
  bind_visualinstance_get_layer_mask_bit = api_core.godot_method_bind_get_method('VisualInstance', 'get_layer_mask_bit')
  bind_visualinstance_get_transformed_aabb = api_core.godot_method_bind_get_method('VisualInstance', 'get_transformed_aabb')
  bind_visualinstance_set_base = api_core.godot_method_bind_get_method('VisualInstance', 'set_base')
  bind_visualinstance_set_layer_mask = api_core.godot_method_bind_get_method('VisualInstance', 'set_layer_mask')
  bind_visualinstance_set_layer_mask_bit = api_core.godot_method_bind_get_method('VisualInstance', 'set_layer_mask_bit')

############################Generated class###################################
cdef class VisualInstance(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualInstance")())
##################################Generated Properties#########################################
  @property
  def layers(self): 
    return self.get_layers()
  @layers.setter 
  def layers(self,value): 
    self.set_layers(value)

##################################Generated Methods#########################################
  def  _get_visual_instance_rid(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_visualinstance__get_visual_instance_rid,self.godot_owner,[NULL,],&ret)
  def  get_aabb(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AABB ret
    api_core.godot_method_bind_ptrcall(bind_visualinstance_get_aabb,self.godot_owner,[NULL,],&ret)
  def  get_base(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_visualinstance_get_base,self.godot_owner,[NULL,],&ret)
  def  get_instance(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_visualinstance_get_instance,self.godot_owner,[NULL,],&ret)
  def  get_layer_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualinstance_get_layer_mask,self.godot_owner,[NULL,],&ret)
  def  get_layer_mask_bit(self, layer):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualinstance_get_layer_mask_bit,self.godot_owner,[NULL,],&ret)
  def  get_transformed_aabb(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AABB ret
    api_core.godot_method_bind_ptrcall(bind_visualinstance_get_transformed_aabb,self.godot_owner,[NULL,],&ret)
  def  set_base(self, base):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualinstance_set_base,self.godot_owner,[NULL,],NULL)
  def  set_layer_mask(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualinstance_set_layer_mask,self.godot_owner,[NULL,],NULL)
  def  set_layer_mask_bit(self, layerenabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualinstance_set_layer_mask_bit,self.godot_owner,[NULL,],NULL)
