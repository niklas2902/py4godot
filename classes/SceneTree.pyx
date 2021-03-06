from classes.MainLoop cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_scenetree__change_scene
cdef godot_method_bind *bind_scenetree__connected_to_server
cdef godot_method_bind *bind_scenetree__connection_failed
cdef godot_method_bind *bind_scenetree__network_peer_connected
cdef godot_method_bind *bind_scenetree__network_peer_disconnected
cdef godot_method_bind *bind_scenetree__server_disconnected
cdef godot_method_bind *bind_scenetree_call_group
cdef godot_method_bind *bind_scenetree_call_group_flags
cdef godot_method_bind *bind_scenetree_change_scene
cdef godot_method_bind *bind_scenetree_change_scene_to
cdef godot_method_bind *bind_scenetree_create_timer
cdef godot_method_bind *bind_scenetree_get_current_scene
cdef godot_method_bind *bind_scenetree_get_edited_scene_root
cdef godot_method_bind *bind_scenetree_get_frame
cdef godot_method_bind *bind_scenetree_get_multiplayer
cdef godot_method_bind *bind_scenetree_get_network_connected_peers
cdef godot_method_bind *bind_scenetree_get_network_peer
cdef godot_method_bind *bind_scenetree_get_network_unique_id
cdef godot_method_bind *bind_scenetree_get_node_count
cdef godot_method_bind *bind_scenetree_get_nodes_in_group
cdef godot_method_bind *bind_scenetree_get_root
cdef godot_method_bind *bind_scenetree_get_rpc_sender_id
cdef godot_method_bind *bind_scenetree_has_group
cdef godot_method_bind *bind_scenetree_has_network_peer
cdef godot_method_bind *bind_scenetree_is_debugging_collisions_hint
cdef godot_method_bind *bind_scenetree_is_debugging_navigation_hint
cdef godot_method_bind *bind_scenetree_is_input_handled
cdef godot_method_bind *bind_scenetree_is_multiplayer_poll_enabled
cdef godot_method_bind *bind_scenetree_is_network_server
cdef godot_method_bind *bind_scenetree_is_paused
cdef godot_method_bind *bind_scenetree_is_refusing_new_network_connections
cdef godot_method_bind *bind_scenetree_is_using_font_oversampling
cdef godot_method_bind *bind_scenetree_notify_group
cdef godot_method_bind *bind_scenetree_notify_group_flags
cdef godot_method_bind *bind_scenetree_queue_delete
cdef godot_method_bind *bind_scenetree_quit
cdef godot_method_bind *bind_scenetree_reload_current_scene
cdef godot_method_bind *bind_scenetree_set_auto_accept_quit
cdef godot_method_bind *bind_scenetree_set_current_scene
cdef godot_method_bind *bind_scenetree_set_debug_collisions_hint
cdef godot_method_bind *bind_scenetree_set_debug_navigation_hint
cdef godot_method_bind *bind_scenetree_set_edited_scene_root
cdef godot_method_bind *bind_scenetree_set_group
cdef godot_method_bind *bind_scenetree_set_group_flags
cdef godot_method_bind *bind_scenetree_set_input_as_handled
cdef godot_method_bind *bind_scenetree_set_multiplayer
cdef godot_method_bind *bind_scenetree_set_multiplayer_poll_enabled
cdef godot_method_bind *bind_scenetree_set_network_peer
cdef godot_method_bind *bind_scenetree_set_pause
cdef godot_method_bind *bind_scenetree_set_quit_on_go_back
cdef godot_method_bind *bind_scenetree_set_refuse_new_network_connections
cdef godot_method_bind *bind_scenetree_set_screen_stretch
cdef godot_method_bind *bind_scenetree_set_use_font_oversampling
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_scenetree__change_scene = api_core.godot_method_bind_get_method('SceneTree', '_change_scene')
  bind_scenetree__connected_to_server = api_core.godot_method_bind_get_method('SceneTree', '_connected_to_server')
  bind_scenetree__connection_failed = api_core.godot_method_bind_get_method('SceneTree', '_connection_failed')
  bind_scenetree__network_peer_connected = api_core.godot_method_bind_get_method('SceneTree', '_network_peer_connected')
  bind_scenetree__network_peer_disconnected = api_core.godot_method_bind_get_method('SceneTree', '_network_peer_disconnected')
  bind_scenetree__server_disconnected = api_core.godot_method_bind_get_method('SceneTree', '_server_disconnected')
  bind_scenetree_call_group = api_core.godot_method_bind_get_method('SceneTree', 'call_group')
  bind_scenetree_call_group_flags = api_core.godot_method_bind_get_method('SceneTree', 'call_group_flags')
  bind_scenetree_change_scene = api_core.godot_method_bind_get_method('SceneTree', 'change_scene')
  bind_scenetree_change_scene_to = api_core.godot_method_bind_get_method('SceneTree', 'change_scene_to')
  bind_scenetree_create_timer = api_core.godot_method_bind_get_method('SceneTree', 'create_timer')
  bind_scenetree_get_current_scene = api_core.godot_method_bind_get_method('SceneTree', 'get_current_scene')
  bind_scenetree_get_edited_scene_root = api_core.godot_method_bind_get_method('SceneTree', 'get_edited_scene_root')
  bind_scenetree_get_frame = api_core.godot_method_bind_get_method('SceneTree', 'get_frame')
  bind_scenetree_get_multiplayer = api_core.godot_method_bind_get_method('SceneTree', 'get_multiplayer')
  bind_scenetree_get_network_connected_peers = api_core.godot_method_bind_get_method('SceneTree', 'get_network_connected_peers')
  bind_scenetree_get_network_peer = api_core.godot_method_bind_get_method('SceneTree', 'get_network_peer')
  bind_scenetree_get_network_unique_id = api_core.godot_method_bind_get_method('SceneTree', 'get_network_unique_id')
  bind_scenetree_get_node_count = api_core.godot_method_bind_get_method('SceneTree', 'get_node_count')
  bind_scenetree_get_nodes_in_group = api_core.godot_method_bind_get_method('SceneTree', 'get_nodes_in_group')
  bind_scenetree_get_root = api_core.godot_method_bind_get_method('SceneTree', 'get_root')
  bind_scenetree_get_rpc_sender_id = api_core.godot_method_bind_get_method('SceneTree', 'get_rpc_sender_id')
  bind_scenetree_has_group = api_core.godot_method_bind_get_method('SceneTree', 'has_group')
  bind_scenetree_has_network_peer = api_core.godot_method_bind_get_method('SceneTree', 'has_network_peer')
  bind_scenetree_is_debugging_collisions_hint = api_core.godot_method_bind_get_method('SceneTree', 'is_debugging_collisions_hint')
  bind_scenetree_is_debugging_navigation_hint = api_core.godot_method_bind_get_method('SceneTree', 'is_debugging_navigation_hint')
  bind_scenetree_is_input_handled = api_core.godot_method_bind_get_method('SceneTree', 'is_input_handled')
  bind_scenetree_is_multiplayer_poll_enabled = api_core.godot_method_bind_get_method('SceneTree', 'is_multiplayer_poll_enabled')
  bind_scenetree_is_network_server = api_core.godot_method_bind_get_method('SceneTree', 'is_network_server')
  bind_scenetree_is_paused = api_core.godot_method_bind_get_method('SceneTree', 'is_paused')
  bind_scenetree_is_refusing_new_network_connections = api_core.godot_method_bind_get_method('SceneTree', 'is_refusing_new_network_connections')
  bind_scenetree_is_using_font_oversampling = api_core.godot_method_bind_get_method('SceneTree', 'is_using_font_oversampling')
  bind_scenetree_notify_group = api_core.godot_method_bind_get_method('SceneTree', 'notify_group')
  bind_scenetree_notify_group_flags = api_core.godot_method_bind_get_method('SceneTree', 'notify_group_flags')
  bind_scenetree_queue_delete = api_core.godot_method_bind_get_method('SceneTree', 'queue_delete')
  bind_scenetree_quit = api_core.godot_method_bind_get_method('SceneTree', 'quit')
  bind_scenetree_reload_current_scene = api_core.godot_method_bind_get_method('SceneTree', 'reload_current_scene')
  bind_scenetree_set_auto_accept_quit = api_core.godot_method_bind_get_method('SceneTree', 'set_auto_accept_quit')
  bind_scenetree_set_current_scene = api_core.godot_method_bind_get_method('SceneTree', 'set_current_scene')
  bind_scenetree_set_debug_collisions_hint = api_core.godot_method_bind_get_method('SceneTree', 'set_debug_collisions_hint')
  bind_scenetree_set_debug_navigation_hint = api_core.godot_method_bind_get_method('SceneTree', 'set_debug_navigation_hint')
  bind_scenetree_set_edited_scene_root = api_core.godot_method_bind_get_method('SceneTree', 'set_edited_scene_root')
  bind_scenetree_set_group = api_core.godot_method_bind_get_method('SceneTree', 'set_group')
  bind_scenetree_set_group_flags = api_core.godot_method_bind_get_method('SceneTree', 'set_group_flags')
  bind_scenetree_set_input_as_handled = api_core.godot_method_bind_get_method('SceneTree', 'set_input_as_handled')
  bind_scenetree_set_multiplayer = api_core.godot_method_bind_get_method('SceneTree', 'set_multiplayer')
  bind_scenetree_set_multiplayer_poll_enabled = api_core.godot_method_bind_get_method('SceneTree', 'set_multiplayer_poll_enabled')
  bind_scenetree_set_network_peer = api_core.godot_method_bind_get_method('SceneTree', 'set_network_peer')
  bind_scenetree_set_pause = api_core.godot_method_bind_get_method('SceneTree', 'set_pause')
  bind_scenetree_set_quit_on_go_back = api_core.godot_method_bind_get_method('SceneTree', 'set_quit_on_go_back')
  bind_scenetree_set_refuse_new_network_connections = api_core.godot_method_bind_get_method('SceneTree', 'set_refuse_new_network_connections')
  bind_scenetree_set_screen_stretch = api_core.godot_method_bind_get_method('SceneTree', 'set_screen_stretch')
  bind_scenetree_set_use_font_oversampling = api_core.godot_method_bind_get_method('SceneTree', 'set_use_font_oversampling')

