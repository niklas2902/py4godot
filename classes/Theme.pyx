
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
cimport classes.Theme
cimport classes.Font
cimport classes.Font
cimport classes.Texture
cimport classes.StyleBox
cimport classes.Resource 

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
cdef class Theme(classes.Resource.Resource):
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

    api_core.godot_method_bind_ptrcall(bind_theme__emit_theme_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_theme_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  clear_color(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_clear_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_constant(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_clear_constant,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_font(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_clear_font,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_icon(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_clear_icon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_stylebox(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_clear_stylebox,self.godot_owner,args,NULL)
    hello('hallo2')
  def  copy_default_theme(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_theme_copy_default_theme,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  copy_theme(self,  classes.Theme.Theme other):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = other.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_copy_theme,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_color(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_get_color,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_color_list(self,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    cdef void *args[1]

    args[0] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_get_color_list,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_constant(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_get_constant,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_constant_list(self,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    cdef void *args[1]

    args[0] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_get_constant_list,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_default_font(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_theme_get_default_font,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_font(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_get_font,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_font_list(self,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    cdef void *args[1]

    args[0] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_get_font_list,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_icon(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_get_icon,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_icon_list(self,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    cdef void *args[1]

    args[0] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_get_icon_list,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_stylebox(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_get_stylebox,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_stylebox_list(self,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    cdef void *args[1]

    args[0] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_get_stylebox_list,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_stylebox_types(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_theme_get_stylebox_types,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_type_list(self,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    cdef void *args[1]

    args[0] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_get_type_list,self.godot_owner,args,&ret)
    hello('hallo2')
  def  has_color(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_has_color,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_constant(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_has_constant,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_font(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_has_font,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_icon(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_has_icon,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_stylebox(self,  String name,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &type._native
    api_core.godot_method_bind_ptrcall(bind_theme_has_stylebox,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_color(self,  String name,  String type,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &name._native
    args[1] = &type._native
    args[2] = &color._native
    api_core.godot_method_bind_ptrcall(bind_theme_set_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_constant(self,  String name,  String type,  int constant):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &name._native
    args[1] = &type._native
    args[2] = &constant
    api_core.godot_method_bind_ptrcall(bind_theme_set_constant,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_default_font(self,  classes.Font.Font font):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = font.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_set_default_font,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_font(self,  String name,  String type,  classes.Font.Font font):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &name._native
    args[1] = &type._native
    args[2] = font.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_set_font,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_icon(self,  String name,  String type,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &name._native
    args[1] = &type._native
    args[2] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_set_icon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stylebox(self,  String name,  String type,  classes.StyleBox.StyleBox texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &name._native
    args[1] = &type._native
    args[2] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_theme_set_stylebox,self.godot_owner,args,NULL)
    hello('hallo2')
