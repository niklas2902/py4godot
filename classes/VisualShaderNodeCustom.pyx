
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
cdef godot_method_bind *bind_visualshadernodecustom__get_category
cdef godot_method_bind *bind_visualshadernodecustom__get_code
cdef godot_method_bind *bind_visualshadernodecustom__get_description
cdef godot_method_bind *bind_visualshadernodecustom__get_global_code
cdef godot_method_bind *bind_visualshadernodecustom__get_input_port_count
cdef godot_method_bind *bind_visualshadernodecustom__get_input_port_name
cdef godot_method_bind *bind_visualshadernodecustom__get_input_port_type
cdef godot_method_bind *bind_visualshadernodecustom__get_name
cdef godot_method_bind *bind_visualshadernodecustom__get_output_port_count
cdef godot_method_bind *bind_visualshadernodecustom__get_output_port_name
cdef godot_method_bind *bind_visualshadernodecustom__get_output_port_type
cdef godot_method_bind *bind_visualshadernodecustom__get_return_icon_type
cdef godot_method_bind *bind_visualshadernodecustom__get_subcategory
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodecustom__get_category = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_category')
  bind_visualshadernodecustom__get_code = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_code')
  bind_visualshadernodecustom__get_description = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_description')
  bind_visualshadernodecustom__get_global_code = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_global_code')
  bind_visualshadernodecustom__get_input_port_count = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_input_port_count')
  bind_visualshadernodecustom__get_input_port_name = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_input_port_name')
  bind_visualshadernodecustom__get_input_port_type = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_input_port_type')
  bind_visualshadernodecustom__get_name = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_name')
  bind_visualshadernodecustom__get_output_port_count = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_output_port_count')
  bind_visualshadernodecustom__get_output_port_name = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_output_port_name')
  bind_visualshadernodecustom__get_output_port_type = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_output_port_type')
  bind_visualshadernodecustom__get_return_icon_type = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_return_icon_type')
  bind_visualshadernodecustom__get_subcategory = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_subcategory')

############################Generated class###################################
cdef class VisualShaderNodeCustom(classes.VisualShaderNode.VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeCustom")())
##################################Generated Methods#########################################
  def  _get_category(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_category,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_code(self,  Array input_vars,  Array output_vars,  int mode,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[4]

    args[0] = &input_vars._native
    args[1] = &output_vars._native
    args[2] = &mode
    args[3] = &type
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_code,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_description(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_description,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_global_code(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_global_code,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_input_port_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_input_port_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_input_port_name(self,  int port):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &port
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_input_port_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_input_port_type(self,  int port):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &port
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_input_port_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_output_port_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_output_port_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_output_port_name(self,  int port):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &port
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_output_port_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_output_port_type(self,  int port):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &port
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_output_port_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_return_icon_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_return_icon_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_subcategory(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_subcategory,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

