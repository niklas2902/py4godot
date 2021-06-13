
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Spatial 

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
cdef class VisualInstance(classes.Spatial.Spatial):
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

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualinstance__get_visual_instance_rid,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  get_aabb(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_aabb* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualinstance_get_aabb,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return AABB.new_static(dereference(ret))

  def  get_base(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualinstance_get_base,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  get_instance(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualinstance_get_instance,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  get_layer_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualinstance_get_layer_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_layer_mask_bit(self,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &layer
    api_core.godot_method_bind_ptrcall(bind_visualinstance_get_layer_mask_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_transformed_aabb(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_aabb* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualinstance_get_transformed_aabb,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return AABB.new_static(dereference(ret))

  def  set_base(self,  RID base):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &base._native
    api_core.godot_method_bind_ptrcall(bind_visualinstance_set_base,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_layer_mask(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_visualinstance_set_layer_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_layer_mask_bit(self,  int layer,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &layer
    args[1] = &enabled
    api_core.godot_method_bind_ptrcall(bind_visualinstance_set_layer_mask_bit,self.godot_owner,args,NULL)
    hello('hallo2')
