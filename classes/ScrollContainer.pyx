
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
cimport classes.Container 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_scrollcontainer__ensure_focused_visible
cdef godot_method_bind *bind_scrollcontainer__gui_input
cdef godot_method_bind *bind_scrollcontainer__scroll_moved
cdef godot_method_bind *bind_scrollcontainer__update_scrollbar_position
cdef godot_method_bind *bind_scrollcontainer_get_deadzone
cdef godot_method_bind *bind_scrollcontainer_get_h_scroll
cdef godot_method_bind *bind_scrollcontainer_get_h_scrollbar
cdef godot_method_bind *bind_scrollcontainer_get_v_scroll
cdef godot_method_bind *bind_scrollcontainer_get_v_scrollbar
cdef godot_method_bind *bind_scrollcontainer_is_following_focus
cdef godot_method_bind *bind_scrollcontainer_is_h_scroll_enabled
cdef godot_method_bind *bind_scrollcontainer_is_v_scroll_enabled
cdef godot_method_bind *bind_scrollcontainer_set_deadzone
cdef godot_method_bind *bind_scrollcontainer_set_enable_h_scroll
cdef godot_method_bind *bind_scrollcontainer_set_enable_v_scroll
cdef godot_method_bind *bind_scrollcontainer_set_follow_focus
cdef godot_method_bind *bind_scrollcontainer_set_h_scroll
cdef godot_method_bind *bind_scrollcontainer_set_v_scroll
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_scrollcontainer__ensure_focused_visible = api_core.godot_method_bind_get_method('ScrollContainer', '_ensure_focused_visible')
  bind_scrollcontainer__gui_input = api_core.godot_method_bind_get_method('ScrollContainer', '_gui_input')
  bind_scrollcontainer__scroll_moved = api_core.godot_method_bind_get_method('ScrollContainer', '_scroll_moved')
  bind_scrollcontainer__update_scrollbar_position = api_core.godot_method_bind_get_method('ScrollContainer', '_update_scrollbar_position')
  bind_scrollcontainer_get_deadzone = api_core.godot_method_bind_get_method('ScrollContainer', 'get_deadzone')
  bind_scrollcontainer_get_h_scroll = api_core.godot_method_bind_get_method('ScrollContainer', 'get_h_scroll')
  bind_scrollcontainer_get_h_scrollbar = api_core.godot_method_bind_get_method('ScrollContainer', 'get_h_scrollbar')
  bind_scrollcontainer_get_v_scroll = api_core.godot_method_bind_get_method('ScrollContainer', 'get_v_scroll')
  bind_scrollcontainer_get_v_scrollbar = api_core.godot_method_bind_get_method('ScrollContainer', 'get_v_scrollbar')
  bind_scrollcontainer_is_following_focus = api_core.godot_method_bind_get_method('ScrollContainer', 'is_following_focus')
  bind_scrollcontainer_is_h_scroll_enabled = api_core.godot_method_bind_get_method('ScrollContainer', 'is_h_scroll_enabled')
  bind_scrollcontainer_is_v_scroll_enabled = api_core.godot_method_bind_get_method('ScrollContainer', 'is_v_scroll_enabled')
  bind_scrollcontainer_set_deadzone = api_core.godot_method_bind_get_method('ScrollContainer', 'set_deadzone')
  bind_scrollcontainer_set_enable_h_scroll = api_core.godot_method_bind_get_method('ScrollContainer', 'set_enable_h_scroll')
  bind_scrollcontainer_set_enable_v_scroll = api_core.godot_method_bind_get_method('ScrollContainer', 'set_enable_v_scroll')
  bind_scrollcontainer_set_follow_focus = api_core.godot_method_bind_get_method('ScrollContainer', 'set_follow_focus')
  bind_scrollcontainer_set_h_scroll = api_core.godot_method_bind_get_method('ScrollContainer', 'set_h_scroll')
  bind_scrollcontainer_set_v_scroll = api_core.godot_method_bind_get_method('ScrollContainer', 'set_v_scroll')

############################Generated class###################################
cdef class ScrollContainer(classes.Container.Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ScrollContainer")())
##################################Generated Properties#########################################
  @property
  def follow_focus(self): 
    return self.get_follow_focus()
  @follow_focus.setter 
  def follow_focus(self,value): 
    self.set_follow_focus(value)
  @property
  def scroll_deadzone(self): 
    return self.get_scroll_deadzone()
  @scroll_deadzone.setter 
  def scroll_deadzone(self,value): 
    self.set_scroll_deadzone(value)
  @property
  def scroll_horizontal(self): 
    return self.get_scroll_horizontal()
  @scroll_horizontal.setter 
  def scroll_horizontal(self,value): 
    self.set_scroll_horizontal(value)
  @property
  def scroll_horizontal_enabled(self): 
    return self.get_scroll_horizontal_enabled()
  @scroll_horizontal_enabled.setter 
  def scroll_horizontal_enabled(self,value): 
    self.set_scroll_horizontal_enabled(value)
  @property
  def scroll_vertical(self): 
    return self.get_scroll_vertical()
  @scroll_vertical.setter 
  def scroll_vertical(self,value): 
    self.set_scroll_vertical(value)
  @property
  def scroll_vertical_enabled(self): 
    return self.get_scroll_vertical_enabled()
  @scroll_vertical_enabled.setter 
  def scroll_vertical_enabled(self,value): 
    self.set_scroll_vertical_enabled(value)

##################################Generated Methods#########################################
  def  _ensure_focused_visible(self,  classes.Control.Control arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer__ensure_focused_visible,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _scroll_moved(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer__scroll_moved,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _update_scrollbar_position(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scrollcontainer__update_scrollbar_position,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_deadzone(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_get_deadzone,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_h_scroll(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_get_h_scroll,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_h_scrollbar(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_get_h_scrollbar,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_v_scroll(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_get_v_scroll,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_v_scrollbar(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_get_v_scrollbar,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_following_focus(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_is_following_focus,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_h_scroll_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_is_h_scroll_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_v_scroll_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_is_v_scroll_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_deadzone(self,  int deadzone):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &deadzone
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_set_deadzone,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_enable_h_scroll(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_set_enable_h_scroll,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_enable_v_scroll(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_set_enable_v_scroll,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_follow_focus(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_set_follow_focus,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_h_scroll(self,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_set_h_scroll,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_v_scroll(self,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_scrollcontainer_set_v_scroll,self.godot_owner,args,NULL)
    hello('hallo2')
