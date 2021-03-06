from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_regexmatch_get_end
cdef godot_method_bind *bind_regexmatch_get_group_count
cdef godot_method_bind *bind_regexmatch_get_names
cdef godot_method_bind *bind_regexmatch_get_start
cdef godot_method_bind *bind_regexmatch_get_string
cdef godot_method_bind *bind_regexmatch_get_strings
cdef godot_method_bind *bind_regexmatch_get_subject
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_regexmatch_get_end = api_core.godot_method_bind_get_method('RegExMatch', 'get_end')
  bind_regexmatch_get_group_count = api_core.godot_method_bind_get_method('RegExMatch', 'get_group_count')
  bind_regexmatch_get_names = api_core.godot_method_bind_get_method('RegExMatch', 'get_names')
  bind_regexmatch_get_start = api_core.godot_method_bind_get_method('RegExMatch', 'get_start')
  bind_regexmatch_get_string = api_core.godot_method_bind_get_method('RegExMatch', 'get_string')
  bind_regexmatch_get_strings = api_core.godot_method_bind_get_method('RegExMatch', 'get_strings')
  bind_regexmatch_get_subject = api_core.godot_method_bind_get_method('RegExMatch', 'get_subject')

############################Generated class###################################
cdef class RegExMatch(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RegExMatch")())
##################################Generated Properties#########################################
  @property
  def names(self): 
    return self.get_names()
  @names.setter 
  def names(self,value): 
    self.set_names(value)
  @property
  def strings(self): 
    return self.get_strings()
  @strings.setter 
  def strings(self,value): 
    self.set_strings(value)
  @property
  def subject(self): 
    return self.get_subject()
  @subject.setter 
  def subject(self,value): 
    self.set_subject(value)

##################################Generated Methods#########################################
  def  get_end(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_end,self.godot_owner,[NULL,],&ret)
  def  get_group_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_group_count,self.godot_owner,[NULL,],&ret)
  def  get_names(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_names,self.godot_owner,[NULL,],&ret)
  def  get_start(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_start,self.godot_owner,[NULL,],&ret)
  def  get_string(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_string,self.godot_owner,[NULL,],&ret)
  def  get_strings(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_strings,self.godot_owner,[NULL,],&ret)
  def  get_subject(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_subject,self.godot_owner,[NULL,],&ret)
