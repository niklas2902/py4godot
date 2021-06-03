
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
cimport classes.InputEvent
cimport classes.InputEventKey
cimport classes.Node
cimport classes.Node
cimport classes.Node
cimport classes.Node
cimport classes.Node
cimport classes.Node
cimport classes.Node
cimport classes.Node
cimport classes.Node
cimport classes.MultiplayerAPI
cimport classes.Node
cimport classes.Object 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_node__enter_tree
cdef godot_method_bind *bind_node__exit_tree
cdef godot_method_bind *bind_node__get_configuration_warning
cdef godot_method_bind *bind_node__get_editor_description
cdef godot_method_bind *bind_node__get_import_path
cdef godot_method_bind *bind_node__input
cdef godot_method_bind *bind_node__physics_process
cdef godot_method_bind *bind_node__process
cdef godot_method_bind *bind_node__ready
cdef godot_method_bind *bind_node__set_editor_description
cdef godot_method_bind *bind_node__set_import_path
cdef godot_method_bind *bind_node__unhandled_input
cdef godot_method_bind *bind_node__unhandled_key_input
cdef godot_method_bind *bind_node_add_child
cdef godot_method_bind *bind_node_add_child_below_node
cdef godot_method_bind *bind_node_add_to_group
cdef godot_method_bind *bind_node_can_process
cdef godot_method_bind *bind_node_duplicate
cdef godot_method_bind *bind_node_find_node
cdef godot_method_bind *bind_node_find_parent
cdef godot_method_bind *bind_node_get_child
cdef godot_method_bind *bind_node_get_child_count
cdef godot_method_bind *bind_node_get_children
cdef godot_method_bind *bind_node_get_custom_multiplayer
cdef godot_method_bind *bind_node_get_filename
cdef godot_method_bind *bind_node_get_groups
cdef godot_method_bind *bind_node_get_index
cdef godot_method_bind *bind_node_get_multiplayer
cdef godot_method_bind *bind_node_get_name
cdef godot_method_bind *bind_node_get_network_master
cdef godot_method_bind *bind_node_get_node
cdef godot_method_bind *bind_node_get_node_and_resource
cdef godot_method_bind *bind_node_get_node_or_null
cdef godot_method_bind *bind_node_get_owner
cdef godot_method_bind *bind_node_get_parent
cdef godot_method_bind *bind_node_get_path
cdef godot_method_bind *bind_node_get_path_to
cdef godot_method_bind *bind_node_get_pause_mode
cdef godot_method_bind *bind_node_get_physics_process_delta_time
cdef godot_method_bind *bind_node_get_position_in_parent
cdef godot_method_bind *bind_node_get_process_delta_time
cdef godot_method_bind *bind_node_get_process_priority
cdef godot_method_bind *bind_node_get_scene_instance_load_placeholder
cdef godot_method_bind *bind_node_get_tree
cdef godot_method_bind *bind_node_get_viewport
cdef godot_method_bind *bind_node_has_node
cdef godot_method_bind *bind_node_has_node_and_resource
cdef godot_method_bind *bind_node_is_a_parent_of
cdef godot_method_bind *bind_node_is_displayed_folded
cdef godot_method_bind *bind_node_is_greater_than
cdef godot_method_bind *bind_node_is_in_group
cdef godot_method_bind *bind_node_is_inside_tree
cdef godot_method_bind *bind_node_is_network_master
cdef godot_method_bind *bind_node_is_physics_processing
cdef godot_method_bind *bind_node_is_physics_processing_internal
cdef godot_method_bind *bind_node_is_processing
cdef godot_method_bind *bind_node_is_processing_input
cdef godot_method_bind *bind_node_is_processing_internal
cdef godot_method_bind *bind_node_is_processing_unhandled_input
cdef godot_method_bind *bind_node_is_processing_unhandled_key_input
cdef godot_method_bind *bind_node_move_child
cdef godot_method_bind *bind_node_print_stray_nodes
cdef godot_method_bind *bind_node_print_tree
cdef godot_method_bind *bind_node_print_tree_pretty
cdef godot_method_bind *bind_node_propagate_call
cdef godot_method_bind *bind_node_propagate_notification
cdef godot_method_bind *bind_node_queue_free
cdef godot_method_bind *bind_node_raise
cdef godot_method_bind *bind_node_remove_and_skip
cdef godot_method_bind *bind_node_remove_child
cdef godot_method_bind *bind_node_remove_from_group
cdef godot_method_bind *bind_node_replace_by
cdef godot_method_bind *bind_node_request_ready
cdef godot_method_bind *bind_node_rpc
cdef godot_method_bind *bind_node_rpc_config
cdef godot_method_bind *bind_node_rpc_id
cdef godot_method_bind *bind_node_rpc_unreliable
cdef godot_method_bind *bind_node_rpc_unreliable_id
cdef godot_method_bind *bind_node_rset
cdef godot_method_bind *bind_node_rset_config
cdef godot_method_bind *bind_node_rset_id
cdef godot_method_bind *bind_node_rset_unreliable
cdef godot_method_bind *bind_node_rset_unreliable_id
cdef godot_method_bind *bind_node_set_custom_multiplayer
cdef godot_method_bind *bind_node_set_display_folded
cdef godot_method_bind *bind_node_set_filename
cdef godot_method_bind *bind_node_set_name
cdef godot_method_bind *bind_node_set_network_master
cdef godot_method_bind *bind_node_set_owner
cdef godot_method_bind *bind_node_set_pause_mode
cdef godot_method_bind *bind_node_set_physics_process
cdef godot_method_bind *bind_node_set_physics_process_internal
cdef godot_method_bind *bind_node_set_process
cdef godot_method_bind *bind_node_set_process_input
cdef godot_method_bind *bind_node_set_process_internal
cdef godot_method_bind *bind_node_set_process_priority
cdef godot_method_bind *bind_node_set_process_unhandled_input
cdef godot_method_bind *bind_node_set_process_unhandled_key_input
cdef godot_method_bind *bind_node_set_scene_instance_load_placeholder
cdef godot_method_bind *bind_node_update_configuration_warning
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_node__enter_tree = api_core.godot_method_bind_get_method('Node', '_enter_tree')
  bind_node__exit_tree = api_core.godot_method_bind_get_method('Node', '_exit_tree')
  bind_node__get_configuration_warning = api_core.godot_method_bind_get_method('Node', '_get_configuration_warning')
  bind_node__get_editor_description = api_core.godot_method_bind_get_method('Node', '_get_editor_description')
  bind_node__get_import_path = api_core.godot_method_bind_get_method('Node', '_get_import_path')
  bind_node__input = api_core.godot_method_bind_get_method('Node', '_input')
  bind_node__physics_process = api_core.godot_method_bind_get_method('Node', '_physics_process')
  bind_node__process = api_core.godot_method_bind_get_method('Node', '_process')
  bind_node__ready = api_core.godot_method_bind_get_method('Node', '_ready')
  bind_node__set_editor_description = api_core.godot_method_bind_get_method('Node', '_set_editor_description')
  bind_node__set_import_path = api_core.godot_method_bind_get_method('Node', '_set_import_path')
  bind_node__unhandled_input = api_core.godot_method_bind_get_method('Node', '_unhandled_input')
  bind_node__unhandled_key_input = api_core.godot_method_bind_get_method('Node', '_unhandled_key_input')
  bind_node_add_child = api_core.godot_method_bind_get_method('Node', 'add_child')
  bind_node_add_child_below_node = api_core.godot_method_bind_get_method('Node', 'add_child_below_node')
  bind_node_add_to_group = api_core.godot_method_bind_get_method('Node', 'add_to_group')
  bind_node_can_process = api_core.godot_method_bind_get_method('Node', 'can_process')
  bind_node_duplicate = api_core.godot_method_bind_get_method('Node', 'duplicate')
  bind_node_find_node = api_core.godot_method_bind_get_method('Node', 'find_node')
  bind_node_find_parent = api_core.godot_method_bind_get_method('Node', 'find_parent')
  bind_node_get_child = api_core.godot_method_bind_get_method('Node', 'get_child')
  bind_node_get_child_count = api_core.godot_method_bind_get_method('Node', 'get_child_count')
  bind_node_get_children = api_core.godot_method_bind_get_method('Node', 'get_children')
  bind_node_get_custom_multiplayer = api_core.godot_method_bind_get_method('Node', 'get_custom_multiplayer')
  bind_node_get_filename = api_core.godot_method_bind_get_method('Node', 'get_filename')
  bind_node_get_groups = api_core.godot_method_bind_get_method('Node', 'get_groups')
  bind_node_get_index = api_core.godot_method_bind_get_method('Node', 'get_index')
  bind_node_get_multiplayer = api_core.godot_method_bind_get_method('Node', 'get_multiplayer')
  bind_node_get_name = api_core.godot_method_bind_get_method('Node', 'get_name')
  bind_node_get_network_master = api_core.godot_method_bind_get_method('Node', 'get_network_master')
  bind_node_get_node = api_core.godot_method_bind_get_method('Node', 'get_node')
  bind_node_get_node_and_resource = api_core.godot_method_bind_get_method('Node', 'get_node_and_resource')
  bind_node_get_node_or_null = api_core.godot_method_bind_get_method('Node', 'get_node_or_null')
  bind_node_get_owner = api_core.godot_method_bind_get_method('Node', 'get_owner')
  bind_node_get_parent = api_core.godot_method_bind_get_method('Node', 'get_parent')
  bind_node_get_path = api_core.godot_method_bind_get_method('Node', 'get_path')
  bind_node_get_path_to = api_core.godot_method_bind_get_method('Node', 'get_path_to')
  bind_node_get_pause_mode = api_core.godot_method_bind_get_method('Node', 'get_pause_mode')
  bind_node_get_physics_process_delta_time = api_core.godot_method_bind_get_method('Node', 'get_physics_process_delta_time')
  bind_node_get_position_in_parent = api_core.godot_method_bind_get_method('Node', 'get_position_in_parent')
  bind_node_get_process_delta_time = api_core.godot_method_bind_get_method('Node', 'get_process_delta_time')
  bind_node_get_process_priority = api_core.godot_method_bind_get_method('Node', 'get_process_priority')
  bind_node_get_scene_instance_load_placeholder = api_core.godot_method_bind_get_method('Node', 'get_scene_instance_load_placeholder')
  bind_node_get_tree = api_core.godot_method_bind_get_method('Node', 'get_tree')
  bind_node_get_viewport = api_core.godot_method_bind_get_method('Node', 'get_viewport')
  bind_node_has_node = api_core.godot_method_bind_get_method('Node', 'has_node')
  bind_node_has_node_and_resource = api_core.godot_method_bind_get_method('Node', 'has_node_and_resource')
  bind_node_is_a_parent_of = api_core.godot_method_bind_get_method('Node', 'is_a_parent_of')
  bind_node_is_displayed_folded = api_core.godot_method_bind_get_method('Node', 'is_displayed_folded')
  bind_node_is_greater_than = api_core.godot_method_bind_get_method('Node', 'is_greater_than')
  bind_node_is_in_group = api_core.godot_method_bind_get_method('Node', 'is_in_group')
  bind_node_is_inside_tree = api_core.godot_method_bind_get_method('Node', 'is_inside_tree')
  bind_node_is_network_master = api_core.godot_method_bind_get_method('Node', 'is_network_master')
  bind_node_is_physics_processing = api_core.godot_method_bind_get_method('Node', 'is_physics_processing')
  bind_node_is_physics_processing_internal = api_core.godot_method_bind_get_method('Node', 'is_physics_processing_internal')
  bind_node_is_processing = api_core.godot_method_bind_get_method('Node', 'is_processing')
  bind_node_is_processing_input = api_core.godot_method_bind_get_method('Node', 'is_processing_input')
  bind_node_is_processing_internal = api_core.godot_method_bind_get_method('Node', 'is_processing_internal')
  bind_node_is_processing_unhandled_input = api_core.godot_method_bind_get_method('Node', 'is_processing_unhandled_input')
  bind_node_is_processing_unhandled_key_input = api_core.godot_method_bind_get_method('Node', 'is_processing_unhandled_key_input')
  bind_node_move_child = api_core.godot_method_bind_get_method('Node', 'move_child')
  bind_node_print_stray_nodes = api_core.godot_method_bind_get_method('Node', 'print_stray_nodes')
  bind_node_print_tree = api_core.godot_method_bind_get_method('Node', 'print_tree')
  bind_node_print_tree_pretty = api_core.godot_method_bind_get_method('Node', 'print_tree_pretty')
  bind_node_propagate_call = api_core.godot_method_bind_get_method('Node', 'propagate_call')
  bind_node_propagate_notification = api_core.godot_method_bind_get_method('Node', 'propagate_notification')
  bind_node_queue_free = api_core.godot_method_bind_get_method('Node', 'queue_free')
  bind_node_raise = api_core.godot_method_bind_get_method('Node', 'raise')
  bind_node_remove_and_skip = api_core.godot_method_bind_get_method('Node', 'remove_and_skip')
  bind_node_remove_child = api_core.godot_method_bind_get_method('Node', 'remove_child')
  bind_node_remove_from_group = api_core.godot_method_bind_get_method('Node', 'remove_from_group')
  bind_node_replace_by = api_core.godot_method_bind_get_method('Node', 'replace_by')
  bind_node_request_ready = api_core.godot_method_bind_get_method('Node', 'request_ready')
  bind_node_rpc = api_core.godot_method_bind_get_method('Node', 'rpc')
  bind_node_rpc_config = api_core.godot_method_bind_get_method('Node', 'rpc_config')
  bind_node_rpc_id = api_core.godot_method_bind_get_method('Node', 'rpc_id')
  bind_node_rpc_unreliable = api_core.godot_method_bind_get_method('Node', 'rpc_unreliable')
  bind_node_rpc_unreliable_id = api_core.godot_method_bind_get_method('Node', 'rpc_unreliable_id')
  bind_node_rset = api_core.godot_method_bind_get_method('Node', 'rset')
  bind_node_rset_config = api_core.godot_method_bind_get_method('Node', 'rset_config')
  bind_node_rset_id = api_core.godot_method_bind_get_method('Node', 'rset_id')
  bind_node_rset_unreliable = api_core.godot_method_bind_get_method('Node', 'rset_unreliable')
  bind_node_rset_unreliable_id = api_core.godot_method_bind_get_method('Node', 'rset_unreliable_id')
  bind_node_set_custom_multiplayer = api_core.godot_method_bind_get_method('Node', 'set_custom_multiplayer')
  bind_node_set_display_folded = api_core.godot_method_bind_get_method('Node', 'set_display_folded')
  bind_node_set_filename = api_core.godot_method_bind_get_method('Node', 'set_filename')
  bind_node_set_name = api_core.godot_method_bind_get_method('Node', 'set_name')
  bind_node_set_network_master = api_core.godot_method_bind_get_method('Node', 'set_network_master')
  bind_node_set_owner = api_core.godot_method_bind_get_method('Node', 'set_owner')
  bind_node_set_pause_mode = api_core.godot_method_bind_get_method('Node', 'set_pause_mode')
  bind_node_set_physics_process = api_core.godot_method_bind_get_method('Node', 'set_physics_process')
  bind_node_set_physics_process_internal = api_core.godot_method_bind_get_method('Node', 'set_physics_process_internal')
  bind_node_set_process = api_core.godot_method_bind_get_method('Node', 'set_process')
  bind_node_set_process_input = api_core.godot_method_bind_get_method('Node', 'set_process_input')
  bind_node_set_process_internal = api_core.godot_method_bind_get_method('Node', 'set_process_internal')
  bind_node_set_process_priority = api_core.godot_method_bind_get_method('Node', 'set_process_priority')
  bind_node_set_process_unhandled_input = api_core.godot_method_bind_get_method('Node', 'set_process_unhandled_input')
  bind_node_set_process_unhandled_key_input = api_core.godot_method_bind_get_method('Node', 'set_process_unhandled_key_input')
  bind_node_set_scene_instance_load_placeholder = api_core.godot_method_bind_get_method('Node', 'set_scene_instance_load_placeholder')
  bind_node_update_configuration_warning = api_core.godot_method_bind_get_method('Node', 'update_configuration_warning')

