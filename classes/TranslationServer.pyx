
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
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Translation
cimport classes.Translation
cimport classes.Object 

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
cdef class TranslationServer(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TranslationServer")())
##################################Generated Methods#########################################
  def  add_translation(self,  classes.Translation.Translation translation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = translation.godot_owner
    api_core.godot_method_bind_ptrcall(bind_translationserver_add_translation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_translationserver_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_loaded_locales(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_translationserver_get_loaded_locales,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_locale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_translationserver_get_locale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_locale_name(self,  String locale):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &locale._native
    api_core.godot_method_bind_ptrcall(bind_translationserver_get_locale_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  remove_translation(self,  classes.Translation.Translation translation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = translation.godot_owner
    api_core.godot_method_bind_ptrcall(bind_translationserver_remove_translation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_locale(self,  String locale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &locale._native
    api_core.godot_method_bind_ptrcall(bind_translationserver_set_locale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  translate(self,  String message):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &message._native
    api_core.godot_method_bind_ptrcall(bind_translationserver_translate,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