############################Generated class###################################
cdef class SceneTree(MainLoop):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SceneTree")())
##################################Generated Properties#########################################
  @property
  def current_scene(self): 
    return self.get_current_scene()
  @current_scene.setter 
  def current_scene(self,value): 
    self.set_current_scene(value)
  @property
  def debug_collisions_hint(self): 
    return self.get_debug_collisions_hint()
  @debug_collisions_hint.setter 
  def debug_collisions_hint(self,value): 
    self.set_debug_collisions_hint(value)
  @property
  def debug_navigation_hint(self): 
    return self.get_debug_navigation_hint()
  @debug_navigation_hint.setter 
  def debug_navigation_hint(self,value): 
    self.set_debug_navigation_hint(value)
  @property
  def edited_scene_root(self): 
    return self.get_edited_scene_root()
  @edited_scene_root.setter 
  def edited_scene_root(self,value): 
    self.set_edited_scene_root(value)
  @property
  def multiplayer(self): 
    return self.get_multiplayer()
  @multiplayer.setter 
  def multiplayer(self,value): 
    self.set_multiplayer(value)
  @property
  def multiplayer_poll(self): 
    return self.get_multiplayer_poll()
  @multiplayer_poll.setter 
  def multiplayer_poll(self,value): 
    self.set_multiplayer_poll(value)
  @property
  def network_peer(self): 
    return self.get_network_peer()
  @network_peer.setter 
  def network_peer(self,value): 
    self.set_network_peer(value)
  @property
  def paused(self): 
    return self.get_paused()
  @paused.setter 
  def paused(self,value): 
    self.set_paused(value)
  @property
  def refuse_new_network_connections(self): 
    return self.get_refuse_new_network_connections()
  @refuse_new_network_connections.setter 
  def refuse_new_network_connections(self,value): 
    self.set_refuse_new_network_connections(value)
  @property
  def root(self): 
    return self.get_root()
  @root.setter 
  def root(self,value): 
    self.set_root(value)
  @property
  def use_font_oversampling(self): 
    return self.get_use_font_oversampling()
  @use_font_oversampling.setter 
  def use_font_oversampling(self,value): 
    self.set_use_font_oversampling(value)

