
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
cimport classes.Object
cimport classes.Texture
cimport classes.Object
cimport classes.Texture
cimport classes.Object 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_treeitem_add_button
cdef godot_method_bind *bind_treeitem_call_recursive
cdef godot_method_bind *bind_treeitem_clear_custom_bg_color
cdef godot_method_bind *bind_treeitem_clear_custom_color
cdef godot_method_bind *bind_treeitem_deselect
cdef godot_method_bind *bind_treeitem_erase_button
cdef godot_method_bind *bind_treeitem_get_button
cdef godot_method_bind *bind_treeitem_get_button_count
cdef godot_method_bind *bind_treeitem_get_button_tooltip
cdef godot_method_bind *bind_treeitem_get_cell_mode
cdef godot_method_bind *bind_treeitem_get_children
cdef godot_method_bind *bind_treeitem_get_custom_bg_color
cdef godot_method_bind *bind_treeitem_get_custom_color
cdef godot_method_bind *bind_treeitem_get_custom_minimum_height
cdef godot_method_bind *bind_treeitem_get_expand_right
cdef godot_method_bind *bind_treeitem_get_icon
cdef godot_method_bind *bind_treeitem_get_icon_max_width
cdef godot_method_bind *bind_treeitem_get_icon_modulate
cdef godot_method_bind *bind_treeitem_get_icon_region
cdef godot_method_bind *bind_treeitem_get_metadata
cdef godot_method_bind *bind_treeitem_get_next
cdef godot_method_bind *bind_treeitem_get_next_visible
cdef godot_method_bind *bind_treeitem_get_parent
cdef godot_method_bind *bind_treeitem_get_prev
cdef godot_method_bind *bind_treeitem_get_prev_visible
cdef godot_method_bind *bind_treeitem_get_range
cdef godot_method_bind *bind_treeitem_get_range_config
cdef godot_method_bind *bind_treeitem_get_text
cdef godot_method_bind *bind_treeitem_get_text_align
cdef godot_method_bind *bind_treeitem_get_tooltip
cdef godot_method_bind *bind_treeitem_is_button_disabled
cdef godot_method_bind *bind_treeitem_is_checked
cdef godot_method_bind *bind_treeitem_is_collapsed
cdef godot_method_bind *bind_treeitem_is_custom_set_as_button
cdef godot_method_bind *bind_treeitem_is_editable
cdef godot_method_bind *bind_treeitem_is_folding_disabled
cdef godot_method_bind *bind_treeitem_is_selectable
cdef godot_method_bind *bind_treeitem_is_selected
cdef godot_method_bind *bind_treeitem_move_to_bottom
cdef godot_method_bind *bind_treeitem_move_to_top
cdef godot_method_bind *bind_treeitem_remove_child
cdef godot_method_bind *bind_treeitem_select
cdef godot_method_bind *bind_treeitem_set_button
cdef godot_method_bind *bind_treeitem_set_button_disabled
cdef godot_method_bind *bind_treeitem_set_cell_mode
cdef godot_method_bind *bind_treeitem_set_checked
cdef godot_method_bind *bind_treeitem_set_collapsed
cdef godot_method_bind *bind_treeitem_set_custom_as_button
cdef godot_method_bind *bind_treeitem_set_custom_bg_color
cdef godot_method_bind *bind_treeitem_set_custom_color
cdef godot_method_bind *bind_treeitem_set_custom_draw
cdef godot_method_bind *bind_treeitem_set_custom_minimum_height
cdef godot_method_bind *bind_treeitem_set_disable_folding
cdef godot_method_bind *bind_treeitem_set_editable
cdef godot_method_bind *bind_treeitem_set_expand_right
cdef godot_method_bind *bind_treeitem_set_icon
cdef godot_method_bind *bind_treeitem_set_icon_max_width
cdef godot_method_bind *bind_treeitem_set_icon_modulate
cdef godot_method_bind *bind_treeitem_set_icon_region
cdef godot_method_bind *bind_treeitem_set_metadata
cdef godot_method_bind *bind_treeitem_set_range
cdef godot_method_bind *bind_treeitem_set_range_config
cdef godot_method_bind *bind_treeitem_set_selectable
cdef godot_method_bind *bind_treeitem_set_text
cdef godot_method_bind *bind_treeitem_set_text_align
cdef godot_method_bind *bind_treeitem_set_tooltip
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_treeitem_add_button = api_core.godot_method_bind_get_method('TreeItem', 'add_button')
  bind_treeitem_call_recursive = api_core.godot_method_bind_get_method('TreeItem', 'call_recursive')
  bind_treeitem_clear_custom_bg_color = api_core.godot_method_bind_get_method('TreeItem', 'clear_custom_bg_color')
  bind_treeitem_clear_custom_color = api_core.godot_method_bind_get_method('TreeItem', 'clear_custom_color')
  bind_treeitem_deselect = api_core.godot_method_bind_get_method('TreeItem', 'deselect')
  bind_treeitem_erase_button = api_core.godot_method_bind_get_method('TreeItem', 'erase_button')
  bind_treeitem_get_button = api_core.godot_method_bind_get_method('TreeItem', 'get_button')
  bind_treeitem_get_button_count = api_core.godot_method_bind_get_method('TreeItem', 'get_button_count')
  bind_treeitem_get_button_tooltip = api_core.godot_method_bind_get_method('TreeItem', 'get_button_tooltip')
  bind_treeitem_get_cell_mode = api_core.godot_method_bind_get_method('TreeItem', 'get_cell_mode')
  bind_treeitem_get_children = api_core.godot_method_bind_get_method('TreeItem', 'get_children')
  bind_treeitem_get_custom_bg_color = api_core.godot_method_bind_get_method('TreeItem', 'get_custom_bg_color')
  bind_treeitem_get_custom_color = api_core.godot_method_bind_get_method('TreeItem', 'get_custom_color')
  bind_treeitem_get_custom_minimum_height = api_core.godot_method_bind_get_method('TreeItem', 'get_custom_minimum_height')
  bind_treeitem_get_expand_right = api_core.godot_method_bind_get_method('TreeItem', 'get_expand_right')
  bind_treeitem_get_icon = api_core.godot_method_bind_get_method('TreeItem', 'get_icon')
  bind_treeitem_get_icon_max_width = api_core.godot_method_bind_get_method('TreeItem', 'get_icon_max_width')
  bind_treeitem_get_icon_modulate = api_core.godot_method_bind_get_method('TreeItem', 'get_icon_modulate')
  bind_treeitem_get_icon_region = api_core.godot_method_bind_get_method('TreeItem', 'get_icon_region')
  bind_treeitem_get_metadata = api_core.godot_method_bind_get_method('TreeItem', 'get_metadata')
  bind_treeitem_get_next = api_core.godot_method_bind_get_method('TreeItem', 'get_next')
  bind_treeitem_get_next_visible = api_core.godot_method_bind_get_method('TreeItem', 'get_next_visible')
  bind_treeitem_get_parent = api_core.godot_method_bind_get_method('TreeItem', 'get_parent')
  bind_treeitem_get_prev = api_core.godot_method_bind_get_method('TreeItem', 'get_prev')
  bind_treeitem_get_prev_visible = api_core.godot_method_bind_get_method('TreeItem', 'get_prev_visible')
  bind_treeitem_get_range = api_core.godot_method_bind_get_method('TreeItem', 'get_range')
  bind_treeitem_get_range_config = api_core.godot_method_bind_get_method('TreeItem', 'get_range_config')
  bind_treeitem_get_text = api_core.godot_method_bind_get_method('TreeItem', 'get_text')
  bind_treeitem_get_text_align = api_core.godot_method_bind_get_method('TreeItem', 'get_text_align')
  bind_treeitem_get_tooltip = api_core.godot_method_bind_get_method('TreeItem', 'get_tooltip')
  bind_treeitem_is_button_disabled = api_core.godot_method_bind_get_method('TreeItem', 'is_button_disabled')
  bind_treeitem_is_checked = api_core.godot_method_bind_get_method('TreeItem', 'is_checked')
  bind_treeitem_is_collapsed = api_core.godot_method_bind_get_method('TreeItem', 'is_collapsed')
  bind_treeitem_is_custom_set_as_button = api_core.godot_method_bind_get_method('TreeItem', 'is_custom_set_as_button')
  bind_treeitem_is_editable = api_core.godot_method_bind_get_method('TreeItem', 'is_editable')
  bind_treeitem_is_folding_disabled = api_core.godot_method_bind_get_method('TreeItem', 'is_folding_disabled')
  bind_treeitem_is_selectable = api_core.godot_method_bind_get_method('TreeItem', 'is_selectable')
  bind_treeitem_is_selected = api_core.godot_method_bind_get_method('TreeItem', 'is_selected')
  bind_treeitem_move_to_bottom = api_core.godot_method_bind_get_method('TreeItem', 'move_to_bottom')
  bind_treeitem_move_to_top = api_core.godot_method_bind_get_method('TreeItem', 'move_to_top')
  bind_treeitem_remove_child = api_core.godot_method_bind_get_method('TreeItem', 'remove_child')
  bind_treeitem_select = api_core.godot_method_bind_get_method('TreeItem', 'select')
  bind_treeitem_set_button = api_core.godot_method_bind_get_method('TreeItem', 'set_button')
  bind_treeitem_set_button_disabled = api_core.godot_method_bind_get_method('TreeItem', 'set_button_disabled')
  bind_treeitem_set_cell_mode = api_core.godot_method_bind_get_method('TreeItem', 'set_cell_mode')
  bind_treeitem_set_checked = api_core.godot_method_bind_get_method('TreeItem', 'set_checked')
  bind_treeitem_set_collapsed = api_core.godot_method_bind_get_method('TreeItem', 'set_collapsed')
  bind_treeitem_set_custom_as_button = api_core.godot_method_bind_get_method('TreeItem', 'set_custom_as_button')
  bind_treeitem_set_custom_bg_color = api_core.godot_method_bind_get_method('TreeItem', 'set_custom_bg_color')
  bind_treeitem_set_custom_color = api_core.godot_method_bind_get_method('TreeItem', 'set_custom_color')
  bind_treeitem_set_custom_draw = api_core.godot_method_bind_get_method('TreeItem', 'set_custom_draw')
  bind_treeitem_set_custom_minimum_height = api_core.godot_method_bind_get_method('TreeItem', 'set_custom_minimum_height')
  bind_treeitem_set_disable_folding = api_core.godot_method_bind_get_method('TreeItem', 'set_disable_folding')
  bind_treeitem_set_editable = api_core.godot_method_bind_get_method('TreeItem', 'set_editable')
  bind_treeitem_set_expand_right = api_core.godot_method_bind_get_method('TreeItem', 'set_expand_right')
  bind_treeitem_set_icon = api_core.godot_method_bind_get_method('TreeItem', 'set_icon')
  bind_treeitem_set_icon_max_width = api_core.godot_method_bind_get_method('TreeItem', 'set_icon_max_width')
  bind_treeitem_set_icon_modulate = api_core.godot_method_bind_get_method('TreeItem', 'set_icon_modulate')
  bind_treeitem_set_icon_region = api_core.godot_method_bind_get_method('TreeItem', 'set_icon_region')
  bind_treeitem_set_metadata = api_core.godot_method_bind_get_method('TreeItem', 'set_metadata')
  bind_treeitem_set_range = api_core.godot_method_bind_get_method('TreeItem', 'set_range')
  bind_treeitem_set_range_config = api_core.godot_method_bind_get_method('TreeItem', 'set_range_config')
  bind_treeitem_set_selectable = api_core.godot_method_bind_get_method('TreeItem', 'set_selectable')
  bind_treeitem_set_text = api_core.godot_method_bind_get_method('TreeItem', 'set_text')
  bind_treeitem_set_text_align = api_core.godot_method_bind_get_method('TreeItem', 'set_text_align')
  bind_treeitem_set_tooltip = api_core.godot_method_bind_get_method('TreeItem', 'set_tooltip')

