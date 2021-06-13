
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
cimport classes.BitMap
cimport classes.Texture
cimport classes.Texture
cimport classes.Texture
cimport classes.Texture
cimport classes.Texture
cimport classes.BaseButton 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_texturebutton_get_click_mask
cdef godot_method_bind *bind_texturebutton_get_disabled_texture
cdef godot_method_bind *bind_texturebutton_get_expand
cdef godot_method_bind *bind_texturebutton_get_focused_texture
cdef godot_method_bind *bind_texturebutton_get_hover_texture
cdef godot_method_bind *bind_texturebutton_get_normal_texture
cdef godot_method_bind *bind_texturebutton_get_pressed_texture
cdef godot_method_bind *bind_texturebutton_get_stretch_mode
cdef godot_method_bind *bind_texturebutton_set_click_mask
cdef godot_method_bind *bind_texturebutton_set_disabled_texture
cdef godot_method_bind *bind_texturebutton_set_expand
cdef godot_method_bind *bind_texturebutton_set_focused_texture
cdef godot_method_bind *bind_texturebutton_set_hover_texture
cdef godot_method_bind *bind_texturebutton_set_normal_texture
cdef godot_method_bind *bind_texturebutton_set_pressed_texture
cdef godot_method_bind *bind_texturebutton_set_stretch_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_texturebutton_get_click_mask = api_core.godot_method_bind_get_method('TextureButton', 'get_click_mask')
  bind_texturebutton_get_disabled_texture = api_core.godot_method_bind_get_method('TextureButton', 'get_disabled_texture')
  bind_texturebutton_get_expand = api_core.godot_method_bind_get_method('TextureButton', 'get_expand')
  bind_texturebutton_get_focused_texture = api_core.godot_method_bind_get_method('TextureButton', 'get_focused_texture')
  bind_texturebutton_get_hover_texture = api_core.godot_method_bind_get_method('TextureButton', 'get_hover_texture')
  bind_texturebutton_get_normal_texture = api_core.godot_method_bind_get_method('TextureButton', 'get_normal_texture')
  bind_texturebutton_get_pressed_texture = api_core.godot_method_bind_get_method('TextureButton', 'get_pressed_texture')
  bind_texturebutton_get_stretch_mode = api_core.godot_method_bind_get_method('TextureButton', 'get_stretch_mode')
  bind_texturebutton_set_click_mask = api_core.godot_method_bind_get_method('TextureButton', 'set_click_mask')
  bind_texturebutton_set_disabled_texture = api_core.godot_method_bind_get_method('TextureButton', 'set_disabled_texture')
  bind_texturebutton_set_expand = api_core.godot_method_bind_get_method('TextureButton', 'set_expand')
  bind_texturebutton_set_focused_texture = api_core.godot_method_bind_get_method('TextureButton', 'set_focused_texture')
  bind_texturebutton_set_hover_texture = api_core.godot_method_bind_get_method('TextureButton', 'set_hover_texture')
  bind_texturebutton_set_normal_texture = api_core.godot_method_bind_get_method('TextureButton', 'set_normal_texture')
  bind_texturebutton_set_pressed_texture = api_core.godot_method_bind_get_method('TextureButton', 'set_pressed_texture')
  bind_texturebutton_set_stretch_mode = api_core.godot_method_bind_get_method('TextureButton', 'set_stretch_mode')

############################Generated class###################################
cdef class TextureButton(classes.BaseButton.BaseButton):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TextureButton")())
##################################Generated Properties#########################################
  @property
  def expand(self): 
    return self.get_expand()
  @expand.setter 
  def expand(self,value): 
    self.set_expand(value)
  @property
  def stretch_mode(self): 
    return self.get_stretch_mode()
  @stretch_mode.setter 
  def stretch_mode(self,value): 
    self.set_stretch_mode(value)
  @property
  def texture_click_mask(self): 
    return self.get_texture_click_mask()
  @texture_click_mask.setter 
  def texture_click_mask(self,value): 
    self.set_texture_click_mask(value)
  @property
  def texture_disabled(self): 
    return self.get_texture_disabled()
  @texture_disabled.setter 
  def texture_disabled(self,value): 
    self.set_texture_disabled(value)
  @property
  def texture_focused(self): 
    return self.get_texture_focused()
  @texture_focused.setter 
  def texture_focused(self,value): 
    self.set_texture_focused(value)
  @property
  def texture_hover(self): 
    return self.get_texture_hover()
  @texture_hover.setter 
  def texture_hover(self,value): 
    self.set_texture_hover(value)
  @property
  def texture_normal(self): 
    return self.get_texture_normal()
  @texture_normal.setter 
  def texture_normal(self,value): 
    self.set_texture_normal(value)
  @property
  def texture_pressed(self): 
    return self.get_texture_pressed()
  @texture_pressed.setter 
  def texture_pressed(self,value): 
    self.set_texture_pressed(value)

##################################Generated Methods#########################################
  def  get_click_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_click_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_disabled_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_disabled_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_expand(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_expand,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_focused_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_focused_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_hover_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_hover_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_normal_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_normal_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_pressed_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_pressed_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_stretch_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef TextureButton_StretchMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_stretch_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_click_mask(self,  classes.BitMap.BitMap mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = mask.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_click_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_disabled_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_disabled_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_expand(self,  bool p_expand):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &p_expand
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_expand,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_focused_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_focused_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hover_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_hover_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_normal_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_normal_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pressed_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_pressed_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stretch_mode(self,  int p_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &p_mode
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_stretch_mode,self.godot_owner,args,NULL)
    hello('hallo2')
