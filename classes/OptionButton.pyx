
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
cimport classes.Texture
cimport classes.Texture
cimport classes.Button 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_optionbutton__focused
cdef godot_method_bind *bind_optionbutton__get_items
cdef godot_method_bind *bind_optionbutton__select_int
cdef godot_method_bind *bind_optionbutton__selected
cdef godot_method_bind *bind_optionbutton__set_items
cdef godot_method_bind *bind_optionbutton_add_icon_item
cdef godot_method_bind *bind_optionbutton_add_item
cdef godot_method_bind *bind_optionbutton_add_separator
cdef godot_method_bind *bind_optionbutton_clear
cdef godot_method_bind *bind_optionbutton_get_item_count
cdef godot_method_bind *bind_optionbutton_get_item_icon
cdef godot_method_bind *bind_optionbutton_get_item_id
cdef godot_method_bind *bind_optionbutton_get_item_index
cdef godot_method_bind *bind_optionbutton_get_item_metadata
cdef godot_method_bind *bind_optionbutton_get_item_text
cdef godot_method_bind *bind_optionbutton_get_popup
cdef godot_method_bind *bind_optionbutton_get_selected
cdef godot_method_bind *bind_optionbutton_get_selected_id
cdef godot_method_bind *bind_optionbutton_get_selected_metadata
cdef godot_method_bind *bind_optionbutton_is_item_disabled
cdef godot_method_bind *bind_optionbutton_remove_item
cdef godot_method_bind *bind_optionbutton_select
cdef godot_method_bind *bind_optionbutton_set_item_disabled
cdef godot_method_bind *bind_optionbutton_set_item_icon
cdef godot_method_bind *bind_optionbutton_set_item_id
cdef godot_method_bind *bind_optionbutton_set_item_metadata
cdef godot_method_bind *bind_optionbutton_set_item_text
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_optionbutton__focused = api_core.godot_method_bind_get_method('OptionButton', '_focused')
  bind_optionbutton__get_items = api_core.godot_method_bind_get_method('OptionButton', '_get_items')
  bind_optionbutton__select_int = api_core.godot_method_bind_get_method('OptionButton', '_select_int')
  bind_optionbutton__selected = api_core.godot_method_bind_get_method('OptionButton', '_selected')
  bind_optionbutton__set_items = api_core.godot_method_bind_get_method('OptionButton', '_set_items')
  bind_optionbutton_add_icon_item = api_core.godot_method_bind_get_method('OptionButton', 'add_icon_item')
  bind_optionbutton_add_item = api_core.godot_method_bind_get_method('OptionButton', 'add_item')
  bind_optionbutton_add_separator = api_core.godot_method_bind_get_method('OptionButton', 'add_separator')
  bind_optionbutton_clear = api_core.godot_method_bind_get_method('OptionButton', 'clear')
  bind_optionbutton_get_item_count = api_core.godot_method_bind_get_method('OptionButton', 'get_item_count')
  bind_optionbutton_get_item_icon = api_core.godot_method_bind_get_method('OptionButton', 'get_item_icon')
  bind_optionbutton_get_item_id = api_core.godot_method_bind_get_method('OptionButton', 'get_item_id')
  bind_optionbutton_get_item_index = api_core.godot_method_bind_get_method('OptionButton', 'get_item_index')
  bind_optionbutton_get_item_metadata = api_core.godot_method_bind_get_method('OptionButton', 'get_item_metadata')
  bind_optionbutton_get_item_text = api_core.godot_method_bind_get_method('OptionButton', 'get_item_text')
  bind_optionbutton_get_popup = api_core.godot_method_bind_get_method('OptionButton', 'get_popup')
  bind_optionbutton_get_selected = api_core.godot_method_bind_get_method('OptionButton', 'get_selected')
  bind_optionbutton_get_selected_id = api_core.godot_method_bind_get_method('OptionButton', 'get_selected_id')
  bind_optionbutton_get_selected_metadata = api_core.godot_method_bind_get_method('OptionButton', 'get_selected_metadata')
  bind_optionbutton_is_item_disabled = api_core.godot_method_bind_get_method('OptionButton', 'is_item_disabled')
  bind_optionbutton_remove_item = api_core.godot_method_bind_get_method('OptionButton', 'remove_item')
  bind_optionbutton_select = api_core.godot_method_bind_get_method('OptionButton', 'select')
  bind_optionbutton_set_item_disabled = api_core.godot_method_bind_get_method('OptionButton', 'set_item_disabled')
  bind_optionbutton_set_item_icon = api_core.godot_method_bind_get_method('OptionButton', 'set_item_icon')
  bind_optionbutton_set_item_id = api_core.godot_method_bind_get_method('OptionButton', 'set_item_id')
  bind_optionbutton_set_item_metadata = api_core.godot_method_bind_get_method('OptionButton', 'set_item_metadata')
  bind_optionbutton_set_item_text = api_core.godot_method_bind_get_method('OptionButton', 'set_item_text')

############################Generated class###################################
cdef class OptionButton(classes.Button.Button):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("OptionButton")())
##################################Generated Properties#########################################
  @property
  def items(self): 
    return self.get_items()
  @items.setter 
  def items(self,value): 
    self.set_items(value)
  @property
  def selected(self): 
    return self.get_selected()
  @selected.setter 
  def selected(self,value): 
    self.set_selected(value)

##################################Generated Methods#########################################
  def  _focused(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_optionbutton__focused,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _get_items(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_optionbutton__get_items,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _select_int(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_optionbutton__select_int,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _selected(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_optionbutton__selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_items(self,  Array arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_optionbutton__set_items,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_icon_item(self,  classes.Texture.Texture texture,  String label,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = texture.godot_owner
    args[1] = &label._native
    args[2] = &id
    api_core.godot_method_bind_ptrcall(bind_optionbutton_add_icon_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_item(self,  String label,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &label._native
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_optionbutton_add_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_separator(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_optionbutton_add_separator,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_optionbutton_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_item_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_item_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_icon(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_item_icon,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_item_id(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_item_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_index(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_item_index,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_metadata(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_item_metadata,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_item_text(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_item_text,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_popup(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_popup,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_selected(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_selected,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_selected_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_selected_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_selected_metadata(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_optionbutton_get_selected_metadata,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  is_item_disabled(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_optionbutton_is_item_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_item(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_optionbutton_remove_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  select(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_optionbutton_select,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_disabled(self,  int idx,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &disabled
    api_core.godot_method_bind_ptrcall(bind_optionbutton_set_item_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_icon(self,  int idx,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_optionbutton_set_item_icon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_id(self,  int idx,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_optionbutton_set_item_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_metadata(self,  int idx,  Variant metadata):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &metadata._native
    api_core.godot_method_bind_ptrcall(bind_optionbutton_set_item_metadata,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_text(self,  int idx,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &text._native
    api_core.godot_method_bind_ptrcall(bind_optionbutton_set_item_text,self.godot_owner,args,NULL)
    hello('hallo2')
