
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
cimport classes.InputEvent
cimport classes.Texture
cimport classes.Texture
cimport classes.Control 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_tabs__gui_input
cdef godot_method_bind *bind_tabs__on_mouse_exited
cdef godot_method_bind *bind_tabs__update_hover
cdef godot_method_bind *bind_tabs_add_tab
cdef godot_method_bind *bind_tabs_ensure_tab_visible
cdef godot_method_bind *bind_tabs_get_current_tab
cdef godot_method_bind *bind_tabs_get_drag_to_rearrange_enabled
cdef godot_method_bind *bind_tabs_get_offset_buttons_visible
cdef godot_method_bind *bind_tabs_get_scrolling_enabled
cdef godot_method_bind *bind_tabs_get_select_with_rmb
cdef godot_method_bind *bind_tabs_get_tab_align
cdef godot_method_bind *bind_tabs_get_tab_close_display_policy
cdef godot_method_bind *bind_tabs_get_tab_count
cdef godot_method_bind *bind_tabs_get_tab_disabled
cdef godot_method_bind *bind_tabs_get_tab_icon
cdef godot_method_bind *bind_tabs_get_tab_offset
cdef godot_method_bind *bind_tabs_get_tab_rect
cdef godot_method_bind *bind_tabs_get_tab_title
cdef godot_method_bind *bind_tabs_get_tabs_rearrange_group
cdef godot_method_bind *bind_tabs_move_tab
cdef godot_method_bind *bind_tabs_remove_tab
cdef godot_method_bind *bind_tabs_set_current_tab
cdef godot_method_bind *bind_tabs_set_drag_to_rearrange_enabled
cdef godot_method_bind *bind_tabs_set_scrolling_enabled
cdef godot_method_bind *bind_tabs_set_select_with_rmb
cdef godot_method_bind *bind_tabs_set_tab_align
cdef godot_method_bind *bind_tabs_set_tab_close_display_policy
cdef godot_method_bind *bind_tabs_set_tab_disabled
cdef godot_method_bind *bind_tabs_set_tab_icon
cdef godot_method_bind *bind_tabs_set_tab_title
cdef godot_method_bind *bind_tabs_set_tabs_rearrange_group
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_tabs__gui_input = api_core.godot_method_bind_get_method('Tabs', '_gui_input')
  bind_tabs__on_mouse_exited = api_core.godot_method_bind_get_method('Tabs', '_on_mouse_exited')
  bind_tabs__update_hover = api_core.godot_method_bind_get_method('Tabs', '_update_hover')
  bind_tabs_add_tab = api_core.godot_method_bind_get_method('Tabs', 'add_tab')
  bind_tabs_ensure_tab_visible = api_core.godot_method_bind_get_method('Tabs', 'ensure_tab_visible')
  bind_tabs_get_current_tab = api_core.godot_method_bind_get_method('Tabs', 'get_current_tab')
  bind_tabs_get_drag_to_rearrange_enabled = api_core.godot_method_bind_get_method('Tabs', 'get_drag_to_rearrange_enabled')
  bind_tabs_get_offset_buttons_visible = api_core.godot_method_bind_get_method('Tabs', 'get_offset_buttons_visible')
  bind_tabs_get_scrolling_enabled = api_core.godot_method_bind_get_method('Tabs', 'get_scrolling_enabled')
  bind_tabs_get_select_with_rmb = api_core.godot_method_bind_get_method('Tabs', 'get_select_with_rmb')
  bind_tabs_get_tab_align = api_core.godot_method_bind_get_method('Tabs', 'get_tab_align')
  bind_tabs_get_tab_close_display_policy = api_core.godot_method_bind_get_method('Tabs', 'get_tab_close_display_policy')
  bind_tabs_get_tab_count = api_core.godot_method_bind_get_method('Tabs', 'get_tab_count')
  bind_tabs_get_tab_disabled = api_core.godot_method_bind_get_method('Tabs', 'get_tab_disabled')
  bind_tabs_get_tab_icon = api_core.godot_method_bind_get_method('Tabs', 'get_tab_icon')
  bind_tabs_get_tab_offset = api_core.godot_method_bind_get_method('Tabs', 'get_tab_offset')
  bind_tabs_get_tab_rect = api_core.godot_method_bind_get_method('Tabs', 'get_tab_rect')
  bind_tabs_get_tab_title = api_core.godot_method_bind_get_method('Tabs', 'get_tab_title')
  bind_tabs_get_tabs_rearrange_group = api_core.godot_method_bind_get_method('Tabs', 'get_tabs_rearrange_group')
  bind_tabs_move_tab = api_core.godot_method_bind_get_method('Tabs', 'move_tab')
  bind_tabs_remove_tab = api_core.godot_method_bind_get_method('Tabs', 'remove_tab')
  bind_tabs_set_current_tab = api_core.godot_method_bind_get_method('Tabs', 'set_current_tab')
  bind_tabs_set_drag_to_rearrange_enabled = api_core.godot_method_bind_get_method('Tabs', 'set_drag_to_rearrange_enabled')
  bind_tabs_set_scrolling_enabled = api_core.godot_method_bind_get_method('Tabs', 'set_scrolling_enabled')
  bind_tabs_set_select_with_rmb = api_core.godot_method_bind_get_method('Tabs', 'set_select_with_rmb')
  bind_tabs_set_tab_align = api_core.godot_method_bind_get_method('Tabs', 'set_tab_align')
  bind_tabs_set_tab_close_display_policy = api_core.godot_method_bind_get_method('Tabs', 'set_tab_close_display_policy')
  bind_tabs_set_tab_disabled = api_core.godot_method_bind_get_method('Tabs', 'set_tab_disabled')
  bind_tabs_set_tab_icon = api_core.godot_method_bind_get_method('Tabs', 'set_tab_icon')
  bind_tabs_set_tab_title = api_core.godot_method_bind_get_method('Tabs', 'set_tab_title')
  bind_tabs_set_tabs_rearrange_group = api_core.godot_method_bind_get_method('Tabs', 'set_tabs_rearrange_group')

