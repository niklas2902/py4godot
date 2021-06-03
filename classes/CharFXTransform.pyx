
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
cdef godot_method_bind *bind_charfxtransform_get_absolute_index
cdef godot_method_bind *bind_charfxtransform_get_character
cdef godot_method_bind *bind_charfxtransform_get_color
cdef godot_method_bind *bind_charfxtransform_get_elapsed_time
cdef godot_method_bind *bind_charfxtransform_get_environment
cdef godot_method_bind *bind_charfxtransform_get_offset
cdef godot_method_bind *bind_charfxtransform_get_relative_index
cdef godot_method_bind *bind_charfxtransform_is_visible
cdef godot_method_bind *bind_charfxtransform_set_absolute_index
cdef godot_method_bind *bind_charfxtransform_set_character
cdef godot_method_bind *bind_charfxtransform_set_color
cdef godot_method_bind *bind_charfxtransform_set_elapsed_time
cdef godot_method_bind *bind_charfxtransform_set_environment
cdef godot_method_bind *bind_charfxtransform_set_offset
cdef godot_method_bind *bind_charfxtransform_set_relative_index
cdef godot_method_bind *bind_charfxtransform_set_visibility
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_charfxtransform_get_absolute_index = api_core.godot_method_bind_get_method('CharFXTransform', 'get_absolute_index')
  bind_charfxtransform_get_character = api_core.godot_method_bind_get_method('CharFXTransform', 'get_character')
  bind_charfxtransform_get_color = api_core.godot_method_bind_get_method('CharFXTransform', 'get_color')
  bind_charfxtransform_get_elapsed_time = api_core.godot_method_bind_get_method('CharFXTransform', 'get_elapsed_time')
  bind_charfxtransform_get_environment = api_core.godot_method_bind_get_method('CharFXTransform', 'get_environment')
  bind_charfxtransform_get_offset = api_core.godot_method_bind_get_method('CharFXTransform', 'get_offset')
  bind_charfxtransform_get_relative_index = api_core.godot_method_bind_get_method('CharFXTransform', 'get_relative_index')
  bind_charfxtransform_is_visible = api_core.godot_method_bind_get_method('CharFXTransform', 'is_visible')
  bind_charfxtransform_set_absolute_index = api_core.godot_method_bind_get_method('CharFXTransform', 'set_absolute_index')
  bind_charfxtransform_set_character = api_core.godot_method_bind_get_method('CharFXTransform', 'set_character')
  bind_charfxtransform_set_color = api_core.godot_method_bind_get_method('CharFXTransform', 'set_color')
  bind_charfxtransform_set_elapsed_time = api_core.godot_method_bind_get_method('CharFXTransform', 'set_elapsed_time')
  bind_charfxtransform_set_environment = api_core.godot_method_bind_get_method('CharFXTransform', 'set_environment')
  bind_charfxtransform_set_offset = api_core.godot_method_bind_get_method('CharFXTransform', 'set_offset')
  bind_charfxtransform_set_relative_index = api_core.godot_method_bind_get_method('CharFXTransform', 'set_relative_index')
  bind_charfxtransform_set_visibility = api_core.godot_method_bind_get_method('CharFXTransform', 'set_visibility')

############################Generated class###################################
cdef class CharFXTransform(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CharFXTransform")())
##################################Generated Properties#########################################
  @property
  def absolute_index(self): 
    return self.get_absolute_index()
  @absolute_index.setter 
  def absolute_index(self,value): 
    self.set_absolute_index(value)
  @property
  def character(self): 
    return self.get_character()
  @character.setter 
  def character(self,value): 
    self.set_character(value)
  @property
  def color(self): 
    return self.get_color()
  @color.setter 
  def color(self,value): 
    self.set_color(value)
  @property
  def elapsed_time(self): 
    return self.get_elapsed_time()
  @elapsed_time.setter 
  def elapsed_time(self,value): 
    self.set_elapsed_time(value)
  @property
  def env(self): 
    return self.get_env()
  @env.setter 
  def env(self,value): 
    self.set_env(value)
  @property
  def offset(self): 
    return self.get_offset()
  @offset.setter 
  def offset(self,value): 
    self.set_offset(value)
  @property
  def relative_index(self): 
    return self.get_relative_index()
  @relative_index.setter 
  def relative_index(self,value): 
    self.set_relative_index(value)
  @property
  def visible(self): 
    return self.get_visible()
  @visible.setter 
  def visible(self,value): 
    self.set_visible(value)

##################################Generated Methods#########################################
  def  get_absolute_index(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_charfxtransform_get_absolute_index,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_character(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_charfxtransform_get_character,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_charfxtransform_get_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_elapsed_time(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_charfxtransform_get_elapsed_time,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_environment(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_charfxtransform_get_environment,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_charfxtransform_get_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_relative_index(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_charfxtransform_get_relative_index,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_visible(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_charfxtransform_is_visible,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_absolute_index(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_charfxtransform_set_absolute_index,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_character(self,  int character):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &character
    api_core.godot_method_bind_ptrcall(bind_charfxtransform_set_character,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_charfxtransform_set_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_elapsed_time(self,  float time):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &time
    api_core.godot_method_bind_ptrcall(bind_charfxtransform_set_elapsed_time,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_environment(self,  Dictionary environment):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &environment._native
    api_core.godot_method_bind_ptrcall(bind_charfxtransform_set_environment,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_offset(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_charfxtransform_set_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_relative_index(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_charfxtransform_set_relative_index,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_visibility(self,  bool visibility):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &visibility
    api_core.godot_method_bind_ptrcall(bind_charfxtransform_set_visibility,self.godot_owner,args,NULL)
    hello('hallo2')
