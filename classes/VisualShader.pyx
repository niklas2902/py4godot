
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
cimport classes.VisualShaderNode
cimport classes.Shader 

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
cdef class VisualShader(classes.Shader.Shader):
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
  def  _input_type_changed(self,  int arg0,  int arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &arg0
    args[1] = &arg1
    api_core.godot_method_bind_ptrcall(bind_visualshader__input_type_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _queue_update(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_visualshader__queue_update,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _update_shader(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_visualshader__update_shader,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  add_node(self,  int type,  classes.VisualShaderNode.VisualShaderNode node,  Vector2 position,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &type
    args[1] = node.godot_owner
    args[2] = &position._native
    args[3] = &id
    api_core.godot_method_bind_ptrcall(bind_visualshader_add_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  can_connect_nodes(self,  int type,  int from_node,  int from_port,  int to_node,  int to_port):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[5]

    args[0] = &type
    args[1] = &from_node
    args[2] = &from_port
    args[3] = &to_node
    args[4] = &to_port
    api_core.godot_method_bind_ptrcall(bind_visualshader_can_connect_nodes,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  connect_nodes(self,  int type,  int from_node,  int from_port,  int to_node,  int to_port):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[5]

    args[0] = &type
    args[1] = &from_node
    args[2] = &from_port
    args[3] = &to_node
    args[4] = &to_port
    api_core.godot_method_bind_ptrcall(bind_visualshader_connect_nodes,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  connect_nodes_forced(self,  int type,  int from_node,  int from_port,  int to_node,  int to_port):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &type
    args[1] = &from_node
    args[2] = &from_port
    args[3] = &to_node
    args[4] = &to_port
    api_core.godot_method_bind_ptrcall(bind_visualshader_connect_nodes_forced,self.godot_owner,args,NULL)
    hello('hallo2')
  def  disconnect_nodes(self,  int type,  int from_node,  int from_port,  int to_node,  int to_port):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &type
    args[1] = &from_node
    args[2] = &from_port
    args[3] = &to_node
    args[4] = &to_port
    api_core.godot_method_bind_ptrcall(bind_visualshader_disconnect_nodes,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_graph_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshader_get_graph_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_node(self,  int type,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &type
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_visualshader_get_node,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_node_connections(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_visualshader_get_node_connections,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_node_list(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_visualshader_get_node_list,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_node_position(self,  int type,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[2]

    args[0] = &type
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_visualshader_get_node_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_valid_node_id(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_visualshader_get_valid_node_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_node_connection(self,  int type,  int from_node,  int from_port,  int to_node,  int to_port):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[5]

    args[0] = &type
    args[1] = &from_node
    args[2] = &from_port
    args[3] = &to_node
    args[4] = &to_port
    api_core.godot_method_bind_ptrcall(bind_visualshader_is_node_connection,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_node(self,  int type,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &type
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_visualshader_remove_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_graph_offset(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_visualshader_set_graph_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_visualshader_set_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_node_position(self,  int type,  int id,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &type
    args[1] = &id
    args[2] = &position._native
    api_core.godot_method_bind_ptrcall(bind_visualshader_set_node_position,self.godot_owner,args,NULL)
    hello('hallo2')
