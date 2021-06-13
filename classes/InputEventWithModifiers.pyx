
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
cimport classes.InputEvent 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventwithmodifiers_get_alt
cdef godot_method_bind *bind_inputeventwithmodifiers_get_command
cdef godot_method_bind *bind_inputeventwithmodifiers_get_control
cdef godot_method_bind *bind_inputeventwithmodifiers_get_metakey
cdef godot_method_bind *bind_inputeventwithmodifiers_get_shift
cdef godot_method_bind *bind_inputeventwithmodifiers_set_alt
cdef godot_method_bind *bind_inputeventwithmodifiers_set_command
cdef godot_method_bind *bind_inputeventwithmodifiers_set_control
cdef godot_method_bind *bind_inputeventwithmodifiers_set_metakey
cdef godot_method_bind *bind_inputeventwithmodifiers_set_shift
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventwithmodifiers_get_alt = api_core.godot_method_bind_get_method('InputEventWithModifiers', 'get_alt')
  bind_inputeventwithmodifiers_get_command = api_core.godot_method_bind_get_method('InputEventWithModifiers', 'get_command')
  bind_inputeventwithmodifiers_get_control = api_core.godot_method_bind_get_method('InputEventWithModifiers', 'get_control')
  bind_inputeventwithmodifiers_get_metakey = api_core.godot_method_bind_get_method('InputEventWithModifiers', 'get_metakey')
  bind_inputeventwithmodifiers_get_shift = api_core.godot_method_bind_get_method('InputEventWithModifiers', 'get_shift')
  bind_inputeventwithmodifiers_set_alt = api_core.godot_method_bind_get_method('InputEventWithModifiers', 'set_alt')
  bind_inputeventwithmodifiers_set_command = api_core.godot_method_bind_get_method('InputEventWithModifiers', 'set_command')
  bind_inputeventwithmodifiers_set_control = api_core.godot_method_bind_get_method('InputEventWithModifiers', 'set_control')
  bind_inputeventwithmodifiers_set_metakey = api_core.godot_method_bind_get_method('InputEventWithModifiers', 'set_metakey')
  bind_inputeventwithmodifiers_set_shift = api_core.godot_method_bind_get_method('InputEventWithModifiers', 'set_shift')

############################Generated class###################################
cdef class InputEventWithModifiers(classes.InputEvent.InputEvent):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventWithModifiers")())
##################################Generated Properties#########################################
  @property
  def alt(self): 
    return self.get_alt()
  @alt.setter 
  def alt(self,value): 
    self.set_alt(value)
  @property
  def command(self): 
    return self.get_command()
  @command.setter 
  def command(self,value): 
    self.set_command(value)
  @property
  def control(self): 
    return self.get_control()
  @control.setter 
  def control(self,value): 
    self.set_control(value)
  @property
  def meta(self): 
    return self.get_meta()
  @meta.setter 
  def meta(self,value): 
    self.set_meta(value)
  @property
  def shift(self): 
    return self.get_shift()
  @shift.setter 
  def shift(self,value): 
    self.set_shift(value)

##################################Generated Methods#########################################
  def  get_alt(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventwithmodifiers_get_alt,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_command(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventwithmodifiers_get_command,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_control(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventwithmodifiers_get_control,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_metakey(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventwithmodifiers_get_metakey,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_shift(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventwithmodifiers_get_shift,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_alt(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_inputeventwithmodifiers_set_alt,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_command(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_inputeventwithmodifiers_set_command,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_control(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_inputeventwithmodifiers_set_control,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_metakey(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_inputeventwithmodifiers_set_metakey,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shift(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_inputeventwithmodifiers_set_shift,self.godot_owner,args,NULL)
    hello('hallo2')
