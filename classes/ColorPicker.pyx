
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
cimport classes.Control
cimport classes.InputEvent
cimport classes.InputEvent
cimport classes.InputEvent
cimport classes.InputEvent
cimport classes.BoxContainer 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_colorpicker__add_preset_pressed
cdef godot_method_bind *bind_colorpicker__focus_enter
cdef godot_method_bind *bind_colorpicker__focus_exit
cdef godot_method_bind *bind_colorpicker__hsv_draw
cdef godot_method_bind *bind_colorpicker__html_entered
cdef godot_method_bind *bind_colorpicker__html_focus_exit
cdef godot_method_bind *bind_colorpicker__preset_input
cdef godot_method_bind *bind_colorpicker__sample_draw
cdef godot_method_bind *bind_colorpicker__screen_input
cdef godot_method_bind *bind_colorpicker__screen_pick_pressed
cdef godot_method_bind *bind_colorpicker__text_type_toggled
cdef godot_method_bind *bind_colorpicker__update_presets
cdef godot_method_bind *bind_colorpicker__uv_input
cdef godot_method_bind *bind_colorpicker__value_changed
cdef godot_method_bind *bind_colorpicker__w_input
cdef godot_method_bind *bind_colorpicker_add_preset
cdef godot_method_bind *bind_colorpicker_are_presets_enabled
cdef godot_method_bind *bind_colorpicker_are_presets_visible
cdef godot_method_bind *bind_colorpicker_erase_preset
cdef godot_method_bind *bind_colorpicker_get_pick_color
cdef godot_method_bind *bind_colorpicker_get_presets
cdef godot_method_bind *bind_colorpicker_is_deferred_mode
cdef godot_method_bind *bind_colorpicker_is_editing_alpha
cdef godot_method_bind *bind_colorpicker_is_hsv_mode
cdef godot_method_bind *bind_colorpicker_is_raw_mode
cdef godot_method_bind *bind_colorpicker_set_deferred_mode
cdef godot_method_bind *bind_colorpicker_set_edit_alpha
cdef godot_method_bind *bind_colorpicker_set_hsv_mode
cdef godot_method_bind *bind_colorpicker_set_pick_color
cdef godot_method_bind *bind_colorpicker_set_presets_enabled
cdef godot_method_bind *bind_colorpicker_set_presets_visible
cdef godot_method_bind *bind_colorpicker_set_raw_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_colorpicker__add_preset_pressed = api_core.godot_method_bind_get_method('ColorPicker', '_add_preset_pressed')
  bind_colorpicker__focus_enter = api_core.godot_method_bind_get_method('ColorPicker', '_focus_enter')
  bind_colorpicker__focus_exit = api_core.godot_method_bind_get_method('ColorPicker', '_focus_exit')
  bind_colorpicker__hsv_draw = api_core.godot_method_bind_get_method('ColorPicker', '_hsv_draw')
  bind_colorpicker__html_entered = api_core.godot_method_bind_get_method('ColorPicker', '_html_entered')
  bind_colorpicker__html_focus_exit = api_core.godot_method_bind_get_method('ColorPicker', '_html_focus_exit')
  bind_colorpicker__preset_input = api_core.godot_method_bind_get_method('ColorPicker', '_preset_input')
  bind_colorpicker__sample_draw = api_core.godot_method_bind_get_method('ColorPicker', '_sample_draw')
  bind_colorpicker__screen_input = api_core.godot_method_bind_get_method('ColorPicker', '_screen_input')
  bind_colorpicker__screen_pick_pressed = api_core.godot_method_bind_get_method('ColorPicker', '_screen_pick_pressed')
  bind_colorpicker__text_type_toggled = api_core.godot_method_bind_get_method('ColorPicker', '_text_type_toggled')
  bind_colorpicker__update_presets = api_core.godot_method_bind_get_method('ColorPicker', '_update_presets')
  bind_colorpicker__uv_input = api_core.godot_method_bind_get_method('ColorPicker', '_uv_input')
  bind_colorpicker__value_changed = api_core.godot_method_bind_get_method('ColorPicker', '_value_changed')
  bind_colorpicker__w_input = api_core.godot_method_bind_get_method('ColorPicker', '_w_input')
  bind_colorpicker_add_preset = api_core.godot_method_bind_get_method('ColorPicker', 'add_preset')
  bind_colorpicker_are_presets_enabled = api_core.godot_method_bind_get_method('ColorPicker', 'are_presets_enabled')
  bind_colorpicker_are_presets_visible = api_core.godot_method_bind_get_method('ColorPicker', 'are_presets_visible')
  bind_colorpicker_erase_preset = api_core.godot_method_bind_get_method('ColorPicker', 'erase_preset')
  bind_colorpicker_get_pick_color = api_core.godot_method_bind_get_method('ColorPicker', 'get_pick_color')
  bind_colorpicker_get_presets = api_core.godot_method_bind_get_method('ColorPicker', 'get_presets')
  bind_colorpicker_is_deferred_mode = api_core.godot_method_bind_get_method('ColorPicker', 'is_deferred_mode')
  bind_colorpicker_is_editing_alpha = api_core.godot_method_bind_get_method('ColorPicker', 'is_editing_alpha')
  bind_colorpicker_is_hsv_mode = api_core.godot_method_bind_get_method('ColorPicker', 'is_hsv_mode')
  bind_colorpicker_is_raw_mode = api_core.godot_method_bind_get_method('ColorPicker', 'is_raw_mode')
  bind_colorpicker_set_deferred_mode = api_core.godot_method_bind_get_method('ColorPicker', 'set_deferred_mode')
  bind_colorpicker_set_edit_alpha = api_core.godot_method_bind_get_method('ColorPicker', 'set_edit_alpha')
  bind_colorpicker_set_hsv_mode = api_core.godot_method_bind_get_method('ColorPicker', 'set_hsv_mode')
  bind_colorpicker_set_pick_color = api_core.godot_method_bind_get_method('ColorPicker', 'set_pick_color')
  bind_colorpicker_set_presets_enabled = api_core.godot_method_bind_get_method('ColorPicker', 'set_presets_enabled')
  bind_colorpicker_set_presets_visible = api_core.godot_method_bind_get_method('ColorPicker', 'set_presets_visible')
  bind_colorpicker_set_raw_mode = api_core.godot_method_bind_get_method('ColorPicker', 'set_raw_mode')

