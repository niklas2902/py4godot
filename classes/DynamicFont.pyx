
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
cimport classes.DynamicFontData
cimport classes.DynamicFontData
cimport classes.DynamicFontData
cimport classes.Font 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_dynamicfont_add_fallback
cdef godot_method_bind *bind_dynamicfont_get_fallback
cdef godot_method_bind *bind_dynamicfont_get_fallback_count
cdef godot_method_bind *bind_dynamicfont_get_font_data
cdef godot_method_bind *bind_dynamicfont_get_outline_color
cdef godot_method_bind *bind_dynamicfont_get_outline_size
cdef godot_method_bind *bind_dynamicfont_get_size
cdef godot_method_bind *bind_dynamicfont_get_spacing
cdef godot_method_bind *bind_dynamicfont_get_use_filter
cdef godot_method_bind *bind_dynamicfont_get_use_mipmaps
cdef godot_method_bind *bind_dynamicfont_remove_fallback
cdef godot_method_bind *bind_dynamicfont_set_fallback
cdef godot_method_bind *bind_dynamicfont_set_font_data
cdef godot_method_bind *bind_dynamicfont_set_outline_color
cdef godot_method_bind *bind_dynamicfont_set_outline_size
cdef godot_method_bind *bind_dynamicfont_set_size
cdef godot_method_bind *bind_dynamicfont_set_spacing
cdef godot_method_bind *bind_dynamicfont_set_use_filter
cdef godot_method_bind *bind_dynamicfont_set_use_mipmaps
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_dynamicfont_add_fallback = api_core.godot_method_bind_get_method('DynamicFont', 'add_fallback')
  bind_dynamicfont_get_fallback = api_core.godot_method_bind_get_method('DynamicFont', 'get_fallback')
  bind_dynamicfont_get_fallback_count = api_core.godot_method_bind_get_method('DynamicFont', 'get_fallback_count')
  bind_dynamicfont_get_font_data = api_core.godot_method_bind_get_method('DynamicFont', 'get_font_data')
  bind_dynamicfont_get_outline_color = api_core.godot_method_bind_get_method('DynamicFont', 'get_outline_color')
  bind_dynamicfont_get_outline_size = api_core.godot_method_bind_get_method('DynamicFont', 'get_outline_size')
  bind_dynamicfont_get_size = api_core.godot_method_bind_get_method('DynamicFont', 'get_size')
  bind_dynamicfont_get_spacing = api_core.godot_method_bind_get_method('DynamicFont', 'get_spacing')
  bind_dynamicfont_get_use_filter = api_core.godot_method_bind_get_method('DynamicFont', 'get_use_filter')
  bind_dynamicfont_get_use_mipmaps = api_core.godot_method_bind_get_method('DynamicFont', 'get_use_mipmaps')
  bind_dynamicfont_remove_fallback = api_core.godot_method_bind_get_method('DynamicFont', 'remove_fallback')
  bind_dynamicfont_set_fallback = api_core.godot_method_bind_get_method('DynamicFont', 'set_fallback')
  bind_dynamicfont_set_font_data = api_core.godot_method_bind_get_method('DynamicFont', 'set_font_data')
  bind_dynamicfont_set_outline_color = api_core.godot_method_bind_get_method('DynamicFont', 'set_outline_color')
  bind_dynamicfont_set_outline_size = api_core.godot_method_bind_get_method('DynamicFont', 'set_outline_size')
  bind_dynamicfont_set_size = api_core.godot_method_bind_get_method('DynamicFont', 'set_size')
  bind_dynamicfont_set_spacing = api_core.godot_method_bind_get_method('DynamicFont', 'set_spacing')
  bind_dynamicfont_set_use_filter = api_core.godot_method_bind_get_method('DynamicFont', 'set_use_filter')
  bind_dynamicfont_set_use_mipmaps = api_core.godot_method_bind_get_method('DynamicFont', 'set_use_mipmaps')

############################Generated class###################################
cdef class DynamicFont(classes.Font.Font):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("DynamicFont")())
##################################Generated Properties#########################################
  @property
  def extra_spacing_bottom(self): 
    return self.get_extra_spacing_bottom()
  @extra_spacing_bottom.setter 
  def extra_spacing_bottom(self,value): 
    self.set_extra_spacing_bottom(value)
  @property
  def extra_spacing_char(self): 
    return self.get_extra_spacing_char()
  @extra_spacing_char.setter 
  def extra_spacing_char(self,value): 
    self.set_extra_spacing_char(value)
  @property
  def extra_spacing_space(self): 
    return self.get_extra_spacing_space()
  @extra_spacing_space.setter 
  def extra_spacing_space(self,value): 
    self.set_extra_spacing_space(value)
  @property
  def extra_spacing_top(self): 
    return self.get_extra_spacing_top()
  @extra_spacing_top.setter 
  def extra_spacing_top(self,value): 
    self.set_extra_spacing_top(value)
  @property
  def font_data(self): 
    return self.get_font_data()
  @font_data.setter 
  def font_data(self,value): 
    self.set_font_data(value)
  @property
  def outline_color(self): 
    return self.get_outline_color()
  @outline_color.setter 
  def outline_color(self,value): 
    self.set_outline_color(value)
  @property
  def outline_size(self): 
    return self.get_outline_size()
  @outline_size.setter 
  def outline_size(self,value): 
    self.set_outline_size(value)
  @property
  def size(self): 
    return self.get_size()
  @size.setter 
  def size(self,value): 
    self.set_size(value)
  @property
  def use_filter(self): 
    return self.get_use_filter()
  @use_filter.setter 
  def use_filter(self,value): 
    self.set_use_filter(value)
  @property
  def use_mipmaps(self): 
    return self.get_use_mipmaps()
  @use_mipmaps.setter 
  def use_mipmaps(self,value): 
    self.set_use_mipmaps(value)

##################################Generated Methods#########################################
  def  add_fallback(self,  classes.DynamicFontData.DynamicFontData data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = data.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_add_fallback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_fallback(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_fallback,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_fallback_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_fallback_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_font_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_font_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_outline_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_outline_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_outline_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_outline_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_spacing(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_spacing,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_use_filter(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_use_filter,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_use_mipmaps(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_use_mipmaps,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_fallback(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_remove_fallback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fallback(self,  int idx,  classes.DynamicFontData.DynamicFontData data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = data.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_fallback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_font_data(self,  classes.DynamicFontData.DynamicFontData data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = data.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_font_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_outline_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_outline_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_outline_size(self,  int size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_outline_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_size(self,  int data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &data
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_spacing(self,  int type,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &type
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_spacing,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_filter(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_use_filter,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_mipmaps(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_use_mipmaps,self.godot_owner,args,NULL)
    hello('hallo2')
