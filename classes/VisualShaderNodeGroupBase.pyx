
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

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodegroupbase_add_input_port
cdef godot_method_bind *bind_visualshadernodegroupbase_add_output_port
cdef godot_method_bind *bind_visualshadernodegroupbase_clear_input_ports
cdef godot_method_bind *bind_visualshadernodegroupbase_clear_output_ports
cdef godot_method_bind *bind_visualshadernodegroupbase_get_free_input_port_id
cdef godot_method_bind *bind_visualshadernodegroupbase_get_free_output_port_id
cdef godot_method_bind *bind_visualshadernodegroupbase_get_input_port_count
cdef godot_method_bind *bind_visualshadernodegroupbase_get_inputs
cdef godot_method_bind *bind_visualshadernodegroupbase_get_output_port_count
cdef godot_method_bind *bind_visualshadernodegroupbase_get_outputs
cdef godot_method_bind *bind_visualshadernodegroupbase_get_size
cdef godot_method_bind *bind_visualshadernodegroupbase_has_input_port
cdef godot_method_bind *bind_visualshadernodegroupbase_has_output_port
cdef godot_method_bind *bind_visualshadernodegroupbase_is_valid_port_name
cdef godot_method_bind *bind_visualshadernodegroupbase_remove_input_port
cdef godot_method_bind *bind_visualshadernodegroupbase_remove_output_port
cdef godot_method_bind *bind_visualshadernodegroupbase_set_input_port_name
cdef godot_method_bind *bind_visualshadernodegroupbase_set_input_port_type
cdef godot_method_bind *bind_visualshadernodegroupbase_set_inputs
cdef godot_method_bind *bind_visualshadernodegroupbase_set_output_port_name
cdef godot_method_bind *bind_visualshadernodegroupbase_set_output_port_type
cdef godot_method_bind *bind_visualshadernodegroupbase_set_outputs
cdef godot_method_bind *bind_visualshadernodegroupbase_set_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodegroupbase_add_input_port = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'add_input_port')
  bind_visualshadernodegroupbase_add_output_port = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'add_output_port')
  bind_visualshadernodegroupbase_clear_input_ports = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'clear_input_ports')
  bind_visualshadernodegroupbase_clear_output_ports = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'clear_output_ports')
  bind_visualshadernodegroupbase_get_free_input_port_id = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_free_input_port_id')
  bind_visualshadernodegroupbase_get_free_output_port_id = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_free_output_port_id')
  bind_visualshadernodegroupbase_get_input_port_count = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_input_port_count')
  bind_visualshadernodegroupbase_get_inputs = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_inputs')
  bind_visualshadernodegroupbase_get_output_port_count = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_output_port_count')
  bind_visualshadernodegroupbase_get_outputs = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_outputs')
  bind_visualshadernodegroupbase_get_size = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_size')
  bind_visualshadernodegroupbase_has_input_port = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'has_input_port')
  bind_visualshadernodegroupbase_has_output_port = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'has_output_port')
  bind_visualshadernodegroupbase_is_valid_port_name = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'is_valid_port_name')
  bind_visualshadernodegroupbase_remove_input_port = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'remove_input_port')
  bind_visualshadernodegroupbase_remove_output_port = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'remove_output_port')
  bind_visualshadernodegroupbase_set_input_port_name = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_input_port_name')
  bind_visualshadernodegroupbase_set_input_port_type = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_input_port_type')
  bind_visualshadernodegroupbase_set_inputs = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_inputs')
  bind_visualshadernodegroupbase_set_output_port_name = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_output_port_name')
  bind_visualshadernodegroupbase_set_output_port_type = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_output_port_type')
  bind_visualshadernodegroupbase_set_outputs = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_outputs')
  bind_visualshadernodegroupbase_set_size = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_size')

############################Generated class###################################
cdef class VisualShaderNodeGroupBase(classes.VisualShaderNode.VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeGroupBase")())
##################################Generated Properties#########################################
  @property
  def size(self): 
    return self.get_size()
  @size.setter 
  def size(self,value): 
    self.set_size(value)

##################################Generated Methods#########################################
  def  add_input_port(self,  int id,  int type,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &type
    args[2] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_add_input_port,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_output_port(self,  int id,  int type,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &type
    args[2] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_add_output_port,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_input_ports(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_clear_input_ports,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  clear_output_ports(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_clear_output_ports,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_free_input_port_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_free_input_port_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_free_output_port_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_free_output_port_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_input_port_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_input_port_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_inputs(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_inputs,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_output_port_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_output_port_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_outputs(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_outputs,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  has_input_port(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_has_input_port,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_output_port(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_has_output_port,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_valid_port_name(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_is_valid_port_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_input_port(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_remove_input_port,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_output_port(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_remove_output_port,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_input_port_name(self,  int id,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_input_port_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_input_port_type(self,  int id,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &type
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_input_port_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_inputs(self,  String inputs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &inputs._native
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_inputs,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_output_port_name(self,  int id,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_output_port_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_output_port_type(self,  int id,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &type
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_output_port_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_outputs(self,  String outputs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &outputs._native
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_outputs,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_size(self,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size._native
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_size,self.godot_owner,args,NULL)
    hello('hallo2')
