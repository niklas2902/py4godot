
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
cimport classes.VisualScriptNode 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptfunctioncall__get_argument_cache
cdef godot_method_bind *bind_visualscriptfunctioncall__set_argument_cache
cdef godot_method_bind *bind_visualscriptfunctioncall_get_base_path
cdef godot_method_bind *bind_visualscriptfunctioncall_get_base_script
cdef godot_method_bind *bind_visualscriptfunctioncall_get_base_type
cdef godot_method_bind *bind_visualscriptfunctioncall_get_basic_type
cdef godot_method_bind *bind_visualscriptfunctioncall_get_call_mode
cdef godot_method_bind *bind_visualscriptfunctioncall_get_function
cdef godot_method_bind *bind_visualscriptfunctioncall_get_rpc_call_mode
cdef godot_method_bind *bind_visualscriptfunctioncall_get_singleton
cdef godot_method_bind *bind_visualscriptfunctioncall_get_use_default_args
cdef godot_method_bind *bind_visualscriptfunctioncall_get_validate
cdef godot_method_bind *bind_visualscriptfunctioncall_set_base_path
cdef godot_method_bind *bind_visualscriptfunctioncall_set_base_script
cdef godot_method_bind *bind_visualscriptfunctioncall_set_base_type
cdef godot_method_bind *bind_visualscriptfunctioncall_set_basic_type
cdef godot_method_bind *bind_visualscriptfunctioncall_set_call_mode
cdef godot_method_bind *bind_visualscriptfunctioncall_set_function
cdef godot_method_bind *bind_visualscriptfunctioncall_set_rpc_call_mode
cdef godot_method_bind *bind_visualscriptfunctioncall_set_singleton
cdef godot_method_bind *bind_visualscriptfunctioncall_set_use_default_args
cdef godot_method_bind *bind_visualscriptfunctioncall_set_validate
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptfunctioncall__get_argument_cache = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', '_get_argument_cache')
  bind_visualscriptfunctioncall__set_argument_cache = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', '_set_argument_cache')
  bind_visualscriptfunctioncall_get_base_path = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'get_base_path')
  bind_visualscriptfunctioncall_get_base_script = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'get_base_script')
  bind_visualscriptfunctioncall_get_base_type = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'get_base_type')
  bind_visualscriptfunctioncall_get_basic_type = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'get_basic_type')
  bind_visualscriptfunctioncall_get_call_mode = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'get_call_mode')
  bind_visualscriptfunctioncall_get_function = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'get_function')
  bind_visualscriptfunctioncall_get_rpc_call_mode = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'get_rpc_call_mode')
  bind_visualscriptfunctioncall_get_singleton = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'get_singleton')
  bind_visualscriptfunctioncall_get_use_default_args = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'get_use_default_args')
  bind_visualscriptfunctioncall_get_validate = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'get_validate')
  bind_visualscriptfunctioncall_set_base_path = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'set_base_path')
  bind_visualscriptfunctioncall_set_base_script = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'set_base_script')
  bind_visualscriptfunctioncall_set_base_type = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'set_base_type')
  bind_visualscriptfunctioncall_set_basic_type = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'set_basic_type')
  bind_visualscriptfunctioncall_set_call_mode = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'set_call_mode')
  bind_visualscriptfunctioncall_set_function = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'set_function')
  bind_visualscriptfunctioncall_set_rpc_call_mode = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'set_rpc_call_mode')
  bind_visualscriptfunctioncall_set_singleton = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'set_singleton')
  bind_visualscriptfunctioncall_set_use_default_args = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'set_use_default_args')
  bind_visualscriptfunctioncall_set_validate = api_core.godot_method_bind_get_method('VisualScriptFunctionCall', 'set_validate')

############################Generated class###################################
cdef class VisualScriptFunctionCall(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptFunctionCall")())
##################################Generated Properties#########################################
  @property
  def argument_cache(self): 
    return self.get_argument_cache()
  @argument_cache.setter 
  def argument_cache(self,value): 
    self.set_argument_cache(value)
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
  def call_mode(self): 
    return self.get_call_mode()
  @call_mode.setter 
  def call_mode(self,value): 
    self.set_call_mode(value)
  @property
  def function(self): 
    return self.get_function()
  @function.setter 
  def function(self,value): 
    self.set_function(value)
  @property
  def node_path(self): 
    return self.get_node_path()
  @node_path.setter 
  def node_path(self,value): 
    self.set_node_path(value)
  @property
  def rpc_call_mode(self): 
    return self.get_rpc_call_mode()
  @rpc_call_mode.setter 
  def rpc_call_mode(self,value): 
    self.set_rpc_call_mode(value)
  @property
  def singleton(self): 
    return self.get_singleton()
  @singleton.setter 
  def singleton(self,value): 
    self.set_singleton(value)
  @property
  def use_default_args(self): 
    return self.get_use_default_args()
  @use_default_args.setter 
  def use_default_args(self,value): 
    self.set_use_default_args(value)
  @property
  def validate(self): 
    return self.get_validate()
  @validate.setter 
  def validate(self,value): 
    self.set_validate(value)

##################################Generated Methods#########################################
  def  _get_argument_cache(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall__get_argument_cache,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  _set_argument_cache(self,  Dictionary argument_cache):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &argument_cache._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall__set_argument_cache,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_base_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_get_base_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_base_script(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_get_base_script,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_base_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_get_base_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_basic_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Type* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_get_basic_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_call_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef CallMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_get_call_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_function(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_get_function,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_rpc_call_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef RPCCallMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_get_rpc_call_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_singleton(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_get_singleton,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_use_default_args(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_get_use_default_args,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_validate(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_get_validate,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_base_path(self,  NodePath base_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &base_path._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_set_base_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_base_script(self,  String base_script):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &base_script._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_set_base_script,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_base_type(self,  String base_type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &base_type._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_set_base_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_basic_type(self,  int basic_type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &basic_type
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_set_basic_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_call_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_set_call_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_function(self,  String function):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &function._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_set_function,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rpc_call_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_set_rpc_call_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_singleton(self,  String singleton):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &singleton._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_set_singleton,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_default_args(self,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_set_use_default_args,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_validate(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctioncall_set_validate,self.godot_owner,args,NULL)
    hello('hallo2')
