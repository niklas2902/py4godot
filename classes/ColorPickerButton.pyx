from classes.Button cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_colorpickerbutton__color_changed
cdef godot_method_bind *bind_colorpickerbutton__modal_closed
cdef godot_method_bind *bind_colorpickerbutton_get_pick_color
cdef godot_method_bind *bind_colorpickerbutton_get_picker
cdef godot_method_bind *bind_colorpickerbutton_get_popup
cdef godot_method_bind *bind_colorpickerbutton_is_editing_alpha
cdef godot_method_bind *bind_colorpickerbutton_set_edit_alpha
cdef godot_method_bind *bind_colorpickerbutton_set_pick_color
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_colorpickerbutton__color_changed = api_core.godot_method_bind_get_method('ColorPickerButton', '_color_changed')
  bind_colorpickerbutton__modal_closed = api_core.godot_method_bind_get_method('ColorPickerButton', '_modal_closed')
  bind_colorpickerbutton_get_pick_color = api_core.godot_method_bind_get_method('ColorPickerButton', 'get_pick_color')
  bind_colorpickerbutton_get_picker = api_core.godot_method_bind_get_method('ColorPickerButton', 'get_picker')
  bind_colorpickerbutton_get_popup = api_core.godot_method_bind_get_method('ColorPickerButton', 'get_popup')
  bind_colorpickerbutton_is_editing_alpha = api_core.godot_method_bind_get_method('ColorPickerButton', 'is_editing_alpha')
  bind_colorpickerbutton_set_edit_alpha = api_core.godot_method_bind_get_method('ColorPickerButton', 'set_edit_alpha')
  bind_colorpickerbutton_set_pick_color = api_core.godot_method_bind_get_method('ColorPickerButton', 'set_pick_color')

############################Generated class###################################
cdef class ColorPickerButton(Button):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ColorPickerButton")())
##################################Generated Properties#########################################
  @property
  def color(self): 
    return self.get_color()
  @color.setter 
  def color(self,value): 
    self.set_color(value)
  @property
  def edit_alpha(self): 
    return self.get_edit_alpha()
  @edit_alpha.setter 
  def edit_alpha(self,value): 
    self.set_edit_alpha(value)

##################################Generated Methods#########################################
  def  _color_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton__color_changed,self.godot_owner,[NULL,],NULL)
  def  _modal_closed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton__modal_closed,self.godot_owner,[NULL,],NULL)
  def  get_pick_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton_get_pick_color,self.godot_owner,[NULL,],&ret)
  def  get_picker(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ColorPicker ret
    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton_get_picker,self.godot_owner,[NULL,],&ret)
  def  get_popup(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PopupPanel ret
    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton_get_popup,self.godot_owner,[NULL,],&ret)
  def  is_editing_alpha(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton_is_editing_alpha,self.godot_owner,[NULL,],&ret)
  def  set_edit_alpha(self, show):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton_set_edit_alpha,self.godot_owner,[NULL,],NULL)
  def  set_pick_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_colorpickerbutton_set_pick_color,self.godot_owner,[NULL,],NULL)