############################Generated class###################################
cdef class TreeItem(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TreeItem")())
##################################Generated Properties#########################################
  @property
  def collapsed(self): 
    return self.get_collapsed()
  @collapsed.setter 
  def collapsed(self,value): 
    self.set_collapsed(value)
  @property
  def custom_minimum_height(self): 
    return self.get_custom_minimum_height()
  @custom_minimum_height.setter 
  def custom_minimum_height(self,value): 
    self.set_custom_minimum_height(value)
  @property
  def disable_folding(self): 
    return self.get_disable_folding()
  @disable_folding.setter 
  def disable_folding(self,value): 
    self.set_disable_folding(value)

##################################Generated Methods#########################################
  def  add_button(self,  int column,  classes.Texture.Texture button,  int button_idx,  bool disabled,  String tooltip):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &column
    args[1] = button.godot_owner
    args[2] = &button_idx
    args[3] = &disabled
    args[4] = &tooltip._native
    api_core.godot_method_bind_ptrcall(bind_treeitem_add_button,self.godot_owner,args,NULL)
    hello('hallo2')
  def  call_recursive(self,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &method._native
    api_core.godot_method_bind_ptrcall(bind_treeitem_call_recursive,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  clear_custom_bg_color(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_clear_custom_bg_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_custom_color(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_clear_custom_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  deselect(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_deselect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  erase_button(self,  int column,  int button_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &button_idx
    api_core.godot_method_bind_ptrcall(bind_treeitem_erase_button,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_button(self,  int column,  int button_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &column
    args[1] = &button_idx
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_button,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_button_count(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_button_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_button_tooltip(self,  int column,  int button_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[2]

    args[0] = &column
    args[1] = &button_idx
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_button_tooltip,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_cell_mode(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef TreeItem_TreeCellMode* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_cell_mode,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_children(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_treeitem_get_children,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_custom_bg_color(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_custom_bg_color,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_custom_color(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_custom_color,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_custom_minimum_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_treeitem_get_custom_minimum_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_expand_right(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_expand_right,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_icon(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_icon,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_icon_max_width(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_icon_max_width,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_icon_modulate(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_icon_modulate,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_icon_region(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_icon_region,self.godot_owner,args,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_metadata(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_metadata,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_next(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_treeitem_get_next,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_next_visible(self,  bool wrap):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &wrap
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_next_visible,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_parent(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_treeitem_get_parent,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_prev(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_treeitem_get_prev,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_prev_visible(self,  bool wrap):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &wrap
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_prev_visible,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_range(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_range,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_range_config(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_range_config,self.godot_owner,args,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  get_text(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_text,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_text_align(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef TreeItem_TextAlign* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_text_align,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tooltip(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_get_tooltip,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  is_button_disabled(self,  int column,  int button_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &column
    args[1] = &button_idx
    api_core.godot_method_bind_ptrcall(bind_treeitem_is_button_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_checked(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_is_checked,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_collapsed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_treeitem_is_collapsed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_custom_set_as_button(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_is_custom_set_as_button,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_editable(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_is_editable,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_folding_disabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_treeitem_is_folding_disabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_selectable(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_is_selectable,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_selected(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_is_selected,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  move_to_bottom(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_treeitem_move_to_bottom,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  move_to_top(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_treeitem_move_to_top,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  remove_child(self,  classes.Object.Object child):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = child.godot_owner
    api_core.godot_method_bind_ptrcall(bind_treeitem_remove_child,self.godot_owner,args,NULL)
    hello('hallo2')
  def  select(self,  int column):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &column
    api_core.godot_method_bind_ptrcall(bind_treeitem_select,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_button(self,  int column,  int button_idx,  classes.Texture.Texture button):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &column
    args[1] = &button_idx
    args[2] = button.godot_owner
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_button,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_button_disabled(self,  int column,  int button_idx,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &column
    args[1] = &button_idx
    args[2] = &disabled
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_button_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_cell_mode(self,  int column,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &mode
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_cell_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_checked(self,  int column,  bool checked):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &checked
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_checked,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collapsed(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_collapsed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_custom_as_button(self,  int column,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_custom_as_button,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_custom_bg_color(self,  int column,  Color color,  bool just_outline):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &column
    args[1] = &color._native
    args[2] = &just_outline
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_custom_bg_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_custom_color(self,  int column,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &color._native
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_custom_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_custom_draw(self,  int column,  classes.Object.Object object,  String callback):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &column
    args[1] = object.godot_owner
    args[2] = &callback._native
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_custom_draw,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_custom_minimum_height(self,  int height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &height
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_custom_minimum_height,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_disable_folding(self,  bool disable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &disable
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_disable_folding,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_editable(self,  int column,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &enabled
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_editable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_expand_right(self,  int column,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_expand_right,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_icon(self,  int column,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_icon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_icon_max_width(self,  int column,  int width):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &width
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_icon_max_width,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_icon_modulate(self,  int column,  Color modulate):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &modulate._native
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_icon_modulate,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_icon_region(self,  int column,  Rect2 region):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &region._native
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_icon_region,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_metadata(self,  int column,  Variant meta):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &meta._native
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_metadata,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_range(self,  int column,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_range,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_range_config(self,  int column,  float min,  float max,  float step,  bool expr):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &column
    args[1] = &min
    args[2] = &max
    args[3] = &step
    args[4] = &expr
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_range_config,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_selectable(self,  int column,  bool selectable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &selectable
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_selectable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_text(self,  int column,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &text._native
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_text,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_text_align(self,  int column,  int text_align):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &text_align
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_text_align,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tooltip(self,  int column,  String tooltip):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &column
    args[1] = &tooltip._native
    api_core.godot_method_bind_ptrcall(bind_treeitem_set_tooltip,self.godot_owner,args,NULL)
    hello('hallo2')
