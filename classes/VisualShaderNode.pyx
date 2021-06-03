
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernode_get_default_input_values
cdef godot_method_bind *bind_visualshadernode_get_input_port_default_value
cdef godot_method_bind *bind_visualshadernode_get_output_port_for_preview
cdef godot_method_bind *bind_visualshadernode_set_default_input_values
cdef godot_method_bind *bind_visualshadernode_set_input_port_default_value
cdef godot_method_bind *bind_visualshadernode_set_output_port_for_preview
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernode_get_default_input_values = api_core.godot_method_bind_get_method('VisualShaderNode', 'get_default_input_values')
  bind_visualshadernode_get_input_port_default_value = api_core.godot_method_bind_get_method('VisualShaderNode', 'get_input_port_default_value')
  bind_visualshadernode_get_output_port_for_preview = api_core.godot_method_bind_get_method('VisualShaderNode', 'get_output_port_for_preview')
  bind_visualshadernode_set_default_input_values = api_core.godot_method_bind_get_method('VisualShaderNode', 'set_default_input_values')
  bind_visualshadernode_set_input_port_default_value = api_core.godot_method_bind_get_method('VisualShaderNode', 'set_input_port_default_value')
  bind_visualshadernode_set_output_port_for_preview = api_core.godot_method_bind_get_method('VisualShaderNode', 'set_output_port_for_preview')

############################Generated class###################################
cdef class VisualShaderNode(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNode")())
##################################Generated Properties#########################################
  @property
  def default_input_values(self): 
    return self.get_default_input_values()
  @default_input_values.setter 
  def default_input_values(self,value): 
    self.set_default_input_values(value)
  @property
  def output_port_for_preview(self): 
    return self.get_output_port_for_preview()
  @output_port_for_preview.setter 
  def output_port_for_preview(self,value): 
    self.set_output_port_for_preview(value)

##################################Generated Methods#########################################
  def  get_default_input_values(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernode_get_default_input_values,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_input_port_default_value(self,  int port):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &port
    api_core.godot_method_bind_ptrcall(bind_visualshadernode_get_input_port_default_value,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_output_port_for_preview(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernode_get_output_port_for_preview,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_default_input_values(self,  Array values):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &values._native
    api_core.godot_method_bind_ptrcall(bind_visualshadernode_set_default_input_values,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_input_port_default_value(self,  int port,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &port
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_visualshadernode_set_input_port_default_value,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_output_port_for_preview(self,  int port):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &port
    api_core.godot_method_bind_ptrcall(bind_visualshadernode_set_output_port_for_preview,self.godot_owner,args,NULL)
    hello('hallo2')
