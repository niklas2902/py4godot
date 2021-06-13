
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
cdef godot_method_bind *bind_inputeventmouse_get_button_mask
cdef godot_method_bind *bind_inputeventmouse_get_global_position
cdef godot_method_bind *bind_inputeventmouse_get_position
cdef godot_method_bind *bind_inputeventmouse_set_button_mask
cdef godot_method_bind *bind_inputeventmouse_set_global_position
cdef godot_method_bind *bind_inputeventmouse_set_position
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventmouse_get_button_mask = api_core.godot_method_bind_get_method('InputEventMouse', 'get_button_mask')
  bind_inputeventmouse_get_global_position = api_core.godot_method_bind_get_method('InputEventMouse', 'get_global_position')
  bind_inputeventmouse_get_position = api_core.godot_method_bind_get_method('InputEventMouse', 'get_position')
  bind_inputeventmouse_set_button_mask = api_core.godot_method_bind_get_method('InputEventMouse', 'set_button_mask')
  bind_inputeventmouse_set_global_position = api_core.godot_method_bind_get_method('InputEventMouse', 'set_global_position')
  bind_inputeventmouse_set_position = api_core.godot_method_bind_get_method('InputEventMouse', 'set_position')

############################Generated class###################################
cdef class InputEventMouse(classes.InputEventWithModifiers.InputEventWithModifiers):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventMouse")())
##################################Generated Properties#########################################
  @property
  def button_mask(self): 
    return self.get_button_mask()
  @button_mask.setter 
  def button_mask(self,value): 
    self.set_button_mask(value)
  @property
  def global_position(self): 
    return self.get_global_position()
  @global_position.setter 
  def global_position(self,value): 
    self.set_global_position(value)
  @property
  def position(self): 
    return self.get_position()
  @position.setter 
  def position(self,value): 
    self.set_position(value)

##################################Generated Methods#########################################
  def  get_button_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventmouse_get_button_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_global_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventmouse_get_global_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventmouse_get_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  set_button_mask(self,  int button_mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &button_mask
    api_core.godot_method_bind_ptrcall(bind_inputeventmouse_set_button_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_global_position(self,  Vector2 global_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &global_position._native
    api_core.godot_method_bind_ptrcall(bind_inputeventmouse_set_global_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_position(self,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_inputeventmouse_set_position,self.godot_owner,args,NULL)
    hello('hallo2')
