
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_font_draw
cdef godot_method_bind *bind_font_draw_char
cdef godot_method_bind *bind_font_get_ascent
cdef godot_method_bind *bind_font_get_descent
cdef godot_method_bind *bind_font_get_height
cdef godot_method_bind *bind_font_get_string_size
cdef godot_method_bind *bind_font_get_wordwrap_string_size
cdef godot_method_bind *bind_font_has_outline
cdef godot_method_bind *bind_font_is_distance_field_hint
cdef godot_method_bind *bind_font_update_changes
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_font_draw = api_core.godot_method_bind_get_method('Font', 'draw')
  bind_font_draw_char = api_core.godot_method_bind_get_method('Font', 'draw_char')
  bind_font_get_ascent = api_core.godot_method_bind_get_method('Font', 'get_ascent')
  bind_font_get_descent = api_core.godot_method_bind_get_method('Font', 'get_descent')
  bind_font_get_height = api_core.godot_method_bind_get_method('Font', 'get_height')
  bind_font_get_string_size = api_core.godot_method_bind_get_method('Font', 'get_string_size')
  bind_font_get_wordwrap_string_size = api_core.godot_method_bind_get_method('Font', 'get_wordwrap_string_size')
  bind_font_has_outline = api_core.godot_method_bind_get_method('Font', 'has_outline')
  bind_font_is_distance_field_hint = api_core.godot_method_bind_get_method('Font', 'is_distance_field_hint')
  bind_font_update_changes = api_core.godot_method_bind_get_method('Font', 'update_changes')

############################Generated class###################################
cdef class Font(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Font")())
##################################Generated Methods#########################################
  def  draw(self,  RID canvas_item,  Vector2 position,  String string,  Color modulate,  int clip_w,  Color outline_modulate):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[6]

    args[0] = &canvas_item._native
    args[1] = &position._native
    args[2] = &string._native
    args[3] = &modulate._native
    args[4] = &clip_w
    args[5] = &outline_modulate._native
    api_core.godot_method_bind_ptrcall(bind_font_draw,self.godot_owner,args,NULL)
    hello('hallo2')
  def  draw_char(self,  RID canvas_item,  Vector2 position,  int char,  int next,  Color modulate,  bool outline):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[6]

    args[0] = &canvas_item._native
    args[1] = &position._native
    args[2] = &char
    args[3] = &next
    args[4] = &modulate._native
    args[5] = &outline
    api_core.godot_method_bind_ptrcall(bind_font_draw_char,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ascent(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_font_get_ascent,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_descent(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_font_get_descent,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_font_get_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_string_size(self,  String string):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &string._native
    api_core.godot_method_bind_ptrcall(bind_font_get_string_size,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_wordwrap_string_size(self,  String string,  float width):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[2]

    args[0] = &string._native
    args[1] = &width
    api_core.godot_method_bind_ptrcall(bind_font_get_wordwrap_string_size,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  has_outline(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_font_has_outline,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_distance_field_hint(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_font_is_distance_field_hint,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  update_changes(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_font_update_changes,self.godot_owner,NULL,NULL)
    hello('hallo2')
