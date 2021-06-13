
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
cdef godot_method_bind *bind_visualscriptyieldsignal_get_base_path
cdef godot_method_bind *bind_visualscriptyieldsignal_get_base_type
cdef godot_method_bind *bind_visualscriptyieldsignal_get_call_mode
cdef godot_method_bind *bind_visualscriptyieldsignal_get_signal
cdef godot_method_bind *bind_visualscriptyieldsignal_set_base_path
cdef godot_method_bind *bind_visualscriptyieldsignal_set_base_type
cdef godot_method_bind *bind_visualscriptyieldsignal_set_call_mode
cdef godot_method_bind *bind_visualscriptyieldsignal_set_signal
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptyieldsignal_get_base_path = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'get_base_path')
  bind_visualscriptyieldsignal_get_base_type = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'get_base_type')
  bind_visualscriptyieldsignal_get_call_mode = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'get_call_mode')
  bind_visualscriptyieldsignal_get_signal = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'get_signal')
  bind_visualscriptyieldsignal_set_base_path = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'set_base_path')
  bind_visualscriptyieldsignal_set_base_type = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'set_base_type')
  bind_visualscriptyieldsignal_set_call_mode = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'set_call_mode')
  bind_visualscriptyieldsignal_set_signal = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'set_signal')

############################Generated class###################################
cdef class VisualScriptYieldSignal(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptYieldSignal")())
##################################Generated Properties#########################################
  @property
  def base_type(self): 
    return self.get_base_type()
  @base_type.setter 
  def base_type(self,value): 
    self.set_base_type(value)
  @property
  def call_mode(self): 
    return self.get_call_mode()
  @call_mode.setter 
  def call_mode(self,value): 
    self.set_call_mode(value)
  @property
  def node_path(self): 
    return self.get_node_path()
  @node_path.setter 
  def node_path(self,value): 
    self.set_node_path(value)
  @property
  def signal(self): 
    return self.get_signal()
  @signal.setter 
  def signal(self,value): 
    self.set_signal(value)

##################################Generated Methods#########################################
  def  get_base_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_get_base_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_base_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_get_base_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_call_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef VisualScriptYieldSignal_CallMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_get_call_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_signal(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_get_signal,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  set_base_path(self,  NodePath base_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &base_path._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_set_base_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_base_type(self,  String base_type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &base_type._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_set_base_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_call_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_set_call_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_signal(self,  String signal):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &signal._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_set_signal,self.godot_owner,args,NULL)
    hello('hallo2')
