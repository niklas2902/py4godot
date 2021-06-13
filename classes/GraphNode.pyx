
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
cimport classes.Container 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_graphnode__gui_input
cdef godot_method_bind *bind_graphnode_clear_all_slots
cdef godot_method_bind *bind_graphnode_clear_slot
cdef godot_method_bind *bind_graphnode_get_connection_input_color
cdef godot_method_bind *bind_graphnode_get_connection_input_count
cdef godot_method_bind *bind_graphnode_get_connection_input_position
cdef godot_method_bind *bind_graphnode_get_connection_input_type
cdef godot_method_bind *bind_graphnode_get_connection_output_color
cdef godot_method_bind *bind_graphnode_get_connection_output_count
cdef godot_method_bind *bind_graphnode_get_connection_output_position
cdef godot_method_bind *bind_graphnode_get_connection_output_type
cdef godot_method_bind *bind_graphnode_get_offset
cdef godot_method_bind *bind_graphnode_get_overlay
cdef godot_method_bind *bind_graphnode_get_slot_color_left
cdef godot_method_bind *bind_graphnode_get_slot_color_right
cdef godot_method_bind *bind_graphnode_get_slot_type_left
cdef godot_method_bind *bind_graphnode_get_slot_type_right
cdef godot_method_bind *bind_graphnode_get_title
cdef godot_method_bind *bind_graphnode_is_close_button_visible
cdef godot_method_bind *bind_graphnode_is_comment
cdef godot_method_bind *bind_graphnode_is_resizable
cdef godot_method_bind *bind_graphnode_is_selected
cdef godot_method_bind *bind_graphnode_is_slot_enabled_left
cdef godot_method_bind *bind_graphnode_is_slot_enabled_right
cdef godot_method_bind *bind_graphnode_set_comment
cdef godot_method_bind *bind_graphnode_set_offset
cdef godot_method_bind *bind_graphnode_set_overlay
cdef godot_method_bind *bind_graphnode_set_resizable
cdef godot_method_bind *bind_graphnode_set_selected
cdef godot_method_bind *bind_graphnode_set_show_close_button
cdef godot_method_bind *bind_graphnode_set_slot
cdef godot_method_bind *bind_graphnode_set_title
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_graphnode__gui_input = api_core.godot_method_bind_get_method('GraphNode', '_gui_input')
  bind_graphnode_clear_all_slots = api_core.godot_method_bind_get_method('GraphNode', 'clear_all_slots')
  bind_graphnode_clear_slot = api_core.godot_method_bind_get_method('GraphNode', 'clear_slot')
  bind_graphnode_get_connection_input_color = api_core.godot_method_bind_get_method('GraphNode', 'get_connection_input_color')
  bind_graphnode_get_connection_input_count = api_core.godot_method_bind_get_method('GraphNode', 'get_connection_input_count')
  bind_graphnode_get_connection_input_position = api_core.godot_method_bind_get_method('GraphNode', 'get_connection_input_position')
  bind_graphnode_get_connection_input_type = api_core.godot_method_bind_get_method('GraphNode', 'get_connection_input_type')
  bind_graphnode_get_connection_output_color = api_core.godot_method_bind_get_method('GraphNode', 'get_connection_output_color')
  bind_graphnode_get_connection_output_count = api_core.godot_method_bind_get_method('GraphNode', 'get_connection_output_count')
  bind_graphnode_get_connection_output_position = api_core.godot_method_bind_get_method('GraphNode', 'get_connection_output_position')
  bind_graphnode_get_connection_output_type = api_core.godot_method_bind_get_method('GraphNode', 'get_connection_output_type')
  bind_graphnode_get_offset = api_core.godot_method_bind_get_method('GraphNode', 'get_offset')
  bind_graphnode_get_overlay = api_core.godot_method_bind_get_method('GraphNode', 'get_overlay')
  bind_graphnode_get_slot_color_left = api_core.godot_method_bind_get_method('GraphNode', 'get_slot_color_left')
  bind_graphnode_get_slot_color_right = api_core.godot_method_bind_get_method('GraphNode', 'get_slot_color_right')
  bind_graphnode_get_slot_type_left = api_core.godot_method_bind_get_method('GraphNode', 'get_slot_type_left')
  bind_graphnode_get_slot_type_right = api_core.godot_method_bind_get_method('GraphNode', 'get_slot_type_right')
  bind_graphnode_get_title = api_core.godot_method_bind_get_method('GraphNode', 'get_title')
  bind_graphnode_is_close_button_visible = api_core.godot_method_bind_get_method('GraphNode', 'is_close_button_visible')
  bind_graphnode_is_comment = api_core.godot_method_bind_get_method('GraphNode', 'is_comment')
  bind_graphnode_is_resizable = api_core.godot_method_bind_get_method('GraphNode', 'is_resizable')
  bind_graphnode_is_selected = api_core.godot_method_bind_get_method('GraphNode', 'is_selected')
  bind_graphnode_is_slot_enabled_left = api_core.godot_method_bind_get_method('GraphNode', 'is_slot_enabled_left')
  bind_graphnode_is_slot_enabled_right = api_core.godot_method_bind_get_method('GraphNode', 'is_slot_enabled_right')
  bind_graphnode_set_comment = api_core.godot_method_bind_get_method('GraphNode', 'set_comment')
  bind_graphnode_set_offset = api_core.godot_method_bind_get_method('GraphNode', 'set_offset')
  bind_graphnode_set_overlay = api_core.godot_method_bind_get_method('GraphNode', 'set_overlay')
  bind_graphnode_set_resizable = api_core.godot_method_bind_get_method('GraphNode', 'set_resizable')
  bind_graphnode_set_selected = api_core.godot_method_bind_get_method('GraphNode', 'set_selected')
  bind_graphnode_set_show_close_button = api_core.godot_method_bind_get_method('GraphNode', 'set_show_close_button')
  bind_graphnode_set_slot = api_core.godot_method_bind_get_method('GraphNode', 'set_slot')
  bind_graphnode_set_title = api_core.godot_method_bind_get_method('GraphNode', 'set_title')

