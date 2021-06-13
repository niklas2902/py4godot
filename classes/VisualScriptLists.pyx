
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
cimport classes.VisualScriptNode 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptlists_add_input_data_port
cdef godot_method_bind *bind_visualscriptlists_add_output_data_port
cdef godot_method_bind *bind_visualscriptlists_remove_input_data_port
cdef godot_method_bind *bind_visualscriptlists_remove_output_data_port
cdef godot_method_bind *bind_visualscriptlists_set_input_data_port_name
cdef godot_method_bind *bind_visualscriptlists_set_input_data_port_type
cdef godot_method_bind *bind_visualscriptlists_set_output_data_port_name
cdef godot_method_bind *bind_visualscriptlists_set_output_data_port_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptlists_add_input_data_port = api_core.godot_method_bind_get_method('VisualScriptLists', 'add_input_data_port')
  bind_visualscriptlists_add_output_data_port = api_core.godot_method_bind_get_method('VisualScriptLists', 'add_output_data_port')
  bind_visualscriptlists_remove_input_data_port = api_core.godot_method_bind_get_method('VisualScriptLists', 'remove_input_data_port')
  bind_visualscriptlists_remove_output_data_port = api_core.godot_method_bind_get_method('VisualScriptLists', 'remove_output_data_port')
  bind_visualscriptlists_set_input_data_port_name = api_core.godot_method_bind_get_method('VisualScriptLists', 'set_input_data_port_name')
  bind_visualscriptlists_set_input_data_port_type = api_core.godot_method_bind_get_method('VisualScriptLists', 'set_input_data_port_type')
  bind_visualscriptlists_set_output_data_port_name = api_core.godot_method_bind_get_method('VisualScriptLists', 'set_output_data_port_name')
  bind_visualscriptlists_set_output_data_port_type = api_core.godot_method_bind_get_method('VisualScriptLists', 'set_output_data_port_type')

############################Generated class###################################
cdef class VisualScriptLists(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptLists")())
##################################Generated Methods#########################################
  def  add_input_data_port(self,  int type,  String name,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &type
    args[1] = &name._native
    args[2] = &index
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_add_input_data_port,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_output_data_port(self,  int type,  String name,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &type
    args[1] = &name._native
    args[2] = &index
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_add_output_data_port,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_input_data_port(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_remove_input_data_port,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_output_data_port(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_remove_output_data_port,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_input_data_port_name(self,  int index,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &index
    args[1] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_set_input_data_port_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_input_data_port_type(self,  int index,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &index
    args[1] = &type
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_set_input_data_port_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_output_data_port_name(self,  int index,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &index
    args[1] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_set_output_data_port_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_output_data_port_type(self,  int index,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &index
    args[1] = &type
    api_core.godot_method_bind_ptrcall(bind_visualscriptlists_set_output_data_port_type,self.godot_owner,args,NULL)
    hello('hallo2')
