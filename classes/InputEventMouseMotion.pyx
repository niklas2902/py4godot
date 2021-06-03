
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
cimport classes.InputEventMouse 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventmousemotion_get_pressure
cdef godot_method_bind *bind_inputeventmousemotion_get_relative
cdef godot_method_bind *bind_inputeventmousemotion_get_speed
cdef godot_method_bind *bind_inputeventmousemotion_get_tilt
cdef godot_method_bind *bind_inputeventmousemotion_set_pressure
cdef godot_method_bind *bind_inputeventmousemotion_set_relative
cdef godot_method_bind *bind_inputeventmousemotion_set_speed
cdef godot_method_bind *bind_inputeventmousemotion_set_tilt
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventmousemotion_get_pressure = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'get_pressure')
  bind_inputeventmousemotion_get_relative = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'get_relative')
  bind_inputeventmousemotion_get_speed = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'get_speed')
  bind_inputeventmousemotion_get_tilt = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'get_tilt')
  bind_inputeventmousemotion_set_pressure = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'set_pressure')
  bind_inputeventmousemotion_set_relative = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'set_relative')
  bind_inputeventmousemotion_set_speed = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'set_speed')
  bind_inputeventmousemotion_set_tilt = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'set_tilt')

############################Generated class###################################
cdef class InputEventMouseMotion(classes.InputEventMouse.InputEventMouse):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventMouseMotion")())
##################################Generated Properties#########################################
  @property
  def pressure(self): 
    return self.get_pressure()
  @pressure.setter 
  def pressure(self,value): 
    self.set_pressure(value)
  @property
  def relative(self): 
    return self.get_relative()
  @relative.setter 
  def relative(self,value): 
    self.set_relative(value)
  @property
  def speed(self): 
    return self.get_speed()
  @speed.setter 
  def speed(self,value): 
    self.set_speed(value)
  @property
  def tilt(self): 
    return self.get_tilt()
  @tilt.setter 
  def tilt(self,value): 
    self.set_tilt(value)

##################################Generated Methods#########################################
  def  get_pressure(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_get_pressure,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_relative(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_get_relative,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_speed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_get_speed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_tilt(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_get_tilt,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  set_pressure(self,  float pressure):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pressure
    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_set_pressure,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_relative(self,  Vector2 relative):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &relative._native
    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_set_relative,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_speed(self,  Vector2 speed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &speed._native
    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_set_speed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tilt(self,  Vector2 tilt):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &tilt._native
    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_set_tilt,self.godot_owner,args,NULL)
    hello('hallo2')
