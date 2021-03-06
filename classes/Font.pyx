from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class Font(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Font")())
##################################Generated Methods#########################################
  def  draw(self, canvas_itempositionstringmodulateclip_woutline_modulate):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_font_draw,self.godot_owner,[NULL,],NULL)
  def  draw_char(self, canvas_itempositioncharnextmodulateoutline):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_font_draw_char,self.godot_owner,[NULL,],&ret)
  def  get_ascent(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_font_get_ascent,self.godot_owner,[NULL,],&ret)
  def  get_descent(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_font_get_descent,self.godot_owner,[NULL,],&ret)
  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_font_get_height,self.godot_owner,[NULL,],&ret)
  def  get_string_size(self, string):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_font_get_string_size,self.godot_owner,[NULL,],&ret)
  def  get_wordwrap_string_size(self, stringwidth):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_font_get_wordwrap_string_size,self.godot_owner,[NULL,],&ret)
  def  has_outline(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_font_has_outline,self.godot_owner,[NULL,],&ret)
  def  is_distance_field_hint(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_font_is_distance_field_hint,self.godot_owner,[NULL,],&ret)
  def  update_changes(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_font_update_changes,self.godot_owner,[NULL,],NULL)
