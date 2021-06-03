
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
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_jsonparseresult_get_error
cdef godot_method_bind *bind_jsonparseresult_get_error_line
cdef godot_method_bind *bind_jsonparseresult_get_error_string
cdef godot_method_bind *bind_jsonparseresult_get_result
cdef godot_method_bind *bind_jsonparseresult_set_error
cdef godot_method_bind *bind_jsonparseresult_set_error_line
cdef godot_method_bind *bind_jsonparseresult_set_error_string
cdef godot_method_bind *bind_jsonparseresult_set_result
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_jsonparseresult_get_error = api_core.godot_method_bind_get_method('JSONParseResult', 'get_error')
  bind_jsonparseresult_get_error_line = api_core.godot_method_bind_get_method('JSONParseResult', 'get_error_line')
  bind_jsonparseresult_get_error_string = api_core.godot_method_bind_get_method('JSONParseResult', 'get_error_string')
  bind_jsonparseresult_get_result = api_core.godot_method_bind_get_method('JSONParseResult', 'get_result')
  bind_jsonparseresult_set_error = api_core.godot_method_bind_get_method('JSONParseResult', 'set_error')
  bind_jsonparseresult_set_error_line = api_core.godot_method_bind_get_method('JSONParseResult', 'set_error_line')
  bind_jsonparseresult_set_error_string = api_core.godot_method_bind_get_method('JSONParseResult', 'set_error_string')
  bind_jsonparseresult_set_result = api_core.godot_method_bind_get_method('JSONParseResult', 'set_result')

############################Generated class###################################
cdef class JSONParseResult(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("JSONParseResult")())
##################################Generated Properties#########################################
  @property
  def error(self): 
    return self.get_error()
  @error.setter 
  def error(self,value): 
    self.set_error(value)
  @property
  def error_line(self): 
    return self.get_error_line()
  @error_line.setter 
  def error_line(self,value): 
    self.set_error_line(value)
  @property
  def error_string(self): 
    return self.get_error_string()
  @error_string.setter 
  def error_string(self,value): 
    self.set_error_string(value)
  @property
  def result(self): 
    return self.get_result()
  @result.setter 
  def result(self,value): 
    self.set_result(value)

##################################Generated Methods#########################################
  def  get_error(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_get_error,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_error_line(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_get_error_line,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_error_string(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_get_error_string,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_result(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_get_result,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  set_error(self,  int error):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &error
    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_set_error,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_error_line(self,  int error_line):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &error_line
    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_set_error_line,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_error_string(self,  String error_string):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &error_string._native
    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_set_error_string,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_result(self,  Variant result):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &result._native
    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_set_result,self.godot_owner,args,NULL)
    hello('hallo2')
