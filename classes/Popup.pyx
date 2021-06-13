
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
cimport classes.Control 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_popup_is_exclusive
cdef godot_method_bind *bind_popup_popup
cdef godot_method_bind *bind_popup_popup_centered
cdef godot_method_bind *bind_popup_popup_centered_clamped
cdef godot_method_bind *bind_popup_popup_centered_minsize
cdef godot_method_bind *bind_popup_popup_centered_ratio
cdef godot_method_bind *bind_popup_set_as_minsize
cdef godot_method_bind *bind_popup_set_exclusive
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_popup_is_exclusive = api_core.godot_method_bind_get_method('Popup', 'is_exclusive')
  bind_popup_popup = api_core.godot_method_bind_get_method('Popup', 'popup')
  bind_popup_popup_centered = api_core.godot_method_bind_get_method('Popup', 'popup_centered')
  bind_popup_popup_centered_clamped = api_core.godot_method_bind_get_method('Popup', 'popup_centered_clamped')
  bind_popup_popup_centered_minsize = api_core.godot_method_bind_get_method('Popup', 'popup_centered_minsize')
  bind_popup_popup_centered_ratio = api_core.godot_method_bind_get_method('Popup', 'popup_centered_ratio')
  bind_popup_set_as_minsize = api_core.godot_method_bind_get_method('Popup', 'set_as_minsize')
  bind_popup_set_exclusive = api_core.godot_method_bind_get_method('Popup', 'set_exclusive')

############################Generated class###################################
cdef class Popup(classes.Control.Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Popup")())
##################################Generated Properties#########################################
  @property
  def popup_exclusive(self): 
    return self.get_popup_exclusive()
  @popup_exclusive.setter 
  def popup_exclusive(self,value): 
    self.set_popup_exclusive(value)

##################################Generated Methods#########################################
  def  is_exclusive(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_popup_is_exclusive,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  popup(self,  Rect2 bounds):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bounds._native
    api_core.godot_method_bind_ptrcall(bind_popup_popup,self.godot_owner,args,NULL)
    hello('hallo2')
  def  popup_centered(self,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size._native
    api_core.godot_method_bind_ptrcall(bind_popup_popup_centered,self.godot_owner,args,NULL)
    hello('hallo2')
  def  popup_centered_clamped(self,  Vector2 size,  float fallback_ratio):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &size._native
    args[1] = &fallback_ratio
    api_core.godot_method_bind_ptrcall(bind_popup_popup_centered_clamped,self.godot_owner,args,NULL)
    hello('hallo2')
  def  popup_centered_minsize(self,  Vector2 minsize):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &minsize._native
    api_core.godot_method_bind_ptrcall(bind_popup_popup_centered_minsize,self.godot_owner,args,NULL)
    hello('hallo2')
  def  popup_centered_ratio(self,  float ratio):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ratio
    api_core.godot_method_bind_ptrcall(bind_popup_popup_centered_ratio,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_as_minsize(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_popup_set_as_minsize,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_exclusive(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_popup_set_exclusive,self.godot_owner,args,NULL)
    hello('hallo2')