############################Generated class###################################
cdef class Tabs(classes.Control.Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Tabs")())
##################################Generated Properties#########################################
  @property
  def current_tab(self): 
    return self.get_current_tab()
  @current_tab.setter 
  def current_tab(self,value): 
    self.set_current_tab(value)
  @property
  def drag_to_rearrange_enabled(self): 
    return self.get_drag_to_rearrange_enabled()
  @drag_to_rearrange_enabled.setter 
  def drag_to_rearrange_enabled(self,value): 
    self.set_drag_to_rearrange_enabled(value)
  @property
  def scrolling_enabled(self): 
    return self.get_scrolling_enabled()
  @scrolling_enabled.setter 
  def scrolling_enabled(self,value): 
    self.set_scrolling_enabled(value)
  @property
  def tab_align(self): 
    return self.get_tab_align()
  @tab_align.setter 
  def tab_align(self,value): 
    self.set_tab_align(value)
  @property
  def tab_close_display_policy(self): 
    return self.get_tab_close_display_policy()
  @tab_close_display_policy.setter 
  def tab_close_display_policy(self,value): 
    self.set_tab_close_display_policy(value)

##################################Generated Methods#########################################
  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _on_mouse_exited(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tabs__on_mouse_exited,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _update_hover(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tabs__update_hover,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  add_tab(self,  String title,  classes.Texture.Texture icon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &title._native
    args[1] = icon.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_add_tab,self.godot_owner,args,NULL)
    hello('hallo2')
  def  ensure_tab_visible(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_tabs_ensure_tab_visible,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_current_tab(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tabs_get_current_tab,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_drag_to_rearrange_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tabs_get_drag_to_rearrange_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_offset_buttons_visible(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tabs_get_offset_buttons_visible,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_scrolling_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tabs_get_scrolling_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_select_with_rmb(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tabs_get_select_with_rmb,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tab_align(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Tabs_TabAlign* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_align,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tab_close_display_policy(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Tabs_CloseButtonDisplayPolicy* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_close_display_policy,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tab_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tab_disabled(self,  int tab_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &tab_idx
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tab_icon(self,  int tab_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &tab_idx
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_icon,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_tab_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tab_rect(self,  int tab_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    cdef void *args[1]

    args[0] = &tab_idx
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_rect,self.godot_owner,args,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_tab_title(self,  int tab_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &tab_idx
    api_core.godot_method_bind_ptrcall(bind_tabs_get_tab_title,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_tabs_rearrange_group(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tabs_get_tabs_rearrange_group,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  move_tab(self,  int from_,  int to):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &from_
    args[1] = &to
    api_core.godot_method_bind_ptrcall(bind_tabs_move_tab,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_tab(self,  int tab_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &tab_idx
    api_core.godot_method_bind_ptrcall(bind_tabs_remove_tab,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_current_tab(self,  int tab_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &tab_idx
    api_core.godot_method_bind_ptrcall(bind_tabs_set_current_tab,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_drag_to_rearrange_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_tabs_set_drag_to_rearrange_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_scrolling_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_tabs_set_scrolling_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_select_with_rmb(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_tabs_set_select_with_rmb,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tab_align(self,  int align):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &align
    api_core.godot_method_bind_ptrcall(bind_tabs_set_tab_align,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tab_close_display_policy(self,  int policy):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &policy
    api_core.godot_method_bind_ptrcall(bind_tabs_set_tab_close_display_policy,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tab_disabled(self,  int tab_idx,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &tab_idx
    args[1] = &disabled
    api_core.godot_method_bind_ptrcall(bind_tabs_set_tab_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tab_icon(self,  int tab_idx,  classes.Texture.Texture icon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &tab_idx
    args[1] = icon.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tabs_set_tab_icon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tab_title(self,  int tab_idx,  String title):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &tab_idx
    args[1] = &title._native
    api_core.godot_method_bind_ptrcall(bind_tabs_set_tab_title,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tabs_rearrange_group(self,  int group_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &group_id
    api_core.godot_method_bind_ptrcall(bind_tabs_set_tabs_rearrange_group,self.godot_owner,args,NULL)
    hello('hallo2')
