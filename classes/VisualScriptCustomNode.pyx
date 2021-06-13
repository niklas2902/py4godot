
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
cdef godot_method_bind *bind_visualscriptcustomnode__get_caption
cdef godot_method_bind *bind_visualscriptcustomnode__get_category
cdef godot_method_bind *bind_visualscriptcustomnode__get_input_value_port_count
cdef godot_method_bind *bind_visualscriptcustomnode__get_input_value_port_name
cdef godot_method_bind *bind_visualscriptcustomnode__get_input_value_port_type
cdef godot_method_bind *bind_visualscriptcustomnode__get_output_sequence_port_count
cdef godot_method_bind *bind_visualscriptcustomnode__get_output_sequence_port_text
cdef godot_method_bind *bind_visualscriptcustomnode__get_output_value_port_count
cdef godot_method_bind *bind_visualscriptcustomnode__get_output_value_port_name
cdef godot_method_bind *bind_visualscriptcustomnode__get_output_value_port_type
cdef godot_method_bind *bind_visualscriptcustomnode__get_text
cdef godot_method_bind *bind_visualscriptcustomnode__get_working_memory_size
cdef godot_method_bind *bind_visualscriptcustomnode__has_input_sequence_port
cdef godot_method_bind *bind_visualscriptcustomnode__script_changed
cdef godot_method_bind *bind_visualscriptcustomnode__step
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptcustomnode__get_caption = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_caption')
  bind_visualscriptcustomnode__get_category = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_category')
  bind_visualscriptcustomnode__get_input_value_port_count = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_input_value_port_count')
  bind_visualscriptcustomnode__get_input_value_port_name = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_input_value_port_name')
  bind_visualscriptcustomnode__get_input_value_port_type = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_input_value_port_type')
  bind_visualscriptcustomnode__get_output_sequence_port_count = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_output_sequence_port_count')
  bind_visualscriptcustomnode__get_output_sequence_port_text = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_output_sequence_port_text')
  bind_visualscriptcustomnode__get_output_value_port_count = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_output_value_port_count')
  bind_visualscriptcustomnode__get_output_value_port_name = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_output_value_port_name')
  bind_visualscriptcustomnode__get_output_value_port_type = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_output_value_port_type')
  bind_visualscriptcustomnode__get_text = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_text')
  bind_visualscriptcustomnode__get_working_memory_size = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_working_memory_size')
  bind_visualscriptcustomnode__has_input_sequence_port = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_has_input_sequence_port')
  bind_visualscriptcustomnode__script_changed = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_script_changed')
  bind_visualscriptcustomnode__step = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_step')

############################Generated class###################################
cdef class VisualScriptCustomNode(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptCustomNode")())
##################################Generated Methods#########################################
  def  _get_caption(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_caption,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_category(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_category,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_input_value_port_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_input_value_port_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_input_value_port_name(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_input_value_port_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_input_value_port_type(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_input_value_port_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_output_sequence_port_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_output_sequence_port_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_output_sequence_port_text(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_output_sequence_port_text,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_output_value_port_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_output_value_port_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_output_value_port_name(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_output_value_port_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_output_value_port_type(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_output_value_port_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_text(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_text,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_working_memory_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_working_memory_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _has_input_sequence_port(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__has_input_sequence_port,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _script_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__script_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _step(self,  Array inputs,  Array outputs,  int start_mode,  Array working_mem):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[4]

    args[0] = &inputs._native
    args[1] = &outputs._native
    args[2] = &start_mode
    args[3] = &working_mem._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__step,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

