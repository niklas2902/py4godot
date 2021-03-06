from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_theme__emit_theme_changed
cdef godot_method_bind *bind_theme_clear
cdef godot_method_bind *bind_theme_clear_color
cdef godot_method_bind *bind_theme_clear_constant
cdef godot_method_bind *bind_theme_clear_font
cdef godot_method_bind *bind_theme_clear_icon
cdef godot_method_bind *bind_theme_clear_stylebox
cdef godot_method_bind *bind_theme_copy_default_theme
cdef godot_method_bind *bind_theme_copy_theme
cdef godot_method_bind *bind_theme_get_color
cdef godot_method_bind *bind_theme_get_color_list
cdef godot_method_bind *bind_theme_get_constant
cdef godot_method_bind *bind_theme_get_constant_list
cdef godot_method_bind *bind_theme_get_default_font
cdef godot_method_bind *bind_theme_get_font
cdef godot_method_bind *bind_theme_get_font_list
cdef godot_method_bind *bind_theme_get_icon
cdef godot_method_bind *bind_theme_get_icon_list
cdef godot_method_bind *bind_theme_get_stylebox
cdef godot_method_bind *bind_theme_get_stylebox_list
cdef godot_method_bind *bind_theme_get_stylebox_types
cdef godot_method_bind *bind_theme_get_type_list
cdef godot_method_bind *bind_theme_has_color
cdef godot_method_bind *bind_theme_has_constant
cdef godot_method_bind *bind_theme_has_font
cdef godot_method_bind *bind_theme_has_icon
cdef godot_method_bind *bind_theme_has_stylebox
cdef godot_method_bind *bind_theme_set_color
cdef godot_method_bind *bind_theme_set_constant
cdef godot_method_bind *bind_theme_set_default_font
cdef godot_method_bind *bind_theme_set_font
cdef godot_method_bind *bind_theme_set_icon
cdef godot_method_bind *bind_theme_set_stylebox
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_theme__emit_theme_changed = api_core.godot_method_bind_get_method('Theme', '_emit_theme_changed')
  bind_theme_clear = api_core.godot_method_bind_get_method('Theme', 'clear')
  bind_theme_clear_color = api_core.godot_method_bind_get_method('Theme', 'clear_color')
  bind_theme_clear_constant = api_core.godot_method_bind_get_method('Theme', 'clear_constant')
  bind_theme_clear_font = api_core.godot_method_bind_get_method('Theme', 'clear_font')
  bind_theme_clear_icon = api_core.godot_method_bind_get_method('Theme', 'clear_icon')
  bind_theme_clear_stylebox = api_core.godot_method_bind_get_method('Theme', 'clear_stylebox')
  bind_theme_copy_default_theme = api_core.godot_method_bind_get_method('Theme', 'copy_default_theme')
  bind_theme_copy_theme = api_core.godot_method_bind_get_method('Theme', 'copy_theme')
  bind_theme_get_color = api_core.godot_method_bind_get_method('Theme', 'get_color')
  bind_theme_get_color_list = api_core.godot_method_bind_get_method('Theme', 'get_color_list')
  bind_theme_get_constant = api_core.godot_method_bind_get_method('Theme', 'get_constant')
  bind_theme_get_constant_list = api_core.godot_method_bind_get_method('Theme', 'get_constant_list')
  bind_theme_get_default_font = api_core.godot_method_bind_get_method('Theme', 'get_default_font')
  bind_theme_get_font = api_core.godot_method_bind_get_method('Theme', 'get_font')
  bind_theme_get_font_list = api_core.godot_method_bind_get_method('Theme', 'get_font_list')
  bind_theme_get_icon = api_core.godot_method_bind_get_method('Theme', 'get_icon')
  bind_theme_get_icon_list = api_core.godot_method_bind_get_method('Theme', 'get_icon_list')
  bind_theme_get_stylebox = api_core.godot_method_bind_get_method('Theme', 'get_stylebox')
  bind_theme_get_stylebox_list = api_core.godot_method_bind_get_method('Theme', 'get_stylebox_list')
  bind_theme_get_stylebox_types = api_core.godot_method_bind_get_method('Theme', 'get_stylebox_types')
  bind_theme_get_type_list = api_core.godot_method_bind_get_method('Theme', 'get_type_list')
  bind_theme_has_color = api_core.godot_method_bind_get_method('Theme', 'has_color')
  bind_theme_has_constant = api_core.godot_method_bind_get_method('Theme', 'has_constant')
  bind_theme_has_font = api_core.godot_method_bind_get_method('Theme', 'has_font')
  bind_theme_has_icon = api_core.godot_method_bind_get_method('Theme', 'has_icon')
  bind_theme_has_stylebox = api_core.godot_method_bind_get_method('Theme', 'has_stylebox')
  bind_theme_set_color = api_core.godot_method_bind_get_method('Theme', 'set_color')
  bind_theme_set_constant = api_core.godot_method_bind_get_method('Theme', 'set_constant')
  bind_theme_set_default_font = api_core.godot_method_bind_get_method('Theme', 'set_default_font')
  bind_theme_set_font = api_core.godot_method_bind_get_method('Theme', 'set_font')
  bind_theme_set_icon = api_core.godot_method_bind_get_method('Theme', 'set_icon')
  bind_theme_set_stylebox = api_core.godot_method_bind_get_method('Theme', 'set_stylebox')

