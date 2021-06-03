
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
cimport classes.Texture
cimport classes.Texture
cimport classes.Texture
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_texture_draw
cdef godot_method_bind *bind_texture_draw_rect
cdef godot_method_bind *bind_texture_draw_rect_region
cdef godot_method_bind *bind_texture_get_data
cdef godot_method_bind *bind_texture_get_flags
cdef godot_method_bind *bind_texture_get_height
cdef godot_method_bind *bind_texture_get_size
cdef godot_method_bind *bind_texture_get_width
cdef godot_method_bind *bind_texture_has_alpha
cdef godot_method_bind *bind_texture_set_flags
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_texture_draw = api_core.godot_method_bind_get_method('Texture', 'draw')
  bind_texture_draw_rect = api_core.godot_method_bind_get_method('Texture', 'draw_rect')
  bind_texture_draw_rect_region = api_core.godot_method_bind_get_method('Texture', 'draw_rect_region')
  bind_texture_get_data = api_core.godot_method_bind_get_method('Texture', 'get_data')
  bind_texture_get_flags = api_core.godot_method_bind_get_method('Texture', 'get_flags')
  bind_texture_get_height = api_core.godot_method_bind_get_method('Texture', 'get_height')
  bind_texture_get_size = api_core.godot_method_bind_get_method('Texture', 'get_size')
  bind_texture_get_width = api_core.godot_method_bind_get_method('Texture', 'get_width')
  bind_texture_has_alpha = api_core.godot_method_bind_get_method('Texture', 'has_alpha')
  bind_texture_set_flags = api_core.godot_method_bind_get_method('Texture', 'set_flags')

############################Generated class###################################
cdef class Texture(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Texture")())
##################################Generated Properties#########################################
  @property
  def flags(self): 
    return self.get_flags()
  @flags.setter 
  def flags(self,value): 
    self.set_flags(value)

##################################Generated Methods#########################################
  def  draw(self,  RID canvas_item,  Vector2 position,  Color modulate,  bool transpose,  classes.Texture.Texture normal_map):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &canvas_item._native
    args[1] = &position._native
    args[2] = &modulate._native
    args[3] = &transpose
    args[4] = normal_map.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texture_draw,self.godot_owner,args,NULL)
    hello('hallo2')
  def  draw_rect(self,  RID canvas_item,  Rect2 rect,  bool tile,  Color modulate,  bool transpose,  classes.Texture.Texture normal_map):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[6]

    args[0] = &canvas_item._native
    args[1] = &rect._native
    args[2] = &tile
    args[3] = &modulate._native
    args[4] = &transpose
    args[5] = normal_map.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texture_draw_rect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  draw_rect_region(self,  RID canvas_item,  Rect2 rect,  Rect2 src_rect,  Color modulate,  bool transpose,  classes.Texture.Texture normal_map,  bool clip_uv):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[7]

    args[0] = &canvas_item._native
    args[1] = &rect._native
    args[2] = &src_rect._native
    args[3] = &modulate._native
    args[4] = &transpose
    args[5] = normal_map.godot_owner
    args[6] = &clip_uv
    api_core.godot_method_bind_ptrcall(bind_texture_draw_rect_region,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texture_get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_flags(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texture_get_flags,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texture_get_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texture_get_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_width(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texture_get_width,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_alpha(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texture_has_alpha,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_flags(self,  int flags):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flags
    api_core.godot_method_bind_ptrcall(bind_texture_set_flags,self.godot_owner,args,NULL)
    hello('hallo2')
