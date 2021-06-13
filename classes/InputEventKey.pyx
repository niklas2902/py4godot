
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
cimport classes.InputEventWithModifiers 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventkey_get_scancode
cdef godot_method_bind *bind_inputeventkey_get_scancode_with_modifiers
cdef godot_method_bind *bind_inputeventkey_get_unicode
cdef godot_method_bind *bind_inputeventkey_set_echo
cdef godot_method_bind *bind_inputeventkey_set_pressed
cdef godot_method_bind *bind_inputeventkey_set_scancode
cdef godot_method_bind *bind_inputeventkey_set_unicode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventkey_get_scancode = api_core.godot_method_bind_get_method('InputEventKey', 'get_scancode')
  bind_inputeventkey_get_scancode_with_modifiers = api_core.godot_method_bind_get_method('InputEventKey', 'get_scancode_with_modifiers')
  bind_inputeventkey_get_unicode = api_core.godot_method_bind_get_method('InputEventKey', 'get_unicode')
  bind_inputeventkey_set_echo = api_core.godot_method_bind_get_method('InputEventKey', 'set_echo')
  bind_inputeventkey_set_pressed = api_core.godot_method_bind_get_method('InputEventKey', 'set_pressed')
  bind_inputeventkey_set_scancode = api_core.godot_method_bind_get_method('InputEventKey', 'set_scancode')
  bind_inputeventkey_set_unicode = api_core.godot_method_bind_get_method('InputEventKey', 'set_unicode')

############################Generated class###################################
cdef class InputEventKey(classes.InputEventWithModifiers.InputEventWithModifiers):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventKey")())
##################################Generated Properties#########################################
  @property
  def echo(self): 
    return self.get_echo()
  @echo.setter 
  def echo(self,value): 
    self.set_echo(value)
  @property
  def pressed(self): 
    return self.get_pressed()
  @pressed.setter 
  def pressed(self,value): 
    self.set_pressed(value)
  @property
  def scancode(self): 
    return self.get_scancode()
  @scancode.setter 
  def scancode(self,value): 
    self.set_scancode(value)
  @property
  def unicode(self): 
    return self.get_unicode()
  @unicode.setter 
  def unicode(self,value): 
    self.set_unicode(value)

##################################Generated Methods#########################################
  def  get_scancode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventkey_get_scancode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_scancode_with_modifiers(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventkey_get_scancode_with_modifiers,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_unicode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventkey_get_unicode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_echo(self,  bool echo):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &echo
    api_core.godot_method_bind_ptrcall(bind_inputeventkey_set_echo,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pressed(self,  bool pressed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pressed
    api_core.godot_method_bind_ptrcall(bind_inputeventkey_set_pressed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_scancode(self,  int scancode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scancode
    api_core.godot_method_bind_ptrcall(bind_inputeventkey_set_scancode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_unicode(self,  int unicode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &unicode
    api_core.godot_method_bind_ptrcall(bind_inputeventkey_set_unicode,self.godot_owner,args,NULL)
    hello('hallo2')
