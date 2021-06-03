
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
cimport classes.PackedScene
cimport classes.Object
cimport classes.Node
cimport classes.Node
cimport classes.MultiplayerAPI
cimport classes.NetworkedMultiplayerPeer
cimport classes.MainLoop 

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
cdef class SceneTree(classes.MainLoop.MainLoop):
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
  def  _change_scene(self,  classes.Node.Node arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree__change_scene,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _connected_to_server(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scenetree__connected_to_server,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _connection_failed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scenetree__connection_failed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _network_peer_connected(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scenetree__network_peer_connected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _network_peer_disconnected(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scenetree__network_peer_disconnected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _server_disconnected(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scenetree__server_disconnected,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  call_group(self,  String group,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &group._native
    args[1] = &method._native
    api_core.godot_method_bind_ptrcall(bind_scenetree_call_group,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  call_group_flags(self,  int flags,  String group,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[3]

    args[0] = &flags
    args[1] = &group._native
    args[2] = &method._native
    api_core.godot_method_bind_ptrcall(bind_scenetree_call_group_flags,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  change_scene(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_scenetree_change_scene,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  change_scene_to(self,  classes.PackedScene.PackedScene packed_scene):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = packed_scene.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_change_scene_to,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  create_timer(self,  float time_sec,  bool pause_mode_process):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &time_sec
    args[1] = &pause_mode_process
    api_core.godot_method_bind_ptrcall(bind_scenetree_create_timer,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_current_scene(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_get_current_scene,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_edited_scene_root(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_get_edited_scene_root,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_frame(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_get_frame,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_multiplayer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_get_multiplayer,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_network_connected_peers(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_get_network_connected_peers,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_network_peer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_get_network_peer,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_network_unique_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_get_network_unique_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_node_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_get_node_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_nodes_in_group(self,  String group):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &group._native
    api_core.godot_method_bind_ptrcall(bind_scenetree_get_nodes_in_group,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_root(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_get_root,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_rpc_sender_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_get_rpc_sender_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_group(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_scenetree_has_group,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_network_peer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_has_network_peer,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_debugging_collisions_hint(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_is_debugging_collisions_hint,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_debugging_navigation_hint(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_is_debugging_navigation_hint,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_input_handled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_is_input_handled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_multiplayer_poll_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_is_multiplayer_poll_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_network_server(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_is_network_server,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_paused(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_is_paused,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_refusing_new_network_connections(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_is_refusing_new_network_connections,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_using_font_oversampling(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_is_using_font_oversampling,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  notify_group(self,  String group,  int notification):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &group._native
    args[1] = &notification
    api_core.godot_method_bind_ptrcall(bind_scenetree_notify_group,self.godot_owner,args,NULL)
    hello('hallo2')
  def  notify_group_flags(self,  int call_flags,  String group,  int notification):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &call_flags
    args[1] = &group._native
    args[2] = &notification
    api_core.godot_method_bind_ptrcall(bind_scenetree_notify_group_flags,self.godot_owner,args,NULL)
    hello('hallo2')
  def  queue_delete(self,  classes.Object.Object obj):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = obj.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_queue_delete,self.godot_owner,args,NULL)
    hello('hallo2')
  def  quit(self,  int exit_code):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &exit_code
    api_core.godot_method_bind_ptrcall(bind_scenetree_quit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  reload_current_scene(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scenetree_reload_current_scene,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_auto_accept_quit(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_auto_accept_quit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_current_scene(self,  classes.Node.Node child_node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = child_node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_current_scene,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_debug_collisions_hint(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_debug_collisions_hint,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_debug_navigation_hint(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_debug_navigation_hint,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_edited_scene_root(self,  classes.Node.Node scene):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = scene.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_edited_scene_root,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_group(self,  String group,  String property,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &group._native
    args[1] = &property._native
    args[2] = &value._native
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_group,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_group_flags(self,  int call_flags,  String group,  String property,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &call_flags
    args[1] = &group._native
    args[2] = &property._native
    args[3] = &value._native
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_group_flags,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_input_as_handled(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scenetree_set_input_as_handled,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_multiplayer(self,  classes.MultiplayerAPI.MultiplayerAPI multiplayer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = multiplayer.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_multiplayer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_multiplayer_poll_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_multiplayer_poll_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_network_peer(self,  classes.NetworkedMultiplayerPeer.NetworkedMultiplayerPeer peer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = peer.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_network_peer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pause(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_pause,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_quit_on_go_back(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_quit_on_go_back,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_refuse_new_network_connections(self,  bool refuse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &refuse
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_refuse_new_network_connections,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_screen_stretch(self,  int mode,  int aspect,  Vector2 minsize,  float shrink):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &mode
    args[1] = &aspect
    args[2] = &minsize._native
    args[3] = &shrink
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_screen_stretch,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_font_oversampling(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_scenetree_set_use_font_oversampling,self.godot_owner,args,NULL)
    hello('hallo2')