##################################Generated Methods#########################################
  def  _change_scene(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree__change_scene,self.godot_owner,[NULL,],NULL)
  def  _connected_to_server(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree__connected_to_server,self.godot_owner,[NULL,],NULL)
  def  _connection_failed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree__connection_failed,self.godot_owner,[NULL,],NULL)
  def  _network_peer_connected(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree__network_peer_connected,self.godot_owner,[NULL,],NULL)
  def  _network_peer_disconnected(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree__network_peer_disconnected,self.godot_owner,[NULL,],NULL)
  def  _server_disconnected(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree__server_disconnected,self.godot_owner,[NULL,],NULL)
  def  call_group(self, groupmethod):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_call_group,self.godot_owner,[NULL,],&ret)
  def  call_group_flags(self, flagsgroupmethod):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_call_group_flags,self.godot_owner,[NULL,],&ret)
  def  change_scene(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_change_scene,self.godot_owner,[NULL,],&ret)
  def  change_scene_to(self, packed_scene):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_change_scene_to,self.godot_owner,[NULL,],&ret)
  def  create_timer(self, time_secpause_mode_process):
    cdef godot_object *_owner = self.godot_owner
    cdef SceneTreeTimer ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_create_timer,self.godot_owner,[NULL,],&ret)
  def  get_current_scene(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Node ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_get_current_scene,self.godot_owner,[NULL,],&ret)
  def  get_edited_scene_root(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Node ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_get_edited_scene_root,self.godot_owner,[NULL,],&ret)
  def  get_frame(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_get_frame,self.godot_owner,[NULL,],&ret)
  def  get_multiplayer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef MultiplayerAPI ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_get_multiplayer,self.godot_owner,[NULL,],&ret)
  def  get_network_connected_peers(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_get_network_connected_peers,self.godot_owner,[NULL,],&ret)
  def  get_network_peer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NetworkedMultiplayerPeer ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_get_network_peer,self.godot_owner,[NULL,],&ret)
  def  get_network_unique_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_get_network_unique_id,self.godot_owner,[NULL,],&ret)
  def  get_node_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_get_node_count,self.godot_owner,[NULL,],&ret)
  def  get_nodes_in_group(self, group):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_get_nodes_in_group,self.godot_owner,[NULL,],&ret)
  def  get_root(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Viewport ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_get_root,self.godot_owner,[NULL,],&ret)
  def  get_rpc_sender_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_get_rpc_sender_id,self.godot_owner,[NULL,],&ret)
  def  has_group(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_has_group,self.godot_owner,[NULL,],&ret)
  def  has_network_peer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_has_network_peer,self.godot_owner,[NULL,],&ret)
  def  is_debugging_collisions_hint(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_is_debugging_collisions_hint,self.godot_owner,[NULL,],&ret)
  def  is_debugging_navigation_hint(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_is_debugging_navigation_hint,self.godot_owner,[NULL,],&ret)
  def  is_input_handled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_is_input_handled,self.godot_owner,[NULL,],&ret)
  def  is_multiplayer_poll_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_is_multiplayer_poll_enabled,self.godot_owner,[NULL,],&ret)
  def  is_network_server(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_is_network_server,self.godot_owner,[NULL,],&ret)
  def  is_paused(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_is_paused,self.godot_owner,[NULL,],&ret)
  def  is_refusing_new_network_connections(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_is_refusing_new_network_connections,self.godot_owner,[NULL,],&ret)
  def  is_using_font_oversampling(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_is_using_font_oversampling,self.godot_owner,[NULL,],&ret)
  def  notify_group(self, groupnotification):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_notify_group,self.godot_owner,[NULL,],NULL)
  def  notify_group_flags(self, call_flagsgroupnotification):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_notify_group_flags,self.godot_owner,[NULL,],NULL)
  def  queue_delete(self, obj):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_queue_delete,self.godot_owner,[NULL,],NULL)
  def  quit(self, exit_code):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_quit,self.godot_owner,[NULL,],NULL)
  def  reload_current_scene(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_scenetree_reload_current_scene,self.godot_owner,[NULL,],&ret)
  def  set_auto_accept_quit(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_auto_accept_quit,self.godot_owner,[NULL,],NULL)
  def  set_current_scene(self, child_node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_current_scene,self.godot_owner,[NULL,],NULL)
  def  set_debug_collisions_hint(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_debug_collisions_hint,self.godot_owner,[NULL,],NULL)
  def  set_debug_navigation_hint(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_debug_navigation_hint,self.godot_owner,[NULL,],NULL)
  def  set_edited_scene_root(self, scene):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_edited_scene_root,self.godot_owner,[NULL,],NULL)
  def  set_group(self, grouppropertyvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_group,self.godot_owner,[NULL,],NULL)
  def  set_group_flags(self, call_flagsgrouppropertyvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_group_flags,self.godot_owner,[NULL,],NULL)
  def  set_input_as_handled(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_input_as_handled,self.godot_owner,[NULL,],NULL)
  def  set_multiplayer(self, multiplayer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_multiplayer,self.godot_owner,[NULL,],NULL)
  def  set_multiplayer_poll_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_multiplayer_poll_enabled,self.godot_owner,[NULL,],NULL)
  def  set_network_peer(self, peer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_network_peer,self.godot_owner,[NULL,],NULL)
  def  set_pause(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_pause,self.godot_owner,[NULL,],NULL)
  def  set_quit_on_go_back(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_quit_on_go_back,self.godot_owner,[NULL,],NULL)
  def  set_refuse_new_network_connections(self, refuse):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_refuse_new_network_connections,self.godot_owner,[NULL,],NULL)
  def  set_screen_stretch(self, modeaspectminsizeshrink):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_screen_stretch,self.godot_owner,[NULL,],NULL)
  def  set_use_font_oversampling(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_use_font_oversampling,self.godot_owner,[NULL,],NULL)
