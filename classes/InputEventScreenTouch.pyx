
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
cdef godot_method_bind *bind_inputeventscreentouch_get_index
cdef godot_method_bind *bind_inputeventscreentouch_get_position
cdef godot_method_bind *bind_inputeventscreentouch_set_index
cdef godot_method_bind *bind_inputeventscreentouch_set_position
cdef godot_method_bind *bind_inputeventscreentouch_set_pressed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventscreentouch_get_index = api_core.godot_method_bind_get_method('InputEventScreenTouch', 'get_index')
  bind_inputeventscreentouch_get_position = api_core.godot_method_bind_get_method('InputEventScreenTouch', 'get_position')
  bind_inputeventscreentouch_set_index = api_core.godot_method_bind_get_method('InputEventScreenTouch', 'set_index')
  bind_inputeventscreentouch_set_position = api_core.godot_method_bind_get_method('InputEventScreenTouch', 'set_position')
  bind_inputeventscreentouch_set_pressed = api_core.godot_method_bind_get_method('InputEventScreenTouch', 'set_pressed')

############################Generated class###################################
cdef class InputEventScreenTouch(classes.InputEvent.InputEvent):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventScreenTouch")())
##################################Generated Properties#########################################
  @property
  def index(self): 
    return self.get_index()
  @index.setter 
  def index(self,value): 
    self.set_index(value)
  @property
  def position(self): 
    return self.get_position()
  @position.setter 
  def position(self,value): 
    self.set_position(value)
  @property
  def pressed(self): 
    return self.get_pressed()
  @pressed.setter 
  def pressed(self,value): 
    self.set_pressed(value)

##################################Generated Methods#########################################
  def  get_index(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventscreentouch_get_index,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventscreentouch_get_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  set_index(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_inputeventscreentouch_set_index,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_position(self,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_inputeventscreentouch_set_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pressed(self,  bool pressed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pressed
    api_core.godot_method_bind_ptrcall(bind_inputeventscreentouch_set_pressed,self.godot_owner,args,NULL)
    hello('hallo2')
