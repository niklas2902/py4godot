from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class Translation(Resource):
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
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_translation__get_messages,self.godot_owner,[NULL,],&ret)
  def  _set_messages(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_translation__set_messages,self.godot_owner,[NULL,],NULL)
  def  add_message(self, src_messagexlated_message):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_translation_add_message,self.godot_owner,[NULL,],NULL)
  def  erase_message(self, src_message):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_translation_erase_message,self.godot_owner,[NULL,],NULL)
  def  get_locale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_translation_get_locale,self.godot_owner,[NULL,],&ret)
  def  get_message(self, src_message):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_translation_get_message,self.godot_owner,[NULL,],&ret)
  def  get_message_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_translation_get_message_count,self.godot_owner,[NULL,],&ret)
  def  get_message_list(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_translation_get_message_list,self.godot_owner,[NULL,],&ret)
  def  set_locale(self, locale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_translation_set_locale,self.godot_owner,[NULL,],NULL)
