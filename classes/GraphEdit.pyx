from classes.Control cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class GraphEdit(Control):
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
    api_core.godot_method_bind_ptrcall(bind_graphedit__connections_layer_draw,self.godot_owner,[NULL,],NULL)
  def  _graph_node_moved(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__graph_node_moved,self.godot_owner,[NULL,],NULL)
  def  _graph_node_raised(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__graph_node_raised,self.godot_owner,[NULL,],NULL)
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__gui_input,self.godot_owner,[NULL,],NULL)
  def  _scroll_moved(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__scroll_moved,self.godot_owner,[NULL,],NULL)
  def  _snap_toggled(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__snap_toggled,self.godot_owner,[NULL,],NULL)
  def  _snap_value_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__snap_value_changed,self.godot_owner,[NULL,],NULL)
  def  _top_layer_draw(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__top_layer_draw,self.godot_owner,[NULL,],NULL)
  def  _top_layer_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__top_layer_input,self.godot_owner,[NULL,],NULL)
  def  _update_scroll_offset(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__update_scroll_offset,self.godot_owner,[NULL,],NULL)
  def  _zoom_minus(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__zoom_minus,self.godot_owner,[NULL,],NULL)
  def  _zoom_plus(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__zoom_plus,self.godot_owner,[NULL,],NULL)
  def  _zoom_reset(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit__zoom_reset,self.godot_owner,[NULL,],NULL)
  def  add_valid_connection_type(self, from_typeto_type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_add_valid_connection_type,self.godot_owner,[NULL,],NULL)
  def  add_valid_left_disconnect_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_add_valid_left_disconnect_type,self.godot_owner,[NULL,],NULL)
  def  add_valid_right_disconnect_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_add_valid_right_disconnect_type,self.godot_owner,[NULL,],NULL)
  def  clear_connections(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_clear_connections,self.godot_owner,[NULL,],NULL)
  def  connect_node(self, from_, from_porttoto_port):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_graphedit_connect_node,self.godot_owner,[NULL,],&ret)
  def  disconnect_node(self, from_, from_porttoto_port):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_disconnect_node,self.godot_owner,[NULL,],NULL)
  def  get_connection_list(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_graphedit_get_connection_list,self.godot_owner,[NULL,],&ret)
  def  get_scroll_ofs(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_graphedit_get_scroll_ofs,self.godot_owner,[NULL,],&ret)
  def  get_snap(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_graphedit_get_snap,self.godot_owner,[NULL,],&ret)
  def  get_zoom(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_graphedit_get_zoom,self.godot_owner,[NULL,],&ret)
  def  get_zoom_hbox(self):
    cdef godot_object *_owner = self.godot_owner
    cdef HBoxContainer ret
    api_core.godot_method_bind_ptrcall(bind_graphedit_get_zoom_hbox,self.godot_owner,[NULL,],&ret)
  def  is_node_connected(self, from_, from_porttoto_port):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_graphedit_is_node_connected,self.godot_owner,[NULL,],&ret)
  def  is_right_disconnects_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_graphedit_is_right_disconnects_enabled,self.godot_owner,[NULL,],&ret)
  def  is_using_snap(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_graphedit_is_using_snap,self.godot_owner,[NULL,],&ret)
  def  is_valid_connection_type(self, from_typeto_type):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_graphedit_is_valid_connection_type,self.godot_owner,[NULL,],&ret)
  def  remove_valid_connection_type(self, from_typeto_type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_remove_valid_connection_type,self.godot_owner,[NULL,],NULL)
  def  remove_valid_left_disconnect_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_remove_valid_left_disconnect_type,self.godot_owner,[NULL,],NULL)
  def  remove_valid_right_disconnect_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_remove_valid_right_disconnect_type,self.godot_owner,[NULL,],NULL)
  def  set_connection_activity(self, from_, from_porttoto_portamount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_connection_activity,self.godot_owner,[NULL,],NULL)
  def  set_right_disconnects(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_right_disconnects,self.godot_owner,[NULL,],NULL)
  def  set_scroll_ofs(self, ofs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_scroll_ofs,self.godot_owner,[NULL,],NULL)
  def  set_selected(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_selected,self.godot_owner,[NULL,],NULL)
  def  set_snap(self, pixels):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_snap,self.godot_owner,[NULL,],NULL)
  def  set_use_snap(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_use_snap,self.godot_owner,[NULL,],NULL)
  def  set_zoom(self, p_zoom):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_graphedit_set_zoom,self.godot_owner,[NULL,],NULL)
