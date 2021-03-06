from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_translationserver_add_translation
cdef godot_method_bind *bind_translationserver_clear
cdef godot_method_bind *bind_translationserver_get_loaded_locales
cdef godot_method_bind *bind_translationserver_get_locale
cdef godot_method_bind *bind_translationserver_get_locale_name
cdef godot_method_bind *bind_translationserver_remove_translation
cdef godot_method_bind *bind_translationserver_set_locale
cdef godot_method_bind *bind_translationserver_translate
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_translationserver_add_translation = api_core.godot_method_bind_get_method('TranslationServer', 'add_translation')
  bind_translationserver_clear = api_core.godot_method_bind_get_method('TranslationServer', 'clear')
  bind_translationserver_get_loaded_locales = api_core.godot_method_bind_get_method('TranslationServer', 'get_loaded_locales')
  bind_translationserver_get_locale = api_core.godot_method_bind_get_method('TranslationServer', 'get_locale')
  bind_translationserver_get_locale_name = api_core.godot_method_bind_get_method('TranslationServer', 'get_locale_name')
  bind_translationserver_remove_translation = api_core.godot_method_bind_get_method('TranslationServer', 'remove_translation')
  bind_translationserver_set_locale = api_core.godot_method_bind_get_method('TranslationServer', 'set_locale')
  bind_translationserver_translate = api_core.godot_method_bind_get_method('TranslationServer', 'translate')

############################Generated class###################################
cdef class TranslationServer(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TranslationServer")())
##################################Generated Methods#########################################
  def  add_translation(self, translation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_translationserver_add_translation,self.godot_owner,[NULL,],NULL)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_translationserver_clear,self.godot_owner,[NULL,],NULL)
  def  get_loaded_locales(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_translationserver_get_loaded_locales,self.godot_owner,[NULL,],&ret)
  def  get_locale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_translationserver_get_locale,self.godot_owner,[NULL,],&ret)
  def  get_locale_name(self, locale):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_translationserver_get_locale_name,self.godot_owner,[NULL,],&ret)
  def  remove_translation(self, translation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_translationserver_remove_translation,self.godot_owner,[NULL,],NULL)
  def  set_locale(self, locale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_translationserver_set_locale,self.godot_owner,[NULL,],NULL)
  def  translate(self, message):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_translationserver_translate,self.godot_owner,[NULL,],&ret)