############################Generated class###################################
cdef class Node(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Node")())
##################################Generated Properties#########################################
  @property
  def _import_path(self): 
    return self.get__import_path()
  @_import_path.setter 
  def _import_path(self,value): 
    self.set__import_path(value)
  @property
  def custom_multiplayer(self): 
    return self.get_custom_multiplayer()
  @custom_multiplayer.setter 
  def custom_multiplayer(self,value): 
    self.set_custom_multiplayer(value)
  @property
  def editor_description(self): 
    return self.get_editor_description()
  @editor_description.setter 
  def editor_description(self,value): 
    self.set_editor_description(value)
  @property
  def filename(self): 
    return self.get_filename()
  @filename.setter 
  def filename(self,value): 
    self.set_filename(value)
  @property
  def multiplayer(self): 
    return self.get_multiplayer()
  @multiplayer.setter 
  def multiplayer(self,value): 
    self.set_multiplayer(value)
  @property
  def name(self): 
    return self.get_name()
  @name.setter 
  def name(self,value): 
    self.set_name(value)
  @property
  def owner(self): 
    return self.get_owner()
  @owner.setter 
  def owner(self,value): 
    self.set_owner(value)
  @property
  def pause_mode(self): 
    return self.get_pause_mode()
  @pause_mode.setter 
  def pause_mode(self,value): 
    self.set_pause_mode(value)
  @property
  def process_priority(self): 
    return self.get_process_priority()
  @process_priority.setter 
  def process_priority(self,value): 
    self.set_process_priority(value)

##################################Generated Methods#########################################
  def  _enter_tree(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_node__enter_tree,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _exit_tree(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_node__exit_tree,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _get_configuration_warning(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node__get_configuration_warning,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_editor_description(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node__get_editor_description,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_import_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node__get_import_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  _input(self,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_node__input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _physics_process(self,  float delta):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &delta
    api_core.godot_method_bind_ptrcall(bind_node__physics_process,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _process(self,  float delta):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &delta
    api_core.godot_method_bind_ptrcall(bind_node__process,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _ready(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_node__ready,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _set_editor_description(self,  String editor_description):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &editor_description._native
    api_core.godot_method_bind_ptrcall(bind_node__set_editor_description,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_import_path(self,  NodePath import_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &import_path._native
    api_core.godot_method_bind_ptrcall(bind_node__set_import_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _unhandled_input(self,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_node__unhandled_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _unhandled_key_input(self,  classes.InputEventKey.InputEventKey event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_node__unhandled_key_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_child(self,  classes.Node.Node node,  bool legible_unique_name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = node.godot_owner
    args[1] = &legible_unique_name
    api_core.godot_method_bind_ptrcall(bind_node_add_child,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_child_below_node(self,  classes.Node.Node node,  classes.Node.Node child_node,  bool legible_unique_name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = node.godot_owner
    args[1] = child_node.godot_owner
    args[2] = &legible_unique_name
    api_core.godot_method_bind_ptrcall(bind_node_add_child_below_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_to_group(self,  String group,  bool persistent):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &group._native
    args[1] = &persistent
    api_core.godot_method_bind_ptrcall(bind_node_add_to_group,self.godot_owner,args,NULL)
    hello('hallo2')
  def  can_process(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_can_process,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  duplicate(self,  int flags):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &flags
    api_core.godot_method_bind_ptrcall(bind_node_duplicate,self.godot_owner,args,&ret)
    hello('hallo2')
  def  find_node(self,  String mask,  bool recursive,  bool owned):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[3]

    args[0] = &mask._native
    args[1] = &recursive
    args[2] = &owned
    api_core.godot_method_bind_ptrcall(bind_node_find_node,self.godot_owner,args,&ret)
    hello('hallo2')
  def  find_parent(self,  String mask):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &mask._native
    api_core.godot_method_bind_ptrcall(bind_node_find_parent,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_child(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_node_get_child,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_child_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_child_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_children(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_children,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_custom_multiplayer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_custom_multiplayer,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_filename(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_filename,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_groups(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_groups,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_index(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_index,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_multiplayer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_multiplayer,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_network_master(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_network_master,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_node(self,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_node_get_node,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_node_and_resource(self,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_node_get_node_and_resource,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_node_or_null(self,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_node_get_node_or_null,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_owner(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_owner,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_parent(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_parent,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_path_to(self,  classes.Node.Node node):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_node_get_path_to,self.godot_owner,args,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_pause_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef PauseMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_pause_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_physics_process_delta_time(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_physics_process_delta_time,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_position_in_parent(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_position_in_parent,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_process_delta_time(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_process_delta_time,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_process_priority(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_process_priority,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_scene_instance_load_placeholder(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_scene_instance_load_placeholder,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tree(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_tree,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_viewport(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_get_viewport,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  has_node(self,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_node_has_node,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_node_and_resource(self,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_node_has_node_and_resource,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_a_parent_of(self,  classes.Node.Node node):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_node_is_a_parent_of,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_displayed_folded(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_is_displayed_folded,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_greater_than(self,  classes.Node.Node node):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_node_is_greater_than,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_in_group(self,  String group):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &group._native
    api_core.godot_method_bind_ptrcall(bind_node_is_in_group,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_inside_tree(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_is_inside_tree,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_network_master(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_is_network_master,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_physics_processing(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_is_physics_processing,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_physics_processing_internal(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_is_physics_processing_internal,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_processing(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_is_processing,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_processing_input(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_is_processing_input,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_processing_internal(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_is_processing_internal,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_processing_unhandled_input(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_is_processing_unhandled_input,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_processing_unhandled_key_input(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node_is_processing_unhandled_key_input,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  move_child(self,  classes.Node.Node child_node,  int to_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = child_node.godot_owner
    args[1] = &to_position
    api_core.godot_method_bind_ptrcall(bind_node_move_child,self.godot_owner,args,NULL)
    hello('hallo2')
  def  print_stray_nodes(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_node_print_stray_nodes,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  print_tree(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_node_print_tree,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  print_tree_pretty(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_node_print_tree_pretty,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  propagate_call(self,  String method,  Array args_,  bool parent_first):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &method._native
    args[1] = &args_._native
    args[2] = &parent_first
    api_core.godot_method_bind_ptrcall(bind_node_propagate_call,self.godot_owner,args,NULL)
    hello('hallo2')
  def  propagate_notification(self,  int what):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &what
    api_core.godot_method_bind_ptrcall(bind_node_propagate_notification,self.godot_owner,args,NULL)
    hello('hallo2')
  def  queue_free(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_node_queue_free,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  raise_(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_node_raise,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  remove_and_skip(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_node_remove_and_skip,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  remove_child(self,  classes.Node.Node node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_node_remove_child,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_from_group(self,  String group):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &group._native
    api_core.godot_method_bind_ptrcall(bind_node_remove_from_group,self.godot_owner,args,NULL)
    hello('hallo2')
  def  replace_by(self,  classes.Node.Node node,  bool keep_data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = node.godot_owner
    args[1] = &keep_data
    api_core.godot_method_bind_ptrcall(bind_node_replace_by,self.godot_owner,args,NULL)
    hello('hallo2')
  def  request_ready(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_node_request_ready,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  rpc(self,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &method._native
    api_core.godot_method_bind_ptrcall(bind_node_rpc,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  rpc_config(self,  String method,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &method._native
    args[1] = &mode
    api_core.godot_method_bind_ptrcall(bind_node_rpc_config,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rpc_id(self,  int peer_id,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &peer_id
    args[1] = &method._native
    api_core.godot_method_bind_ptrcall(bind_node_rpc_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  rpc_unreliable(self,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &method._native
    api_core.godot_method_bind_ptrcall(bind_node_rpc_unreliable,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  rpc_unreliable_id(self,  int peer_id,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &peer_id
    args[1] = &method._native
    api_core.godot_method_bind_ptrcall(bind_node_rpc_unreliable_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  rset(self,  String property,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &property._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_node_rset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rset_config(self,  String property,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &property._native
    args[1] = &mode
    api_core.godot_method_bind_ptrcall(bind_node_rset_config,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rset_id(self,  int peer_id,  String property,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &peer_id
    args[1] = &property._native
    args[2] = &value._native
    api_core.godot_method_bind_ptrcall(bind_node_rset_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rset_unreliable(self,  String property,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &property._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_node_rset_unreliable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rset_unreliable_id(self,  int peer_id,  String property,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &peer_id
    args[1] = &property._native
    args[2] = &value._native
    api_core.godot_method_bind_ptrcall(bind_node_rset_unreliable_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_custom_multiplayer(self,  classes.MultiplayerAPI.MultiplayerAPI api):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = api.godot_owner
    api_core.godot_method_bind_ptrcall(bind_node_set_custom_multiplayer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_display_folded(self,  bool fold):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &fold
    api_core.godot_method_bind_ptrcall(bind_node_set_display_folded,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_filename(self,  String filename):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &filename._native
    api_core.godot_method_bind_ptrcall(bind_node_set_filename,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_name(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_node_set_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_network_master(self,  int id,  bool recursive):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &recursive
    api_core.godot_method_bind_ptrcall(bind_node_set_network_master,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_owner(self,  classes.Node.Node owner):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = owner.godot_owner
    api_core.godot_method_bind_ptrcall(bind_node_set_owner,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pause_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_node_set_pause_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_physics_process(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_node_set_physics_process,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_physics_process_internal(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_node_set_physics_process_internal,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_process(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_node_set_process,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_process_input(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_node_set_process_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_process_internal(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_node_set_process_internal,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_process_priority(self,  int priority):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &priority
    api_core.godot_method_bind_ptrcall(bind_node_set_process_priority,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_process_unhandled_input(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_node_set_process_unhandled_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_process_unhandled_key_input(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_node_set_process_unhandled_key_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_scene_instance_load_placeholder(self,  bool load_placeholder):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &load_placeholder
    api_core.godot_method_bind_ptrcall(bind_node_set_scene_instance_load_placeholder,self.godot_owner,args,NULL)
    hello('hallo2')
  def  update_configuration_warning(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_node_update_configuration_warning,self.godot_owner,NULL,NULL)
    hello('hallo2')
