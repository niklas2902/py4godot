
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
cimport classes.InputEvent
cimport classes.InputEvent
cimport classes.Object 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputmap_action_add_event
cdef godot_method_bind *bind_inputmap_action_erase_event
cdef godot_method_bind *bind_inputmap_action_erase_events
cdef godot_method_bind *bind_inputmap_action_has_event
cdef godot_method_bind *bind_inputmap_action_set_deadzone
cdef godot_method_bind *bind_inputmap_add_action
cdef godot_method_bind *bind_inputmap_erase_action
cdef godot_method_bind *bind_inputmap_event_is_action
cdef godot_method_bind *bind_inputmap_get_action_list
cdef godot_method_bind *bind_inputmap_get_actions
cdef godot_method_bind *bind_inputmap_has_action
cdef godot_method_bind *bind_inputmap_load_from_globals
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputmap_action_add_event = api_core.godot_method_bind_get_method('InputMap', 'action_add_event')
  bind_inputmap_action_erase_event = api_core.godot_method_bind_get_method('InputMap', 'action_erase_event')
  bind_inputmap_action_erase_events = api_core.godot_method_bind_get_method('InputMap', 'action_erase_events')
  bind_inputmap_action_has_event = api_core.godot_method_bind_get_method('InputMap', 'action_has_event')
  bind_inputmap_action_set_deadzone = api_core.godot_method_bind_get_method('InputMap', 'action_set_deadzone')
  bind_inputmap_add_action = api_core.godot_method_bind_get_method('InputMap', 'add_action')
  bind_inputmap_erase_action = api_core.godot_method_bind_get_method('InputMap', 'erase_action')
  bind_inputmap_event_is_action = api_core.godot_method_bind_get_method('InputMap', 'event_is_action')
  bind_inputmap_get_action_list = api_core.godot_method_bind_get_method('InputMap', 'get_action_list')
  bind_inputmap_get_actions = api_core.godot_method_bind_get_method('InputMap', 'get_actions')
  bind_inputmap_has_action = api_core.godot_method_bind_get_method('InputMap', 'has_action')
  bind_inputmap_load_from_globals = api_core.godot_method_bind_get_method('InputMap', 'load_from_globals')

############################Generated class###################################
cdef class InputMap(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputMap")())
##################################Generated Methods#########################################
  def  action_add_event(self,  String action,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &action._native
    args[1] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputmap_action_add_event,self.godot_owner,args,NULL)
    hello('hallo2')
  def  action_erase_event(self,  String action,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &action._native
    args[1] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputmap_action_erase_event,self.godot_owner,args,NULL)
    hello('hallo2')
  def  action_erase_events(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_inputmap_action_erase_events,self.godot_owner,args,NULL)
    hello('hallo2')
  def  action_has_event(self,  String action,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &action._native
    args[1] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputmap_action_has_event,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  action_set_deadzone(self,  String action,  float deadzone):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &action._native
    args[1] = &deadzone
    api_core.godot_method_bind_ptrcall(bind_inputmap_action_set_deadzone,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_action(self,  String action,  float deadzone):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &action._native
    args[1] = &deadzone
    api_core.godot_method_bind_ptrcall(bind_inputmap_add_action,self.godot_owner,args,NULL)
    hello('hallo2')
  def  erase_action(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_inputmap_erase_action,self.godot_owner,args,NULL)
    hello('hallo2')
  def  event_is_action(self,  classes.InputEvent.InputEvent event,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = event.godot_owner
    args[1] = &action._native
    api_core.godot_method_bind_ptrcall(bind_inputmap_event_is_action,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_action_list(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_inputmap_get_action_list,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_actions(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_inputmap_get_actions,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  has_action(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_inputmap_has_action,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  load_from_globals(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_inputmap_load_from_globals,self.godot_owner,NULL,NULL)
    hello('hallo2')
