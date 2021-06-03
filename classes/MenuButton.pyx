
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
cimport classes.Button 

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
cdef class MenuButton(classes.Button.Button):
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

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_menubutton__get_items,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _set_items(self,  Array arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_menubutton__set_items,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _unhandled_key_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_menubutton__unhandled_key_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_popup(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_menubutton_get_popup,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_switch_on_hover(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_menubutton_is_switch_on_hover,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_disable_shortcuts(self,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &disabled
    api_core.godot_method_bind_ptrcall(bind_menubutton_set_disable_shortcuts,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_switch_on_hover(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_menubutton_set_switch_on_hover,self.godot_owner,args,NULL)
    hello('hallo2')
