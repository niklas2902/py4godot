from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class JSONParseResult(Reference):
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
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_get_error,self.godot_owner,[NULL,],&ret)
  def  get_error_line(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_get_error_line,self.godot_owner,[NULL,],&ret)
  def  get_error_string(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_get_error_string,self.godot_owner,[NULL,],&ret)
  def  get_result(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_get_result,self.godot_owner,[NULL,],&ret)
  def  set_error(self, error):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_set_error,self.godot_owner,[NULL,],NULL)
  def  set_error_line(self, error_line):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_set_error_line,self.godot_owner,[NULL,],NULL)
  def  set_error_string(self, error_string):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_set_error_string,self.godot_owner,[NULL,],NULL)
  def  set_result(self, result):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_jsonparseresult_set_result,self.godot_owner,[NULL,],NULL)
