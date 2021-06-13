
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
cdef godot_method_bind *bind_visualscriptpropertyset__get_type_cache
cdef godot_method_bind *bind_visualscriptpropertyset__set_type_cache
cdef godot_method_bind *bind_visualscriptpropertyset_get_assign_op
cdef godot_method_bind *bind_visualscriptpropertyset_get_base_path
cdef godot_method_bind *bind_visualscriptpropertyset_get_base_script
cdef godot_method_bind *bind_visualscriptpropertyset_get_base_type
cdef godot_method_bind *bind_visualscriptpropertyset_get_basic_type
cdef godot_method_bind *bind_visualscriptpropertyset_get_call_mode
cdef godot_method_bind *bind_visualscriptpropertyset_get_index
cdef godot_method_bind *bind_visualscriptpropertyset_get_property
cdef godot_method_bind *bind_visualscriptpropertyset_set_assign_op
cdef godot_method_bind *bind_visualscriptpropertyset_set_base_path
cdef godot_method_bind *bind_visualscriptpropertyset_set_base_script
cdef godot_method_bind *bind_visualscriptpropertyset_set_base_type
cdef godot_method_bind *bind_visualscriptpropertyset_set_basic_type
cdef godot_method_bind *bind_visualscriptpropertyset_set_call_mode
cdef godot_method_bind *bind_visualscriptpropertyset_set_index
cdef godot_method_bind *bind_visualscriptpropertyset_set_property
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptpropertyset__get_type_cache = api_core.godot_method_bind_get_method('VisualScriptPropertySet', '_get_type_cache')
  bind_visualscriptpropertyset__set_type_cache = api_core.godot_method_bind_get_method('VisualScriptPropertySet', '_set_type_cache')
  bind_visualscriptpropertyset_get_assign_op = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'get_assign_op')
  bind_visualscriptpropertyset_get_base_path = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'get_base_path')
  bind_visualscriptpropertyset_get_base_script = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'get_base_script')
  bind_visualscriptpropertyset_get_base_type = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'get_base_type')
  bind_visualscriptpropertyset_get_basic_type = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'get_basic_type')
  bind_visualscriptpropertyset_get_call_mode = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'get_call_mode')
  bind_visualscriptpropertyset_get_index = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'get_index')
  bind_visualscriptpropertyset_get_property = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'get_property')
  bind_visualscriptpropertyset_set_assign_op = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'set_assign_op')
  bind_visualscriptpropertyset_set_base_path = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'set_base_path')
  bind_visualscriptpropertyset_set_base_script = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'set_base_script')
  bind_visualscriptpropertyset_set_base_type = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'set_base_type')
  bind_visualscriptpropertyset_set_basic_type = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'set_basic_type')
  bind_visualscriptpropertyset_set_call_mode = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'set_call_mode')
  bind_visualscriptpropertyset_set_index = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'set_index')
  bind_visualscriptpropertyset_set_property = api_core.godot_method_bind_get_method('VisualScriptPropertySet', 'set_property')

############################Generated class###################################
cdef class VisualScriptPropertySet(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptPropertySet")())
##################################Generated Properties#########################################
  @property
  def assign_op(self): 
    return self.get_assign_op()
  @assign_op.setter 
  def assign_op(self,value): 
    self.set_assign_op(value)
  @property
  def base_script(self): 
    return self.get_base_script()
  @base_script.setter 
  def base_script(self,value): 
    self.set_base_script(value)
  @property
  def base_type(self): 
    return self.get_base_type()
  @base_type.setter 
  def base_type(self,value): 
    self.set_base_type(value)
  @property
  def basic_type(self): 
    return self.get_basic_type()
  @basic_type.setter 
  def basic_type(self,value): 
    self.set_basic_type(value)
  @property
  def index(self): 
    return self.get_index()
  @index.setter 
  def index(self,value): 
    self.set_index(value)
  @property
  def node_path(self): 
    return self.get_node_path()
  @node_path.setter 
  def node_path(self,value): 
    self.set_node_path(value)
  @property
  def property(self): 
    return self.get_property()
  @property.setter 
  def property(self,value): 
    self.set_property(value)
  @property
  def set_mode(self): 
    return self.get_set_mode()
  @set_mode.setter 
  def set_mode(self,value): 
    self.set_set_mode(value)
  @property
  def type_cache(self): 
    return self.get_type_cache()
  @type_cache.setter 
  def type_cache(self,value): 
    self.set_type_cache(value)

##################################Generated Methods#########################################
  def  _get_type_cache(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset__get_type_cache,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  _set_type_cache(self,  Dictionary type_cache):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type_cache._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset__set_type_cache,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_assign_op(self):
    cdef godot_object *_owner = self.godot_owner

    cdef VisualScriptPropertySet_AssignOp* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_get_assign_op,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_base_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_get_base_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_base_script(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_get_base_script,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_base_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_get_base_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_basic_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Variant_Type* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_get_basic_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_call_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef VisualScriptPropertySet_CallMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_get_call_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_index(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_get_index,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_property(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_get_property,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  set_assign_op(self,  int assign_op):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &assign_op
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_set_assign_op,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_base_path(self,  NodePath base_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &base_path._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_set_base_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_base_script(self,  String base_script):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &base_script._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_set_base_script,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_base_type(self,  String base_type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &base_type._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_set_base_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_basic_type(self,  int basic_type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &basic_type
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_set_basic_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_call_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_set_call_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_index(self,  String index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &index._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_set_index,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_property(self,  String property):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &property._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyset_set_property,self.godot_owner,args,NULL)
    hello('hallo2')