############################Generated class###################################
cdef class ColorPicker(classes.BoxContainer.BoxContainer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ColorPicker")())
##################################Generated Properties#########################################
  @property
  def color(self): 
    return self.get_color()
  @color.setter 
  def color(self,value): 
    self.set_color(value)
  @property
  def deferred_mode(self): 
    return self.get_deferred_mode()
  @deferred_mode.setter 
  def deferred_mode(self,value): 
    self.set_deferred_mode(value)
  @property
  def edit_alpha(self): 
    return self.get_edit_alpha()
  @edit_alpha.setter 
  def edit_alpha(self,value): 
    self.set_edit_alpha(value)
  @property
  def hsv_mode(self): 
    return self.get_hsv_mode()
  @hsv_mode.setter 
  def hsv_mode(self,value): 
    self.set_hsv_mode(value)
  @property
  def presets_enabled(self): 
    return self.get_presets_enabled()
  @presets_enabled.setter 
  def presets_enabled(self,value): 
    self.set_presets_enabled(value)
  @property
  def presets_visible(self): 
    return self.get_presets_visible()
  @presets_visible.setter 
  def presets_visible(self,value): 
    self.set_presets_visible(value)
  @property
  def raw_mode(self): 
    return self.get_raw_mode()
  @raw_mode.setter 
  def raw_mode(self,value): 
    self.set_raw_mode(value)

##################################Generated Methods#########################################
  def  _add_preset_pressed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_colorpicker__add_preset_pressed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _focus_enter(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_colorpicker__focus_enter,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _focus_exit(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_colorpicker__focus_exit,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _hsv_draw(self,  int arg0,  classes.Control.Control arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &arg0
    args[1] = arg1.godot_owner
    api_core.godot_method_bind_ptrcall(bind_colorpicker__hsv_draw,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _html_entered(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_colorpicker__html_entered,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _html_focus_exit(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_colorpicker__html_focus_exit,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _preset_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_colorpicker__preset_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _sample_draw(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_colorpicker__sample_draw,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _screen_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_colorpicker__screen_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _screen_pick_pressed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_colorpicker__screen_pick_pressed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _text_type_toggled(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_colorpicker__text_type_toggled,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _update_presets(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_colorpicker__update_presets,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _uv_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_colorpicker__uv_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _value_changed(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_colorpicker__value_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _w_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_colorpicker__w_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_preset(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_colorpicker_add_preset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  are_presets_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_colorpicker_are_presets_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  are_presets_visible(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_colorpicker_are_presets_visible,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  erase_preset(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_colorpicker_erase_preset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_pick_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_colorpicker_get_pick_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_presets(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_colorpicker_get_presets,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_deferred_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_colorpicker_is_deferred_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_editing_alpha(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_colorpicker_is_editing_alpha,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_hsv_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_colorpicker_is_hsv_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_raw_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_colorpicker_is_raw_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_deferred_mode(self,  bool mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_colorpicker_set_deferred_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_edit_alpha(self,  bool show):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &show
    api_core.godot_method_bind_ptrcall(bind_colorpicker_set_edit_alpha,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hsv_mode(self,  bool mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_colorpicker_set_hsv_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pick_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_colorpicker_set_pick_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_presets_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_colorpicker_set_presets_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_presets_visible(self,  bool visible):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &visible
    api_core.godot_method_bind_ptrcall(bind_colorpicker_set_presets_visible,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_raw_mode(self,  bool mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_colorpicker_set_raw_mode,self.godot_owner,args,NULL)
    hello('hallo2')
