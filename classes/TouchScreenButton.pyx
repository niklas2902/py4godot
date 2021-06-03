
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
cimport classes.InputEvent
cimport classes.BitMap
cimport classes.Shape2D
cimport classes.Texture
cimport classes.Texture
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_touchscreenbutton__input
cdef godot_method_bind *bind_touchscreenbutton_get_action
cdef godot_method_bind *bind_touchscreenbutton_get_bitmask
cdef godot_method_bind *bind_touchscreenbutton_get_shape
cdef godot_method_bind *bind_touchscreenbutton_get_texture
cdef godot_method_bind *bind_touchscreenbutton_get_texture_pressed
cdef godot_method_bind *bind_touchscreenbutton_get_visibility_mode
cdef godot_method_bind *bind_touchscreenbutton_is_passby_press_enabled
cdef godot_method_bind *bind_touchscreenbutton_is_pressed
cdef godot_method_bind *bind_touchscreenbutton_is_shape_centered
cdef godot_method_bind *bind_touchscreenbutton_is_shape_visible
cdef godot_method_bind *bind_touchscreenbutton_set_action
cdef godot_method_bind *bind_touchscreenbutton_set_bitmask
cdef godot_method_bind *bind_touchscreenbutton_set_passby_press
cdef godot_method_bind *bind_touchscreenbutton_set_shape
cdef godot_method_bind *bind_touchscreenbutton_set_shape_centered
cdef godot_method_bind *bind_touchscreenbutton_set_shape_visible
cdef godot_method_bind *bind_touchscreenbutton_set_texture
cdef godot_method_bind *bind_touchscreenbutton_set_texture_pressed
cdef godot_method_bind *bind_touchscreenbutton_set_visibility_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_touchscreenbutton__input = api_core.godot_method_bind_get_method('TouchScreenButton', '_input')
  bind_touchscreenbutton_get_action = api_core.godot_method_bind_get_method('TouchScreenButton', 'get_action')
  bind_touchscreenbutton_get_bitmask = api_core.godot_method_bind_get_method('TouchScreenButton', 'get_bitmask')
  bind_touchscreenbutton_get_shape = api_core.godot_method_bind_get_method('TouchScreenButton', 'get_shape')
  bind_touchscreenbutton_get_texture = api_core.godot_method_bind_get_method('TouchScreenButton', 'get_texture')
  bind_touchscreenbutton_get_texture_pressed = api_core.godot_method_bind_get_method('TouchScreenButton', 'get_texture_pressed')
  bind_touchscreenbutton_get_visibility_mode = api_core.godot_method_bind_get_method('TouchScreenButton', 'get_visibility_mode')
  bind_touchscreenbutton_is_passby_press_enabled = api_core.godot_method_bind_get_method('TouchScreenButton', 'is_passby_press_enabled')
  bind_touchscreenbutton_is_pressed = api_core.godot_method_bind_get_method('TouchScreenButton', 'is_pressed')
  bind_touchscreenbutton_is_shape_centered = api_core.godot_method_bind_get_method('TouchScreenButton', 'is_shape_centered')
  bind_touchscreenbutton_is_shape_visible = api_core.godot_method_bind_get_method('TouchScreenButton', 'is_shape_visible')
  bind_touchscreenbutton_set_action = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_action')
  bind_touchscreenbutton_set_bitmask = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_bitmask')
  bind_touchscreenbutton_set_passby_press = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_passby_press')
  bind_touchscreenbutton_set_shape = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_shape')
  bind_touchscreenbutton_set_shape_centered = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_shape_centered')
  bind_touchscreenbutton_set_shape_visible = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_shape_visible')
  bind_touchscreenbutton_set_texture = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_texture')
  bind_touchscreenbutton_set_texture_pressed = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_texture_pressed')
  bind_touchscreenbutton_set_visibility_mode = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_visibility_mode')

############################Generated class###################################
cdef class TouchScreenButton(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TouchScreenButton")())
##################################Generated Properties#########################################
  @property
  def action(self): 
    return self.get_action()
  @action.setter 
  def action(self,value): 
    self.set_action(value)
  @property
  def bitmask(self): 
    return self.get_bitmask()
  @bitmask.setter 
  def bitmask(self,value): 
    self.set_bitmask(value)
  @property
  def normal(self): 
    return self.get_normal()
  @normal.setter 
  def normal(self,value): 
    self.set_normal(value)
  @property
  def passby_press(self): 
    return self.get_passby_press()
  @passby_press.setter 
  def passby_press(self,value): 
    self.set_passby_press(value)
  @property
  def pressed(self): 
    return self.get_pressed()
  @pressed.setter 
  def pressed(self,value): 
    self.set_pressed(value)
  @property
  def shape(self): 
    return self.get_shape()
  @shape.setter 
  def shape(self,value): 
    self.set_shape(value)
  @property
  def shape_centered(self): 
    return self.get_shape_centered()
  @shape_centered.setter 
  def shape_centered(self,value): 
    self.set_shape_centered(value)
  @property
  def shape_visible(self): 
    return self.get_shape_visible()
  @shape_visible.setter 
  def shape_visible(self,value): 
    self.set_shape_visible(value)
  @property
  def visibility_mode(self): 
    return self.get_visibility_mode()
  @visibility_mode.setter 
  def visibility_mode(self,value): 
    self.set_visibility_mode(value)

##################################Generated Methods#########################################
  def  _input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton__input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_action(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_get_action,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_bitmask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_get_bitmask,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_shape(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_get_shape,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_get_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_texture_pressed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_get_texture_pressed,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_visibility_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef VisibilityMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_get_visibility_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_passby_press_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_is_passby_press_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_pressed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_is_pressed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_shape_centered(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_is_shape_centered,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_shape_visible(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_is_shape_visible,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_action(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_action,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bitmask(self,  classes.BitMap.BitMap bitmask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = bitmask.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_bitmask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_passby_press(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_passby_press,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shape(self,  classes.Shape2D.Shape2D shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = shape.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shape_centered(self,  bool bool):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bool
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_shape_centered,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shape_visible(self,  bool bool):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bool
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_shape_visible,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture_pressed(self,  classes.Texture.Texture texture_pressed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture_pressed.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_texture_pressed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_visibility_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_visibility_mode,self.godot_owner,args,NULL)
    hello('hallo2')
