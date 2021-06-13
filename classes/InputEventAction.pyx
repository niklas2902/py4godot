
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
cdef godot_method_bind *bind_inputeventaction_get_action
cdef godot_method_bind *bind_inputeventaction_get_strength
cdef godot_method_bind *bind_inputeventaction_set_action
cdef godot_method_bind *bind_inputeventaction_set_pressed
cdef godot_method_bind *bind_inputeventaction_set_strength
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventaction_get_action = api_core.godot_method_bind_get_method('InputEventAction', 'get_action')
  bind_inputeventaction_get_strength = api_core.godot_method_bind_get_method('InputEventAction', 'get_strength')
  bind_inputeventaction_set_action = api_core.godot_method_bind_get_method('InputEventAction', 'set_action')
  bind_inputeventaction_set_pressed = api_core.godot_method_bind_get_method('InputEventAction', 'set_pressed')
  bind_inputeventaction_set_strength = api_core.godot_method_bind_get_method('InputEventAction', 'set_strength')

############################Generated class###################################
cdef class InputEventAction(classes.InputEvent.InputEvent):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventAction")())
##################################Generated Properties#########################################
  @property
  def action(self): 
    return self.get_action()
  @action.setter 
  def action(self,value): 
    self.set_action(value)
  @property
  def pressed(self): 
    return self.get_pressed()
  @pressed.setter 
  def pressed(self,value): 
    self.set_pressed(value)
  @property
  def strength(self): 
    return self.get_strength()
  @strength.setter 
  def strength(self,value): 
    self.set_strength(value)

##################################Generated Methods#########################################
  def  get_action(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventaction_get_action,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_strength(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventaction_get_strength,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_action(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_inputeventaction_set_action,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pressed(self,  bool pressed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pressed
    api_core.godot_method_bind_ptrcall(bind_inputeventaction_set_pressed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_strength(self,  float strength):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &strength
    api_core.godot_method_bind_ptrcall(bind_inputeventaction_set_strength,self.godot_owner,args,NULL)
    hello('hallo2')