############################Generated class###################################
cdef class GraphNode(classes.Container.Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GraphNode")())
##################################Generated Properties#########################################
  @property
  def comment(self): 
    return self.get_comment()
  @comment.setter 
  def comment(self,value): 
    self.set_comment(value)
  @property
  def offset(self): 
    return self.get_offset()
  @offset.setter 
  def offset(self,value): 
    self.set_offset(value)
  @property
  def overlay(self): 
    return self.get_overlay()
  @overlay.setter 
  def overlay(self,value): 
    self.set_overlay(value)
  @property
  def resizable(self): 
    return self.get_resizable()
  @resizable.setter 
  def resizable(self,value): 
    self.set_resizable(value)
  @property
  def selected(self): 
    return self.get_selected()
  @selected.setter 
  def selected(self,value): 
    self.set_selected(value)
  @property
  def show_close(self): 
    return self.get_show_close()
  @show_close.setter 
  def show_close(self,value): 
    self.set_show_close(value)
  @property
  def title(self): 
    return self.get_title()
  @title.setter 
  def title(self,value): 
    self.set_title(value)

##################################Generated Methods#########################################
  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphnode__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_all_slots(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_graphnode_clear_all_slots,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  clear_slot(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_clear_slot,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_connection_input_color(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_get_connection_input_color,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_connection_input_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphnode_get_connection_input_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_connection_input_position(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_get_connection_input_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_connection_input_type(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_get_connection_input_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_connection_output_color(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_get_connection_output_color,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_connection_output_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphnode_get_connection_output_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_connection_output_position(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_get_connection_output_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_connection_output_type(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_get_connection_output_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphnode_get_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_overlay(self):
    cdef godot_object *_owner = self.godot_owner

    cdef GraphNode_Overlay* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphnode_get_overlay,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_slot_color_left(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_get_slot_color_left,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_slot_color_right(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_get_slot_color_right,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_slot_type_left(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_get_slot_type_left,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_slot_type_right(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_get_slot_type_right,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_title(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphnode_get_title,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  is_close_button_visible(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphnode_is_close_button_visible,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_comment(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphnode_is_comment,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_resizable(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphnode_is_resizable,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_selected(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphnode_is_selected,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_slot_enabled_left(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_is_slot_enabled_left,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_slot_enabled_right(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_graphnode_is_slot_enabled_right,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_comment(self,  bool comment):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &comment
    api_core.godot_method_bind_ptrcall(bind_graphnode_set_comment,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_offset(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_graphnode_set_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_overlay(self,  int overlay):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &overlay
    api_core.godot_method_bind_ptrcall(bind_graphnode_set_overlay,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_resizable(self,  bool resizable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &resizable
    api_core.godot_method_bind_ptrcall(bind_graphnode_set_resizable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_selected(self,  bool selected):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &selected
    api_core.godot_method_bind_ptrcall(bind_graphnode_set_selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_show_close_button(self,  bool show):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &show
    api_core.godot_method_bind_ptrcall(bind_graphnode_set_show_close_button,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_slot(self,  int idx,  bool enable_left,  int type_left,  Color color_left,  bool enable_right,  int type_right,  Color color_right,  classes.Texture.Texture custom_left,  classes.Texture.Texture custom_right):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[9]

    args[0] = &idx
    args[1] = &enable_left
    args[2] = &type_left
    args[3] = &color_left._native
    args[4] = &enable_right
    args[5] = &type_right
    args[6] = &color_right._native
    args[7] = custom_left.godot_owner
    args[8] = custom_right.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphnode_set_slot,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_title(self,  String title):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &title._native
    api_core.godot_method_bind_ptrcall(bind_graphnode_set_title,self.godot_owner,args,NULL)
    hello('hallo2')
