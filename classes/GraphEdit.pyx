
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
cimport classes.Node
cimport classes.Node
cimport classes.InputEvent
cimport classes.InputEvent
cimport classes.Node
cimport classes.Control 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_graphedit__connections_layer_draw
cdef godot_method_bind *bind_graphedit__graph_node_moved
cdef godot_method_bind *bind_graphedit__graph_node_raised
cdef godot_method_bind *bind_graphedit__gui_input
cdef godot_method_bind *bind_graphedit__scroll_moved
cdef godot_method_bind *bind_graphedit__snap_toggled
cdef godot_method_bind *bind_graphedit__snap_value_changed
cdef godot_method_bind *bind_graphedit__top_layer_draw
cdef godot_method_bind *bind_graphedit__top_layer_input
cdef godot_method_bind *bind_graphedit__update_scroll_offset
cdef godot_method_bind *bind_graphedit__zoom_minus
cdef godot_method_bind *bind_graphedit__zoom_plus
cdef godot_method_bind *bind_graphedit__zoom_reset
cdef godot_method_bind *bind_graphedit_add_valid_connection_type
cdef godot_method_bind *bind_graphedit_add_valid_left_disconnect_type
cdef godot_method_bind *bind_graphedit_add_valid_right_disconnect_type
cdef godot_method_bind *bind_graphedit_clear_connections
cdef godot_method_bind *bind_graphedit_connect_node
cdef godot_method_bind *bind_graphedit_disconnect_node
cdef godot_method_bind *bind_graphedit_get_connection_list
cdef godot_method_bind *bind_graphedit_get_scroll_ofs
cdef godot_method_bind *bind_graphedit_get_snap
cdef godot_method_bind *bind_graphedit_get_zoom
cdef godot_method_bind *bind_graphedit_get_zoom_hbox
cdef godot_method_bind *bind_graphedit_is_node_connected
cdef godot_method_bind *bind_graphedit_is_right_disconnects_enabled
cdef godot_method_bind *bind_graphedit_is_using_snap
cdef godot_method_bind *bind_graphedit_is_valid_connection_type
cdef godot_method_bind *bind_graphedit_remove_valid_connection_type
cdef godot_method_bind *bind_graphedit_remove_valid_left_disconnect_type
cdef godot_method_bind *bind_graphedit_remove_valid_right_disconnect_type
cdef godot_method_bind *bind_graphedit_set_connection_activity
cdef godot_method_bind *bind_graphedit_set_right_disconnects
cdef godot_method_bind *bind_graphedit_set_scroll_ofs
cdef godot_method_bind *bind_graphedit_set_selected
cdef godot_method_bind *bind_graphedit_set_snap
cdef godot_method_bind *bind_graphedit_set_use_snap
cdef godot_method_bind *bind_graphedit_set_zoom
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_graphedit__connections_layer_draw = api_core.godot_method_bind_get_method('GraphEdit', '_connections_layer_draw')
  bind_graphedit__graph_node_moved = api_core.godot_method_bind_get_method('GraphEdit', '_graph_node_moved')
  bind_graphedit__graph_node_raised = api_core.godot_method_bind_get_method('GraphEdit', '_graph_node_raised')
  bind_graphedit__gui_input = api_core.godot_method_bind_get_method('GraphEdit', '_gui_input')
  bind_graphedit__scroll_moved = api_core.godot_method_bind_get_method('GraphEdit', '_scroll_moved')
  bind_graphedit__snap_toggled = api_core.godot_method_bind_get_method('GraphEdit', '_snap_toggled')
  bind_graphedit__snap_value_changed = api_core.godot_method_bind_get_method('GraphEdit', '_snap_value_changed')
  bind_graphedit__top_layer_draw = api_core.godot_method_bind_get_method('GraphEdit', '_top_layer_draw')
  bind_graphedit__top_layer_input = api_core.godot_method_bind_get_method('GraphEdit', '_top_layer_input')
  bind_graphedit__update_scroll_offset = api_core.godot_method_bind_get_method('GraphEdit', '_update_scroll_offset')
  bind_graphedit__zoom_minus = api_core.godot_method_bind_get_method('GraphEdit', '_zoom_minus')
  bind_graphedit__zoom_plus = api_core.godot_method_bind_get_method('GraphEdit', '_zoom_plus')
  bind_graphedit__zoom_reset = api_core.godot_method_bind_get_method('GraphEdit', '_zoom_reset')
  bind_graphedit_add_valid_connection_type = api_core.godot_method_bind_get_method('GraphEdit', 'add_valid_connection_type')
  bind_graphedit_add_valid_left_disconnect_type = api_core.godot_method_bind_get_method('GraphEdit', 'add_valid_left_disconnect_type')
  bind_graphedit_add_valid_right_disconnect_type = api_core.godot_method_bind_get_method('GraphEdit', 'add_valid_right_disconnect_type')
  bind_graphedit_clear_connections = api_core.godot_method_bind_get_method('GraphEdit', 'clear_connections')
  bind_graphedit_connect_node = api_core.godot_method_bind_get_method('GraphEdit', 'connect_node')
  bind_graphedit_disconnect_node = api_core.godot_method_bind_get_method('GraphEdit', 'disconnect_node')
  bind_graphedit_get_connection_list = api_core.godot_method_bind_get_method('GraphEdit', 'get_connection_list')
  bind_graphedit_get_scroll_ofs = api_core.godot_method_bind_get_method('GraphEdit', 'get_scroll_ofs')
  bind_graphedit_get_snap = api_core.godot_method_bind_get_method('GraphEdit', 'get_snap')
  bind_graphedit_get_zoom = api_core.godot_method_bind_get_method('GraphEdit', 'get_zoom')
  bind_graphedit_get_zoom_hbox = api_core.godot_method_bind_get_method('GraphEdit', 'get_zoom_hbox')
  bind_graphedit_is_node_connected = api_core.godot_method_bind_get_method('GraphEdit', 'is_node_connected')
  bind_graphedit_is_right_disconnects_enabled = api_core.godot_method_bind_get_method('GraphEdit', 'is_right_disconnects_enabled')
  bind_graphedit_is_using_snap = api_core.godot_method_bind_get_method('GraphEdit', 'is_using_snap')
  bind_graphedit_is_valid_connection_type = api_core.godot_method_bind_get_method('GraphEdit', 'is_valid_connection_type')
  bind_graphedit_remove_valid_connection_type = api_core.godot_method_bind_get_method('GraphEdit', 'remove_valid_connection_type')
  bind_graphedit_remove_valid_left_disconnect_type = api_core.godot_method_bind_get_method('GraphEdit', 'remove_valid_left_disconnect_type')
  bind_graphedit_remove_valid_right_disconnect_type = api_core.godot_method_bind_get_method('GraphEdit', 'remove_valid_right_disconnect_type')
  bind_graphedit_set_connection_activity = api_core.godot_method_bind_get_method('GraphEdit', 'set_connection_activity')
  bind_graphedit_set_right_disconnects = api_core.godot_method_bind_get_method('GraphEdit', 'set_right_disconnects')
  bind_graphedit_set_scroll_ofs = api_core.godot_method_bind_get_method('GraphEdit', 'set_scroll_ofs')
  bind_graphedit_set_selected = api_core.godot_method_bind_get_method('GraphEdit', 'set_selected')
  bind_graphedit_set_snap = api_core.godot_method_bind_get_method('GraphEdit', 'set_snap')
  bind_graphedit_set_use_snap = api_core.godot_method_bind_get_method('GraphEdit', 'set_use_snap')
  bind_graphedit_set_zoom = api_core.godot_method_bind_get_method('GraphEdit', 'set_zoom')

