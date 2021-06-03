
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Image
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_bitmap__get_data
cdef godot_method_bind *bind_bitmap__set_data
cdef godot_method_bind *bind_bitmap_create
cdef godot_method_bind *bind_bitmap_create_from_image_alpha
cdef godot_method_bind *bind_bitmap_get_bit
cdef godot_method_bind *bind_bitmap_get_size
cdef godot_method_bind *bind_bitmap_get_true_bit_count
cdef godot_method_bind *bind_bitmap_grow_mask
cdef godot_method_bind *bind_bitmap_opaque_to_polygons
cdef godot_method_bind *bind_bitmap_set_bit
cdef godot_method_bind *bind_bitmap_set_bit_rect
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_bitmap__get_data = api_core.godot_method_bind_get_method('BitMap', '_get_data')
  bind_bitmap__set_data = api_core.godot_method_bind_get_method('BitMap', '_set_data')
  bind_bitmap_create = api_core.godot_method_bind_get_method('BitMap', 'create')
  bind_bitmap_create_from_image_alpha = api_core.godot_method_bind_get_method('BitMap', 'create_from_image_alpha')
  bind_bitmap_get_bit = api_core.godot_method_bind_get_method('BitMap', 'get_bit')
  bind_bitmap_get_size = api_core.godot_method_bind_get_method('BitMap', 'get_size')
  bind_bitmap_get_true_bit_count = api_core.godot_method_bind_get_method('BitMap', 'get_true_bit_count')
  bind_bitmap_grow_mask = api_core.godot_method_bind_get_method('BitMap', 'grow_mask')
  bind_bitmap_opaque_to_polygons = api_core.godot_method_bind_get_method('BitMap', 'opaque_to_polygons')
  bind_bitmap_set_bit = api_core.godot_method_bind_get_method('BitMap', 'set_bit')
  bind_bitmap_set_bit_rect = api_core.godot_method_bind_get_method('BitMap', 'set_bit_rect')

############################Generated class###################################
cdef class BitMap(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("BitMap")())
##################################Generated Properties#########################################
  @property
  def data(self): 
    return self.get_data()
  @data.setter 
  def data(self,value): 
    self.set_data(value)

##################################Generated Methods#########################################
  def  _get_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bitmap__get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  _set_data(self,  Dictionary arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_bitmap__set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create(self,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size._native
    api_core.godot_method_bind_ptrcall(bind_bitmap_create,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create_from_image_alpha(self,  classes.Image.Image image,  float threshold):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = image.godot_owner
    args[1] = &threshold
    api_core.godot_method_bind_ptrcall(bind_bitmap_create_from_image_alpha,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_bit(self,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_bitmap_get_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bitmap_get_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_true_bit_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bitmap_get_true_bit_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  grow_mask(self,  int pixels,  Rect2 rect):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &pixels
    args[1] = &rect._native
    api_core.godot_method_bind_ptrcall(bind_bitmap_grow_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  opaque_to_polygons(self,  Rect2 rect,  float epsilon):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[2]

    args[0] = &rect._native
    args[1] = &epsilon
    api_core.godot_method_bind_ptrcall(bind_bitmap_opaque_to_polygons,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  set_bit(self,  Vector2 position,  bool bit):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &position._native
    args[1] = &bit
    api_core.godot_method_bind_ptrcall(bind_bitmap_set_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bit_rect(self,  Rect2 rect,  bool bit):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &rect._native
    args[1] = &bit
    api_core.godot_method_bind_ptrcall(bind_bitmap_set_bit_rect,self.godot_owner,args,NULL)
    hello('hallo2')
