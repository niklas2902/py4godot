from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class Texture(Resource):
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
  def  draw(self, canvas_itempositionmodulatetransposenormal_map):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texture_draw,self.godot_owner,[NULL,],NULL)
  def  draw_rect(self, canvas_itemrecttilemodulatetransposenormal_map):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texture_draw_rect,self.godot_owner,[NULL,],NULL)
  def  draw_rect_region(self, canvas_itemrectsrc_rectmodulatetransposenormal_mapclip_uv):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texture_draw_rect_region,self.godot_owner,[NULL,],NULL)
  def  get_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Image ret
    api_core.godot_method_bind_ptrcall(bind_texture_get_data,self.godot_owner,[NULL,],&ret)
  def  get_flags(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_texture_get_flags,self.godot_owner,[NULL,],&ret)
  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_texture_get_height,self.godot_owner,[NULL,],&ret)
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_texture_get_size,self.godot_owner,[NULL,],&ret)
  def  get_width(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_texture_get_width,self.godot_owner,[NULL,],&ret)
  def  has_alpha(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_texture_has_alpha,self.godot_owner,[NULL,],&ret)
  def  set_flags(self, flags):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texture_set_flags,self.godot_owner,[NULL,],NULL)
