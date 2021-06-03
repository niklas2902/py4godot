
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
cdef class RegExMatch(classes.Reference.Reference):
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
  def  get_end(self,  Variant name):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_end,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_group_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_group_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_names(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_names,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  get_start(self,  Variant name):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_start,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_string(self,  Variant name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_string,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_strings(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_strings,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_subject(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_regexmatch_get_subject,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