############################Generated class###################################
cdef class Theme(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Theme")())
##################################Generated Properties#########################################
  @property
  def default_font(self): 
    return self.get_default_font()
  @default_font.setter 
  def default_font(self,value): 
    self.set_default_font(value)

##################################Generated Methods#########################################
  def  _emit_theme_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme__emit_theme_changed,self.godot_owner,[NULL,],NULL)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_clear,self.godot_owner,[NULL,],NULL)
  def  clear_color(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_clear_color,self.godot_owner,[NULL,],NULL)
  def  clear_constant(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_clear_constant,self.godot_owner,[NULL,],NULL)
  def  clear_font(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_clear_font,self.godot_owner,[NULL,],NULL)
  def  clear_icon(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_clear_icon,self.godot_owner,[NULL,],NULL)
  def  clear_stylebox(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_clear_stylebox,self.godot_owner,[NULL,],NULL)
  def  copy_default_theme(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_copy_default_theme,self.godot_owner,[NULL,],NULL)
  def  copy_theme(self, other):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_copy_theme,self.godot_owner,[NULL,],NULL)
  def  get_color(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_color,self.godot_owner,[NULL,],&ret)
  def  get_color_list(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_color_list,self.godot_owner,[NULL,],&ret)
  def  get_constant(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_constant,self.godot_owner,[NULL,],&ret)
  def  get_constant_list(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_constant_list,self.godot_owner,[NULL,],&ret)
  def  get_default_font(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Font ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_default_font,self.godot_owner,[NULL,],&ret)
  def  get_font(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef Font ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_font,self.godot_owner,[NULL,],&ret)
  def  get_font_list(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_font_list,self.godot_owner,[NULL,],&ret)
  def  get_icon(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_icon,self.godot_owner,[NULL,],&ret)
  def  get_icon_list(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_icon_list,self.godot_owner,[NULL,],&ret)
  def  get_stylebox(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef StyleBox ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_stylebox,self.godot_owner,[NULL,],&ret)
  def  get_stylebox_list(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_stylebox_list,self.godot_owner,[NULL,],&ret)
  def  get_stylebox_types(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_stylebox_types,self.godot_owner,[NULL,],&ret)
  def  get_type_list(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_theme_get_type_list,self.godot_owner,[NULL,],&ret)
  def  has_color(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_theme_has_color,self.godot_owner,[NULL,],&ret)
  def  has_constant(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_theme_has_constant,self.godot_owner,[NULL,],&ret)
  def  has_font(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_theme_has_font,self.godot_owner,[NULL,],&ret)
  def  has_icon(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_theme_has_icon,self.godot_owner,[NULL,],&ret)
  def  has_stylebox(self, nametype):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_theme_has_stylebox,self.godot_owner,[NULL,],&ret)
  def  set_color(self, nametypecolor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_set_color,self.godot_owner,[NULL,],NULL)
  def  set_constant(self, nametypeconstant):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_set_constant,self.godot_owner,[NULL,],NULL)
  def  set_default_font(self, font):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_set_default_font,self.godot_owner,[NULL,],NULL)
  def  set_font(self, nametypefont):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_set_font,self.godot_owner,[NULL,],NULL)
  def  set_icon(self, nametypetexture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_set_icon,self.godot_owner,[NULL,],NULL)
  def  set_stylebox(self, nametypetexture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_set_stylebox,self.godot_owner,[NULL,],NULL)
