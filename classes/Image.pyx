
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
cimport classes.Image
cimport classes.Image
cimport classes.Image
cimport classes.Image
cimport classes.Image
cimport classes.Image
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_image__get_data
cdef godot_method_bind *bind_image__set_data
cdef godot_method_bind *bind_image_blend_rect
cdef godot_method_bind *bind_image_blend_rect_mask
cdef godot_method_bind *bind_image_blit_rect
cdef godot_method_bind *bind_image_blit_rect_mask
cdef godot_method_bind *bind_image_bumpmap_to_normalmap
cdef godot_method_bind *bind_image_clear_mipmaps
cdef godot_method_bind *bind_image_compress
cdef godot_method_bind *bind_image_convert
cdef godot_method_bind *bind_image_copy_from
cdef godot_method_bind *bind_image_create
cdef godot_method_bind *bind_image_create_from_data
cdef godot_method_bind *bind_image_crop
cdef godot_method_bind *bind_image_decompress
cdef godot_method_bind *bind_image_detect_alpha
cdef godot_method_bind *bind_image_expand_x2_hq2x
cdef godot_method_bind *bind_image_fill
cdef godot_method_bind *bind_image_fix_alpha_edges
cdef godot_method_bind *bind_image_flip_x
cdef godot_method_bind *bind_image_flip_y
cdef godot_method_bind *bind_image_generate_mipmaps
cdef godot_method_bind *bind_image_get_data
cdef godot_method_bind *bind_image_get_format
cdef godot_method_bind *bind_image_get_height
cdef godot_method_bind *bind_image_get_mipmap_offset
cdef godot_method_bind *bind_image_get_pixel
cdef godot_method_bind *bind_image_get_pixelv
cdef godot_method_bind *bind_image_get_rect
cdef godot_method_bind *bind_image_get_size
cdef godot_method_bind *bind_image_get_used_rect
cdef godot_method_bind *bind_image_get_width
cdef godot_method_bind *bind_image_has_mipmaps
cdef godot_method_bind *bind_image_is_compressed
cdef godot_method_bind *bind_image_is_empty
cdef godot_method_bind *bind_image_is_invisible
cdef godot_method_bind *bind_image_load
cdef godot_method_bind *bind_image_load_jpg_from_buffer
cdef godot_method_bind *bind_image_load_png_from_buffer
cdef godot_method_bind *bind_image_load_webp_from_buffer
cdef godot_method_bind *bind_image_lock
cdef godot_method_bind *bind_image_normalmap_to_xy
cdef godot_method_bind *bind_image_premultiply_alpha
cdef godot_method_bind *bind_image_resize
cdef godot_method_bind *bind_image_resize_to_po2
cdef godot_method_bind *bind_image_rgbe_to_srgb
cdef godot_method_bind *bind_image_save_exr
cdef godot_method_bind *bind_image_save_png
cdef godot_method_bind *bind_image_set_pixel
cdef godot_method_bind *bind_image_set_pixelv
cdef godot_method_bind *bind_image_shrink_x2
cdef godot_method_bind *bind_image_srgb_to_linear
cdef godot_method_bind *bind_image_unlock
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_image__get_data = api_core.godot_method_bind_get_method('Image', '_get_data')
  bind_image__set_data = api_core.godot_method_bind_get_method('Image', '_set_data')
  bind_image_blend_rect = api_core.godot_method_bind_get_method('Image', 'blend_rect')
  bind_image_blend_rect_mask = api_core.godot_method_bind_get_method('Image', 'blend_rect_mask')
  bind_image_blit_rect = api_core.godot_method_bind_get_method('Image', 'blit_rect')
  bind_image_blit_rect_mask = api_core.godot_method_bind_get_method('Image', 'blit_rect_mask')
  bind_image_bumpmap_to_normalmap = api_core.godot_method_bind_get_method('Image', 'bumpmap_to_normalmap')
  bind_image_clear_mipmaps = api_core.godot_method_bind_get_method('Image', 'clear_mipmaps')
  bind_image_compress = api_core.godot_method_bind_get_method('Image', 'compress')
  bind_image_convert = api_core.godot_method_bind_get_method('Image', 'convert')
  bind_image_copy_from = api_core.godot_method_bind_get_method('Image', 'copy_from')
  bind_image_create = api_core.godot_method_bind_get_method('Image', 'create')
  bind_image_create_from_data = api_core.godot_method_bind_get_method('Image', 'create_from_data')
  bind_image_crop = api_core.godot_method_bind_get_method('Image', 'crop')
  bind_image_decompress = api_core.godot_method_bind_get_method('Image', 'decompress')
  bind_image_detect_alpha = api_core.godot_method_bind_get_method('Image', 'detect_alpha')
  bind_image_expand_x2_hq2x = api_core.godot_method_bind_get_method('Image', 'expand_x2_hq2x')
  bind_image_fill = api_core.godot_method_bind_get_method('Image', 'fill')
  bind_image_fix_alpha_edges = api_core.godot_method_bind_get_method('Image', 'fix_alpha_edges')
  bind_image_flip_x = api_core.godot_method_bind_get_method('Image', 'flip_x')
  bind_image_flip_y = api_core.godot_method_bind_get_method('Image', 'flip_y')
  bind_image_generate_mipmaps = api_core.godot_method_bind_get_method('Image', 'generate_mipmaps')
  bind_image_get_data = api_core.godot_method_bind_get_method('Image', 'get_data')
  bind_image_get_format = api_core.godot_method_bind_get_method('Image', 'get_format')
  bind_image_get_height = api_core.godot_method_bind_get_method('Image', 'get_height')
  bind_image_get_mipmap_offset = api_core.godot_method_bind_get_method('Image', 'get_mipmap_offset')
  bind_image_get_pixel = api_core.godot_method_bind_get_method('Image', 'get_pixel')
  bind_image_get_pixelv = api_core.godot_method_bind_get_method('Image', 'get_pixelv')
  bind_image_get_rect = api_core.godot_method_bind_get_method('Image', 'get_rect')
  bind_image_get_size = api_core.godot_method_bind_get_method('Image', 'get_size')
  bind_image_get_used_rect = api_core.godot_method_bind_get_method('Image', 'get_used_rect')
  bind_image_get_width = api_core.godot_method_bind_get_method('Image', 'get_width')
  bind_image_has_mipmaps = api_core.godot_method_bind_get_method('Image', 'has_mipmaps')
  bind_image_is_compressed = api_core.godot_method_bind_get_method('Image', 'is_compressed')
  bind_image_is_empty = api_core.godot_method_bind_get_method('Image', 'is_empty')
  bind_image_is_invisible = api_core.godot_method_bind_get_method('Image', 'is_invisible')
  bind_image_load = api_core.godot_method_bind_get_method('Image', 'load')
  bind_image_load_jpg_from_buffer = api_core.godot_method_bind_get_method('Image', 'load_jpg_from_buffer')
  bind_image_load_png_from_buffer = api_core.godot_method_bind_get_method('Image', 'load_png_from_buffer')
  bind_image_load_webp_from_buffer = api_core.godot_method_bind_get_method('Image', 'load_webp_from_buffer')
  bind_image_lock = api_core.godot_method_bind_get_method('Image', 'lock')
  bind_image_normalmap_to_xy = api_core.godot_method_bind_get_method('Image', 'normalmap_to_xy')
  bind_image_premultiply_alpha = api_core.godot_method_bind_get_method('Image', 'premultiply_alpha')
  bind_image_resize = api_core.godot_method_bind_get_method('Image', 'resize')
  bind_image_resize_to_po2 = api_core.godot_method_bind_get_method('Image', 'resize_to_po2')
  bind_image_rgbe_to_srgb = api_core.godot_method_bind_get_method('Image', 'rgbe_to_srgb')
  bind_image_save_exr = api_core.godot_method_bind_get_method('Image', 'save_exr')
  bind_image_save_png = api_core.godot_method_bind_get_method('Image', 'save_png')
  bind_image_set_pixel = api_core.godot_method_bind_get_method('Image', 'set_pixel')
  bind_image_set_pixelv = api_core.godot_method_bind_get_method('Image', 'set_pixelv')
  bind_image_shrink_x2 = api_core.godot_method_bind_get_method('Image', 'shrink_x2')
  bind_image_srgb_to_linear = api_core.godot_method_bind_get_method('Image', 'srgb_to_linear')
  bind_image_unlock = api_core.godot_method_bind_get_method('Image', 'unlock')

