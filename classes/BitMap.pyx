from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class BitMap(Resource):
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
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_bitmap__get_data,self.godot_owner,[NULL,],&ret)
  def  _set_data(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bitmap__set_data,self.godot_owner,[NULL,],NULL)
  def  create(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bitmap_create,self.godot_owner,[NULL,],NULL)
  def  create_from_image_alpha(self, imagethreshold):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bitmap_create_from_image_alpha,self.godot_owner,[NULL,],NULL)
  def  get_bit(self, position):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_bitmap_get_bit,self.godot_owner,[NULL,],&ret)
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_bitmap_get_size,self.godot_owner,[NULL,],&ret)
  def  get_true_bit_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_bitmap_get_true_bit_count,self.godot_owner,[NULL,],&ret)
  def  grow_mask(self, pixelsrect):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bitmap_grow_mask,self.godot_owner,[NULL,],NULL)
  def  opaque_to_polygons(self, rectepsilon):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_bitmap_opaque_to_polygons,self.godot_owner,[NULL,],&ret)
  def  set_bit(self, positionbit):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bitmap_set_bit,self.godot_owner,[NULL,],NULL)
  def  set_bit_rect(self, rectbit):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bitmap_set_bit_rect,self.godot_owner,[NULL,],NULL)
