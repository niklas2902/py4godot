
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
cimport classes.InputEvent 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventjoypadmotion_get_axis
cdef godot_method_bind *bind_inputeventjoypadmotion_get_axis_value
cdef godot_method_bind *bind_inputeventjoypadmotion_set_axis
cdef godot_method_bind *bind_inputeventjoypadmotion_set_axis_value
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventjoypadmotion_get_axis = api_core.godot_method_bind_get_method('InputEventJoypadMotion', 'get_axis')
  bind_inputeventjoypadmotion_get_axis_value = api_core.godot_method_bind_get_method('InputEventJoypadMotion', 'get_axis_value')
  bind_inputeventjoypadmotion_set_axis = api_core.godot_method_bind_get_method('InputEventJoypadMotion', 'set_axis')
  bind_inputeventjoypadmotion_set_axis_value = api_core.godot_method_bind_get_method('InputEventJoypadMotion', 'set_axis_value')

############################Generated class###################################
cdef class InputEventJoypadMotion(classes.InputEvent.InputEvent):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventJoypadMotion")())
##################################Generated Properties#########################################
  @property
  def axis(self): 
    return self.get_axis()
  @axis.setter 
  def axis(self,value): 
    self.set_axis(value)
  @property
  def axis_value(self): 
    return self.get_axis_value()
  @axis_value.setter 
  def axis_value(self,value): 
    self.set_axis_value(value)

##################################Generated Methods#########################################
  def  get_axis(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadmotion_get_axis,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_axis_value(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadmotion_get_axis_value,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_axis(self,  int axis):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &axis
    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadmotion_set_axis,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_axis_value(self,  float axis_value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &axis_value
    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadmotion_set_axis_value,self.godot_owner,args,NULL)
    hello('hallo2')
