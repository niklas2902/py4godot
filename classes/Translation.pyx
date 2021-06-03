
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_translation__get_messages
cdef godot_method_bind *bind_translation__set_messages
cdef godot_method_bind *bind_translation_add_message
cdef godot_method_bind *bind_translation_erase_message
cdef godot_method_bind *bind_translation_get_locale
cdef godot_method_bind *bind_translation_get_message
cdef godot_method_bind *bind_translation_get_message_count
cdef godot_method_bind *bind_translation_get_message_list
cdef godot_method_bind *bind_translation_set_locale
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_translation__get_messages = api_core.godot_method_bind_get_method('Translation', '_get_messages')
  bind_translation__set_messages = api_core.godot_method_bind_get_method('Translation', '_set_messages')
  bind_translation_add_message = api_core.godot_method_bind_get_method('Translation', 'add_message')
  bind_translation_erase_message = api_core.godot_method_bind_get_method('Translation', 'erase_message')
  bind_translation_get_locale = api_core.godot_method_bind_get_method('Translation', 'get_locale')
  bind_translation_get_message = api_core.godot_method_bind_get_method('Translation', 'get_message')
  bind_translation_get_message_count = api_core.godot_method_bind_get_method('Translation', 'get_message_count')
  bind_translation_get_message_list = api_core.godot_method_bind_get_method('Translation', 'get_message_list')
  bind_translation_set_locale = api_core.godot_method_bind_get_method('Translation', 'set_locale')

############################Generated class###################################
cdef class Translation(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Translation")())
##################################Generated Properties#########################################
  @property
  def locale(self): 
    return self.get_locale()
  @locale.setter 
  def locale(self,value): 
    self.set_locale(value)
  @property
  def messages(self): 
    return self.get_messages()
  @messages.setter 
  def messages(self,value): 
    self.set_messages(value)

##################################Generated Methods#########################################
  def  _get_messages(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_translation__get_messages,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  _set_messages(self,  PoolStringArray arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_translation__set_messages,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_message(self,  String src_message,  String xlated_message):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &src_message._native
    args[1] = &xlated_message._native
    api_core.godot_method_bind_ptrcall(bind_translation_add_message,self.godot_owner,args,NULL)
    hello('hallo2')
  def  erase_message(self,  String src_message):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &src_message._native
    api_core.godot_method_bind_ptrcall(bind_translation_erase_message,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_locale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_translation_get_locale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_message(self,  String src_message):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &src_message._native
    api_core.godot_method_bind_ptrcall(bind_translation_get_message,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_message_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_translation_get_message_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_message_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_translation_get_message_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_locale(self,  String locale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &locale._native
    api_core.godot_method_bind_ptrcall(bind_translation_set_locale,self.godot_owner,args,NULL)
    hello('hallo2')
