
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
cimport classes.BaseButton 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_button_get_button_icon
cdef godot_method_bind *bind_button_get_clip_text
cdef godot_method_bind *bind_button_get_text
cdef godot_method_bind *bind_button_get_text_align
cdef godot_method_bind *bind_button_is_expand_icon
cdef godot_method_bind *bind_button_is_flat
cdef godot_method_bind *bind_button_set_button_icon
cdef godot_method_bind *bind_button_set_clip_text
cdef godot_method_bind *bind_button_set_expand_icon
cdef godot_method_bind *bind_button_set_flat
cdef godot_method_bind *bind_button_set_text
cdef godot_method_bind *bind_button_set_text_align
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_button_get_button_icon = api_core.godot_method_bind_get_method('Button', 'get_button_icon')
  bind_button_get_clip_text = api_core.godot_method_bind_get_method('Button', 'get_clip_text')
  bind_button_get_text = api_core.godot_method_bind_get_method('Button', 'get_text')
  bind_button_get_text_align = api_core.godot_method_bind_get_method('Button', 'get_text_align')
  bind_button_is_expand_icon = api_core.godot_method_bind_get_method('Button', 'is_expand_icon')
  bind_button_is_flat = api_core.godot_method_bind_get_method('Button', 'is_flat')
  bind_button_set_button_icon = api_core.godot_method_bind_get_method('Button', 'set_button_icon')
  bind_button_set_clip_text = api_core.godot_method_bind_get_method('Button', 'set_clip_text')
  bind_button_set_expand_icon = api_core.godot_method_bind_get_method('Button', 'set_expand_icon')
  bind_button_set_flat = api_core.godot_method_bind_get_method('Button', 'set_flat')
  bind_button_set_text = api_core.godot_method_bind_get_method('Button', 'set_text')
  bind_button_set_text_align = api_core.godot_method_bind_get_method('Button', 'set_text_align')

############################Generated class###################################
cdef class Button(classes.BaseButton.BaseButton):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Button")())
##################################Generated Properties#########################################
  @property
  def align(self): 
    return self.get_align()
  @align.setter 
  def align(self,value): 
    self.set_align(value)
  @property
  def clip_text(self): 
    return self.get_clip_text()
  @clip_text.setter 
  def clip_text(self,value): 
    self.set_clip_text(value)
  @property
  def expand_icon(self): 
    return self.get_expand_icon()
  @expand_icon.setter 
  def expand_icon(self,value): 
    self.set_expand_icon(value)
  @property
  def flat(self): 
    return self.get_flat()
  @flat.setter 
  def flat(self,value): 
    self.set_flat(value)
  @property
  def icon(self): 
    return self.get_icon()
  @icon.setter 
  def icon(self,value): 
    self.set_icon(value)
  @property
  def text(self): 
    return self.get_text()
  @text.setter 
  def text(self,value): 
    self.set_text(value)

##################################Generated Methods#########################################
  def  get_button_icon(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_button_get_button_icon,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_clip_text(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_button_get_clip_text,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_text(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_button_get_text,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_text_align(self):
    cdef godot_object *_owner = self.godot_owner

    cdef TextAlign* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_button_get_text_align,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_expand_icon(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_button_is_expand_icon,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_flat(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_button_is_flat,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_button_icon(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_button_set_button_icon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_clip_text(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_button_set_clip_text,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_expand_icon(self,  bool arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_button_set_expand_icon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flat(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_button_set_flat,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_text(self,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &text._native
    api_core.godot_method_bind_ptrcall(bind_button_set_text,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_text_align(self,  int align):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &align
    api_core.godot_method_bind_ptrcall(bind_button_set_text_align,self.godot_owner,args,NULL)
    hello('hallo2')
