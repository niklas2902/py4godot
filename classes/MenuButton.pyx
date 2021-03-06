from classes.Button cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_menubutton__get_items
cdef godot_method_bind *bind_menubutton__set_items
cdef godot_method_bind *bind_menubutton__unhandled_key_input
cdef godot_method_bind *bind_menubutton_get_popup
cdef godot_method_bind *bind_menubutton_is_switch_on_hover
cdef godot_method_bind *bind_menubutton_set_disable_shortcuts
cdef godot_method_bind *bind_menubutton_set_switch_on_hover
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_menubutton__get_items = api_core.godot_method_bind_get_method('MenuButton', '_get_items')
  bind_menubutton__set_items = api_core.godot_method_bind_get_method('MenuButton', '_set_items')
  bind_menubutton__unhandled_key_input = api_core.godot_method_bind_get_method('MenuButton', '_unhandled_key_input')
  bind_menubutton_get_popup = api_core.godot_method_bind_get_method('MenuButton', 'get_popup')
  bind_menubutton_is_switch_on_hover = api_core.godot_method_bind_get_method('MenuButton', 'is_switch_on_hover')
  bind_menubutton_set_disable_shortcuts = api_core.godot_method_bind_get_method('MenuButton', 'set_disable_shortcuts')
  bind_menubutton_set_switch_on_hover = api_core.godot_method_bind_get_method('MenuButton', 'set_switch_on_hover')

############################Generated class###################################
cdef class MenuButton(Button):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MenuButton")())
##################################Generated Properties#########################################
  @property
  def items(self): 
    return self.get_items()
  @items.setter 
  def items(self,value): 
    self.set_items(value)
  @property
  def switch_on_hover(self): 
    return self.get_switch_on_hover()
  @switch_on_hover.setter 
  def switch_on_hover(self,value): 
    self.set_switch_on_hover(value)

##################################Generated Methods#########################################
  def  _get_items(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_menubutton__get_items,self.godot_owner,[NULL,],&ret)
  def  _set_items(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_menubutton__set_items,self.godot_owner,[NULL,],NULL)
  def  _unhandled_key_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_menubutton__unhandled_key_input,self.godot_owner,[NULL,],NULL)
  def  get_popup(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PopupMenu ret
    api_core.godot_method_bind_ptrcall(bind_menubutton_get_popup,self.godot_owner,[NULL,],&ret)
  def  is_switch_on_hover(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_menubutton_is_switch_on_hover,self.godot_owner,[NULL,],&ret)
  def  set_disable_shortcuts(self, disabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_menubutton_set_disable_shortcuts,self.godot_owner,[NULL,],NULL)
  def  set_switch_on_hover(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_menubutton_set_switch_on_hover,self.godot_owner,[NULL,],NULL)