############################Generated class###################################
cdef class Image(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Image")())
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

    api_core.godot_method_bind_ptrcall(bind_image__get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  _set_data(self,  Dictionary data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &data._native
    api_core.godot_method_bind_ptrcall(bind_image__set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  blend_rect(self,  classes.Image.Image src,  Rect2 src_rect,  Vector2 dst):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = src.godot_owner
    args[1] = &src_rect._native
    args[2] = &dst._native
    api_core.godot_method_bind_ptrcall(bind_image_blend_rect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  blend_rect_mask(self,  classes.Image.Image src,  classes.Image.Image mask,  Rect2 src_rect,  Vector2 dst):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = src.godot_owner
    args[1] = mask.godot_owner
    args[2] = &src_rect._native
    args[3] = &dst._native
    api_core.godot_method_bind_ptrcall(bind_image_blend_rect_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  blit_rect(self,  classes.Image.Image src,  Rect2 src_rect,  Vector2 dst):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = src.godot_owner
    args[1] = &src_rect._native
    args[2] = &dst._native
    api_core.godot_method_bind_ptrcall(bind_image_blit_rect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  blit_rect_mask(self,  classes.Image.Image src,  classes.Image.Image mask,  Rect2 src_rect,  Vector2 dst):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = src.godot_owner
    args[1] = mask.godot_owner
    args[2] = &src_rect._native
    args[3] = &dst._native
    api_core.godot_method_bind_ptrcall(bind_image_blit_rect_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  bumpmap_to_normalmap(self,  float bump_scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bump_scale
    api_core.godot_method_bind_ptrcall(bind_image_bumpmap_to_normalmap,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_mipmaps(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_image_clear_mipmaps,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  compress(self,  int mode,  int source,  float lossy_quality):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[3]

    args[0] = &mode
    args[1] = &source
    args[2] = &lossy_quality
    api_core.godot_method_bind_ptrcall(bind_image_compress,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  convert(self,  int format):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &format
    api_core.godot_method_bind_ptrcall(bind_image_convert,self.godot_owner,args,NULL)
    hello('hallo2')
  def  copy_from(self,  classes.Image.Image src):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = src.godot_owner
    api_core.godot_method_bind_ptrcall(bind_image_copy_from,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create(self,  int width,  int height,  bool use_mipmaps,  int format):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &width
    args[1] = &height
    args[2] = &use_mipmaps
    args[3] = &format
    api_core.godot_method_bind_ptrcall(bind_image_create,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create_from_data(self,  int width,  int height,  bool use_mipmaps,  int format,  PoolByteArray data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &width
    args[1] = &height
    args[2] = &use_mipmaps
    args[3] = &format
    args[4] = &data._native
    api_core.godot_method_bind_ptrcall(bind_image_create_from_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  crop(self,  int width,  int height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &width
    args[1] = &height
    api_core.godot_method_bind_ptrcall(bind_image_crop,self.godot_owner,args,NULL)
    hello('hallo2')
  def  decompress(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_decompress,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  detect_alpha(self):
    cdef godot_object *_owner = self.godot_owner

    cdef AlphaMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_detect_alpha,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  expand_x2_hq2x(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_image_expand_x2_hq2x,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  fill(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_image_fill,self.godot_owner,args,NULL)
    hello('hallo2')
  def  fix_alpha_edges(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_image_fix_alpha_edges,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  flip_x(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_image_flip_x,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  flip_y(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_image_flip_y,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  generate_mipmaps(self,  bool renormalize):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &renormalize
    api_core.godot_method_bind_ptrcall(bind_image_generate_mipmaps,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_format(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Format* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_get_format,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_get_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_mipmap_offset(self,  int mipmap):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &mipmap
    api_core.godot_method_bind_ptrcall(bind_image_get_mipmap_offset,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_pixel(self,  int x,  int y):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[2]

    args[0] = &x
    args[1] = &y
    api_core.godot_method_bind_ptrcall(bind_image_get_pixel,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_pixelv(self,  Vector2 src):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &src._native
    api_core.godot_method_bind_ptrcall(bind_image_get_pixelv,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_rect(self,  Rect2 rect):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &rect._native
    api_core.godot_method_bind_ptrcall(bind_image_get_rect,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_get_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_used_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_get_used_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_width(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_get_width,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_mipmaps(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_has_mipmaps,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_compressed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_is_compressed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_empty(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_is_empty,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_invisible(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_is_invisible,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  load(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_image_load,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  load_jpg_from_buffer(self,  PoolByteArray buffer):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &buffer._native
    api_core.godot_method_bind_ptrcall(bind_image_load_jpg_from_buffer,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  load_png_from_buffer(self,  PoolByteArray buffer):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &buffer._native
    api_core.godot_method_bind_ptrcall(bind_image_load_png_from_buffer,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  load_webp_from_buffer(self,  PoolByteArray buffer):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &buffer._native
    api_core.godot_method_bind_ptrcall(bind_image_load_webp_from_buffer,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  lock(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_image_lock,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  normalmap_to_xy(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_image_normalmap_to_xy,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  premultiply_alpha(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_image_premultiply_alpha,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  resize(self,  int width,  int height,  int interpolation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &width
    args[1] = &height
    args[2] = &interpolation
    api_core.godot_method_bind_ptrcall(bind_image_resize,self.godot_owner,args,NULL)
    hello('hallo2')
  def  resize_to_po2(self,  bool square):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &square
    api_core.godot_method_bind_ptrcall(bind_image_resize_to_po2,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rgbe_to_srgb(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_image_rgbe_to_srgb,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  save_exr(self,  String path,  bool grayscale):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &path._native
    args[1] = &grayscale
    api_core.godot_method_bind_ptrcall(bind_image_save_exr,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  save_png(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_image_save_png,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_pixel(self,  int x,  int y,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &x
    args[1] = &y
    args[2] = &color._native
    api_core.godot_method_bind_ptrcall(bind_image_set_pixel,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pixelv(self,  Vector2 dst,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &dst._native
    args[1] = &color._native
    api_core.godot_method_bind_ptrcall(bind_image_set_pixelv,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shrink_x2(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_image_shrink_x2,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  srgb_to_linear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_image_srgb_to_linear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  unlock(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_image_unlock,self.godot_owner,NULL,NULL)
    hello('hallo2')