############################Generated class###################################
cdef class GraphEdit(classes.Control.Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GraphEdit")())
##################################Generated Properties#########################################
  @property
  def right_disconnects(self): 
    return self.get_right_disconnects()
  @right_disconnects.setter 
  def right_disconnects(self,value): 
    self.set_right_disconnects(value)
  @property
  def scroll_offset(self): 
    return self.get_scroll_offset()
  @scroll_offset.setter 
  def scroll_offset(self,value): 
    self.set_scroll_offset(value)
  @property
  def snap_distance(self): 
    return self.get_snap_distance()
  @snap_distance.setter 
  def snap_distance(self,value): 
    self.set_snap_distance(value)
  @property
  def use_snap(self): 
    return self.get_use_snap()
  @use_snap.setter 
  def use_snap(self,value): 
    self.set_use_snap(value)
  @property
  def zoom(self): 
    return self.get_zoom()
  @zoom.setter 
  def zoom(self,value): 
    self.set_zoom(value)

##################################Generated Methods#########################################
  def  _connections_layer_draw(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_graphedit__connections_layer_draw,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _graph_node_moved(self,  classes.Node.Node arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__graph_node_moved,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _graph_node_raised(self,  classes.Node.Node arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__graph_node_raised,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _scroll_moved(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_graphedit__scroll_moved,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _snap_toggled(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_graphedit__snap_toggled,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _snap_value_changed(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_graphedit__snap_value_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _top_layer_draw(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_graphedit__top_layer_draw,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _top_layer_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__top_layer_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _update_scroll_offset(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_graphedit__update_scroll_offset,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _zoom_minus(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_graphedit__zoom_minus,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _zoom_plus(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_graphedit__zoom_plus,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _zoom_reset(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_graphedit__zoom_reset,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  add_valid_connection_type(self,  int from_type,  int to_type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &from_type
    args[1] = &to_type
    api_core.godot_method_bind_ptrcall(bind_graphedit_add_valid_connection_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_valid_left_disconnect_type(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_graphedit_add_valid_left_disconnect_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_valid_right_disconnect_type(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_graphedit_add_valid_right_disconnect_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_connections(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_graphedit_clear_connections,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  connect_node(self,  String from_,  int from_port,  String to,  int to_port):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[4]

    args[0] = &from_._native
    args[1] = &from_port
    args[2] = &to._native
    args[3] = &to_port
    api_core.godot_method_bind_ptrcall(bind_graphedit_connect_node,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  disconnect_node(self,  String from_,  int from_port,  String to,  int to_port):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &from_._native
    args[1] = &from_port
    args[2] = &to._native
    args[3] = &to_port
    api_core.godot_method_bind_ptrcall(bind_graphedit_disconnect_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_connection_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphedit_get_connection_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_scroll_ofs(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphedit_get_scroll_ofs,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_snap(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphedit_get_snap,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_zoom(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphedit_get_zoom,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_zoom_hbox(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphedit_get_zoom_hbox,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_node_connected(self,  String from_,  int from_port,  String to,  int to_port):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[4]

    args[0] = &from_._native
    args[1] = &from_port
    args[2] = &to._native
    args[3] = &to_port
    api_core.godot_method_bind_ptrcall(bind_graphedit_is_node_connected,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_right_disconnects_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphedit_is_right_disconnects_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_using_snap(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_graphedit_is_using_snap,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_valid_connection_type(self,  int from_type,  int to_type):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &from_type
    args[1] = &to_type
    api_core.godot_method_bind_ptrcall(bind_graphedit_is_valid_connection_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_valid_connection_type(self,  int from_type,  int to_type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &from_type
    args[1] = &to_type
    api_core.godot_method_bind_ptrcall(bind_graphedit_remove_valid_connection_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_valid_left_disconnect_type(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_graphedit_remove_valid_left_disconnect_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_valid_right_disconnect_type(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_graphedit_remove_valid_right_disconnect_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_connection_activity(self,  String from_,  int from_port,  String to,  int to_port,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &from_._native
    args[1] = &from_port
    args[2] = &to._native
    args[3] = &to_port
    args[4] = &amount
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_connection_activity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_right_disconnects(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_right_disconnects,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_scroll_ofs(self,  Vector2 ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ofs._native
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_scroll_ofs,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_selected(self,  classes.Node.Node node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_snap(self,  int pixels):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pixels
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_snap,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_snap(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_use_snap,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_zoom(self,  float p_zoom):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &p_zoom
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_zoom,self.godot_owner,args,NULL)
    hello('hallo2')
