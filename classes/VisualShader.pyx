from classes.Shader cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshader__input_type_changed
cdef godot_method_bind *bind_visualshader__queue_update
cdef godot_method_bind *bind_visualshader__update_shader
cdef godot_method_bind *bind_visualshader_add_node
cdef godot_method_bind *bind_visualshader_can_connect_nodes
cdef godot_method_bind *bind_visualshader_connect_nodes
cdef godot_method_bind *bind_visualshader_connect_nodes_forced
cdef godot_method_bind *bind_visualshader_disconnect_nodes
cdef godot_method_bind *bind_visualshader_get_graph_offset
cdef godot_method_bind *bind_visualshader_get_node
cdef godot_method_bind *bind_visualshader_get_node_connections
cdef godot_method_bind *bind_visualshader_get_node_list
cdef godot_method_bind *bind_visualshader_get_node_position
cdef godot_method_bind *bind_visualshader_get_valid_node_id
cdef godot_method_bind *bind_visualshader_is_node_connection
cdef godot_method_bind *bind_visualshader_remove_node
cdef godot_method_bind *bind_visualshader_set_graph_offset
cdef godot_method_bind *bind_visualshader_set_mode
cdef godot_method_bind *bind_visualshader_set_node_position
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshader__input_type_changed = api_core.godot_method_bind_get_method('VisualShader', '_input_type_changed')
  bind_visualshader__queue_update = api_core.godot_method_bind_get_method('VisualShader', '_queue_update')
  bind_visualshader__update_shader = api_core.godot_method_bind_get_method('VisualShader', '_update_shader')
  bind_visualshader_add_node = api_core.godot_method_bind_get_method('VisualShader', 'add_node')
  bind_visualshader_can_connect_nodes = api_core.godot_method_bind_get_method('VisualShader', 'can_connect_nodes')
  bind_visualshader_connect_nodes = api_core.godot_method_bind_get_method('VisualShader', 'connect_nodes')
  bind_visualshader_connect_nodes_forced = api_core.godot_method_bind_get_method('VisualShader', 'connect_nodes_forced')
  bind_visualshader_disconnect_nodes = api_core.godot_method_bind_get_method('VisualShader', 'disconnect_nodes')
  bind_visualshader_get_graph_offset = api_core.godot_method_bind_get_method('VisualShader', 'get_graph_offset')
  bind_visualshader_get_node = api_core.godot_method_bind_get_method('VisualShader', 'get_node')
  bind_visualshader_get_node_connections = api_core.godot_method_bind_get_method('VisualShader', 'get_node_connections')
  bind_visualshader_get_node_list = api_core.godot_method_bind_get_method('VisualShader', 'get_node_list')
  bind_visualshader_get_node_position = api_core.godot_method_bind_get_method('VisualShader', 'get_node_position')
  bind_visualshader_get_valid_node_id = api_core.godot_method_bind_get_method('VisualShader', 'get_valid_node_id')
  bind_visualshader_is_node_connection = api_core.godot_method_bind_get_method('VisualShader', 'is_node_connection')
  bind_visualshader_remove_node = api_core.godot_method_bind_get_method('VisualShader', 'remove_node')
  bind_visualshader_set_graph_offset = api_core.godot_method_bind_get_method('VisualShader', 'set_graph_offset')
  bind_visualshader_set_mode = api_core.godot_method_bind_get_method('VisualShader', 'set_mode')
  bind_visualshader_set_node_position = api_core.godot_method_bind_get_method('VisualShader', 'set_node_position')

############################Generated class###################################
cdef class VisualShader(Shader):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShader")())
##################################Generated Properties#########################################
  @property
  def graph_offset(self): 
    return self.get_graph_offset()
  @graph_offset.setter 
  def graph_offset(self,value): 
    self.set_graph_offset(value)

##################################Generated Methods#########################################
  def  _input_type_changed(self, arg0arg1):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshader__input_type_changed,self.godot_owner,[NULL,],NULL)
  def  _queue_update(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshader__queue_update,self.godot_owner,[NULL,],NULL)
  def  _update_shader(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshader__update_shader,self.godot_owner,[NULL,],NULL)
  def  add_node(self, typenodepositionid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshader_add_node,self.godot_owner,[NULL,],NULL)
  def  can_connect_nodes(self, typefrom_nodefrom_portto_nodeto_port):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualshader_can_connect_nodes,self.godot_owner,[NULL,],&ret)
  def  connect_nodes(self, typefrom_nodefrom_portto_nodeto_port):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_visualshader_connect_nodes,self.godot_owner,[NULL,],&ret)
  def  connect_nodes_forced(self, typefrom_nodefrom_portto_nodeto_port):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshader_connect_nodes_forced,self.godot_owner,[NULL,],NULL)
  def  disconnect_nodes(self, typefrom_nodefrom_portto_nodeto_port):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshader_disconnect_nodes,self.godot_owner,[NULL,],NULL)
  def  get_graph_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_visualshader_get_graph_offset,self.godot_owner,[NULL,],&ret)
  def  get_node(self, typeid):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualShaderNode ret
    api_core.godot_method_bind_ptrcall(bind_visualshader_get_node,self.godot_owner,[NULL,],&ret)
  def  get_node_connections(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_visualshader_get_node_connections,self.godot_owner,[NULL,],&ret)
  def  get_node_list(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_visualshader_get_node_list,self.godot_owner,[NULL,],&ret)
  def  get_node_position(self, typeid):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_visualshader_get_node_position,self.godot_owner,[NULL,],&ret)
  def  get_valid_node_id(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualshader_get_valid_node_id,self.godot_owner,[NULL,],&ret)
  def  is_node_connection(self, typefrom_nodefrom_portto_nodeto_port):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualshader_is_node_connection,self.godot_owner,[NULL,],&ret)
  def  remove_node(self, typeid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshader_remove_node,self.godot_owner,[NULL,],NULL)
  def  set_graph_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshader_set_graph_offset,self.godot_owner,[NULL,],NULL)
  def  set_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshader_set_mode,self.godot_owner,[NULL,],NULL)
  def  set_node_position(self, typeidposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshader_set_node_position,self.godot_owner,[NULL,],NULL)
