
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
cdef godot_method_bind *bind_inputeventscreendrag_get_index
cdef godot_method_bind *bind_inputeventscreendrag_get_position
cdef godot_method_bind *bind_inputeventscreendrag_get_relative
cdef godot_method_bind *bind_inputeventscreendrag_get_speed
cdef godot_method_bind *bind_inputeventscreendrag_set_index
cdef godot_method_bind *bind_inputeventscreendrag_set_position
cdef godot_method_bind *bind_inputeventscreendrag_set_relative
cdef godot_method_bind *bind_inputeventscreendrag_set_speed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventscreendrag_get_index = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'get_index')
  bind_inputeventscreendrag_get_position = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'get_position')
  bind_inputeventscreendrag_get_relative = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'get_relative')
  bind_inputeventscreendrag_get_speed = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'get_speed')
  bind_inputeventscreendrag_set_index = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'set_index')
  bind_inputeventscreendrag_set_position = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'set_position')
  bind_inputeventscreendrag_set_relative = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'set_relative')
  bind_inputeventscreendrag_set_speed = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'set_speed')

############################Generated class###################################
cdef class InputEventScreenDrag(classes.InputEvent.InputEvent):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventScreenDrag")())
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

##################################Generated Methods#########################################
  def  get_index(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_get_index,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_get_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_relative(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_get_relative,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_speed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_get_speed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  set_index(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_set_index,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_position(self,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_set_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_relative(self,  Vector2 relative):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &relative._native
    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_set_relative,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_speed(self,  Vector2 speed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &speed._native
    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_set_speed,self.godot_owner,args,NULL)
    hello('hallo2')
