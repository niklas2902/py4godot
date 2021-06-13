
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
cimport classes.InputEvent
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputevent_accumulate
cdef godot_method_bind *bind_inputevent_as_text
cdef godot_method_bind *bind_inputevent_get_action_strength
cdef godot_method_bind *bind_inputevent_get_device
cdef godot_method_bind *bind_inputevent_is_action
cdef godot_method_bind *bind_inputevent_is_action_pressed
cdef godot_method_bind *bind_inputevent_is_action_released
cdef godot_method_bind *bind_inputevent_is_action_type
cdef godot_method_bind *bind_inputevent_is_echo
cdef godot_method_bind *bind_inputevent_is_pressed
cdef godot_method_bind *bind_inputevent_set_device
cdef godot_method_bind *bind_inputevent_shortcut_match
cdef godot_method_bind *bind_inputevent_xformed_by
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputevent_accumulate = api_core.godot_method_bind_get_method('InputEvent', 'accumulate')
  bind_inputevent_as_text = api_core.godot_method_bind_get_method('InputEvent', 'as_text')
  bind_inputevent_get_action_strength = api_core.godot_method_bind_get_method('InputEvent', 'get_action_strength')
  bind_inputevent_get_device = api_core.godot_method_bind_get_method('InputEvent', 'get_device')
  bind_inputevent_is_action = api_core.godot_method_bind_get_method('InputEvent', 'is_action')
  bind_inputevent_is_action_pressed = api_core.godot_method_bind_get_method('InputEvent', 'is_action_pressed')
  bind_inputevent_is_action_released = api_core.godot_method_bind_get_method('InputEvent', 'is_action_released')
  bind_inputevent_is_action_type = api_core.godot_method_bind_get_method('InputEvent', 'is_action_type')
  bind_inputevent_is_echo = api_core.godot_method_bind_get_method('InputEvent', 'is_echo')
  bind_inputevent_is_pressed = api_core.godot_method_bind_get_method('InputEvent', 'is_pressed')
  bind_inputevent_set_device = api_core.godot_method_bind_get_method('InputEvent', 'set_device')
  bind_inputevent_shortcut_match = api_core.godot_method_bind_get_method('InputEvent', 'shortcut_match')
  bind_inputevent_xformed_by = api_core.godot_method_bind_get_method('InputEvent', 'xformed_by')

############################Generated class###################################
cdef class InputEvent(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEvent")())
##################################Generated Properties#########################################
  @property
  def device(self): 
    return self.get_device()
  @device.setter 
  def device(self,value): 
    self.set_device(value)

##################################Generated Methods#########################################
  def  accumulate(self,  classes.InputEvent.InputEvent with_event):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = with_event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputevent_accumulate,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  as_text(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputevent_as_text,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_action_strength(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_inputevent_get_action_strength,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_device(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputevent_get_device,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_action(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_inputevent_is_action,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_action_pressed(self,  String action,  bool allow_echo):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &action._native
    args[1] = &allow_echo
    api_core.godot_method_bind_ptrcall(bind_inputevent_is_action_pressed,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_action_released(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_inputevent_is_action_released,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_action_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputevent_is_action_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_echo(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputevent_is_echo,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_pressed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputevent_is_pressed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_device(self,  int device):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &device
    api_core.godot_method_bind_ptrcall(bind_inputevent_set_device,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shortcut_match(self,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputevent_shortcut_match,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  xformed_by(self,  Transform2D xform,  Vector2 local_ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &xform._native
    args[1] = &local_ofs._native
    api_core.godot_method_bind_ptrcall(bind_inputevent_xformed_by,self.godot_owner,args,&ret)
    hello('hallo2')
