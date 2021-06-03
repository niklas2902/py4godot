
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
cdef class RegEx(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RegEx")())
##################################Generated Methods#########################################
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_regex_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  compile(self,  String pattern):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &pattern._native
    api_core.godot_method_bind_ptrcall(bind_regex_compile,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_group_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_regex_get_group_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_names(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_regex_get_names,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_pattern(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_regex_get_pattern,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  is_valid(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_regex_is_valid,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  search(self,  String subject,  int offset,  int end):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[3]

    args[0] = &subject._native
    args[1] = &offset
    args[2] = &end
    api_core.godot_method_bind_ptrcall(bind_regex_search,self.godot_owner,args,&ret)
    hello('hallo2')
  def  search_all(self,  String subject,  int offset,  int end):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[3]

    args[0] = &subject._native
    args[1] = &offset
    args[2] = &end
    api_core.godot_method_bind_ptrcall(bind_regex_search_all,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  sub(self,  String subject,  String replacement,  bool all,  int offset,  int end):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[5]

    args[0] = &subject._native
    args[1] = &replacement._native
    args[2] = &all
    args[3] = &offset
    args[4] = &end
    api_core.godot_method_bind_ptrcall(bind_regex_sub,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

