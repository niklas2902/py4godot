
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
cdef godot_method_bind *bind_visualscriptnode__get_default_input_values
cdef godot_method_bind *bind_visualscriptnode__set_default_input_values
cdef godot_method_bind *bind_visualscriptnode_get_default_input_value
cdef godot_method_bind *bind_visualscriptnode_get_visual_script
cdef godot_method_bind *bind_visualscriptnode_ports_changed_notify
cdef godot_method_bind *bind_visualscriptnode_set_default_input_value
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptnode__get_default_input_values = api_core.godot_method_bind_get_method('VisualScriptNode', '_get_default_input_values')
  bind_visualscriptnode__set_default_input_values = api_core.godot_method_bind_get_method('VisualScriptNode', '_set_default_input_values')
  bind_visualscriptnode_get_default_input_value = api_core.godot_method_bind_get_method('VisualScriptNode', 'get_default_input_value')
  bind_visualscriptnode_get_visual_script = api_core.godot_method_bind_get_method('VisualScriptNode', 'get_visual_script')
  bind_visualscriptnode_ports_changed_notify = api_core.godot_method_bind_get_method('VisualScriptNode', 'ports_changed_notify')
  bind_visualscriptnode_set_default_input_value = api_core.godot_method_bind_get_method('VisualScriptNode', 'set_default_input_value')

############################Generated class###################################
cdef class VisualScriptNode(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptNode")())
##################################Generated Properties#########################################
  @property
  def _default_input_values(self): 
    return self.get__default_input_values()
  @_default_input_values.setter 
  def _default_input_values(self,value): 
    self.set__default_input_values(value)

##################################Generated Methods#########################################
  def  _get_default_input_values(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptnode__get_default_input_values,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _set_default_input_values(self,  Array values):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &values._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptnode__set_default_input_values,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_default_input_value(self,  int port_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &port_idx
    api_core.godot_method_bind_ptrcall(bind_visualscriptnode_get_default_input_value,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_visual_script(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptnode_get_visual_script,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  ports_changed_notify(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_visualscriptnode_ports_changed_notify,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_default_input_value(self,  int port_idx,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &port_idx
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptnode_set_default_input_value,self.godot_owner,args,NULL)
    hello('hallo2')
