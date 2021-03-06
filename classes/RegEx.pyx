from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_regex_clear
cdef godot_method_bind *bind_regex_compile
cdef godot_method_bind *bind_regex_get_group_count
cdef godot_method_bind *bind_regex_get_names
cdef godot_method_bind *bind_regex_get_pattern
cdef godot_method_bind *bind_regex_is_valid
cdef godot_method_bind *bind_regex_search
cdef godot_method_bind *bind_regex_search_all
cdef godot_method_bind *bind_regex_sub
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_regex_clear = api_core.godot_method_bind_get_method('RegEx', 'clear')
  bind_regex_compile = api_core.godot_method_bind_get_method('RegEx', 'compile')
  bind_regex_get_group_count = api_core.godot_method_bind_get_method('RegEx', 'get_group_count')
  bind_regex_get_names = api_core.godot_method_bind_get_method('RegEx', 'get_names')
  bind_regex_get_pattern = api_core.godot_method_bind_get_method('RegEx', 'get_pattern')
  bind_regex_is_valid = api_core.godot_method_bind_get_method('RegEx', 'is_valid')
  bind_regex_search = api_core.godot_method_bind_get_method('RegEx', 'search')
  bind_regex_search_all = api_core.godot_method_bind_get_method('RegEx', 'search_all')
  bind_regex_sub = api_core.godot_method_bind_get_method('RegEx', 'sub')

############################Generated class###################################
cdef class RegEx(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RegEx")())
##################################Generated Methods#########################################
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_regex_clear,self.godot_owner,[NULL,],NULL)
  def  compile(self, pattern):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_regex_compile,self.godot_owner,[NULL,],&ret)
  def  get_group_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_regex_get_group_count,self.godot_owner,[NULL,],&ret)
  def  get_names(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_regex_get_names,self.godot_owner,[NULL,],&ret)
  def  get_pattern(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_regex_get_pattern,self.godot_owner,[NULL,],&ret)
  def  is_valid(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_regex_is_valid,self.godot_owner,[NULL,],&ret)
  def  search(self, subjectoffsetend):
    cdef godot_object *_owner = self.godot_owner
    cdef RegExMatch ret
    api_core.godot_method_bind_ptrcall(bind_regex_search,self.godot_owner,[NULL,],&ret)
  def  search_all(self, subjectoffsetend):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_regex_search_all,self.godot_owner,[NULL,],&ret)
  def  sub(self, subjectreplacementalloffsetend):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_regex_sub,self.godot_owner,[NULL,],&ret)
