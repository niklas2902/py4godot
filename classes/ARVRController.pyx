
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
cimport classes.ARVRPositionalTracker
cimport classes.Spatial 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_arvrcontroller_get_controller_id
cdef godot_method_bind *bind_arvrcontroller_get_controller_name
cdef godot_method_bind *bind_arvrcontroller_get_hand
cdef godot_method_bind *bind_arvrcontroller_get_is_active
cdef godot_method_bind *bind_arvrcontroller_get_joystick_axis
cdef godot_method_bind *bind_arvrcontroller_get_joystick_id
cdef godot_method_bind *bind_arvrcontroller_get_mesh
cdef godot_method_bind *bind_arvrcontroller_get_rumble
cdef godot_method_bind *bind_arvrcontroller_is_button_pressed
cdef godot_method_bind *bind_arvrcontroller_set_controller_id
cdef godot_method_bind *bind_arvrcontroller_set_rumble
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_arvrcontroller_get_controller_id = api_core.godot_method_bind_get_method('ARVRController', 'get_controller_id')
  bind_arvrcontroller_get_controller_name = api_core.godot_method_bind_get_method('ARVRController', 'get_controller_name')
  bind_arvrcontroller_get_hand = api_core.godot_method_bind_get_method('ARVRController', 'get_hand')
  bind_arvrcontroller_get_is_active = api_core.godot_method_bind_get_method('ARVRController', 'get_is_active')
  bind_arvrcontroller_get_joystick_axis = api_core.godot_method_bind_get_method('ARVRController', 'get_joystick_axis')
  bind_arvrcontroller_get_joystick_id = api_core.godot_method_bind_get_method('ARVRController', 'get_joystick_id')
  bind_arvrcontroller_get_mesh = api_core.godot_method_bind_get_method('ARVRController', 'get_mesh')
  bind_arvrcontroller_get_rumble = api_core.godot_method_bind_get_method('ARVRController', 'get_rumble')
  bind_arvrcontroller_is_button_pressed = api_core.godot_method_bind_get_method('ARVRController', 'is_button_pressed')
  bind_arvrcontroller_set_controller_id = api_core.godot_method_bind_get_method('ARVRController', 'set_controller_id')
  bind_arvrcontroller_set_rumble = api_core.godot_method_bind_get_method('ARVRController', 'set_rumble')

############################Generated class###################################
cdef class ARVRController(classes.Spatial.Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ARVRController")())
##################################Generated Properties#########################################
  @property
  def controller_id(self): 
    return self.get_controller_id()
  @controller_id.setter 
  def controller_id(self,value): 
    self.set_controller_id(value)
  @property
  def rumble(self): 
    return self.get_rumble()
  @rumble.setter 
  def rumble(self,value): 
    self.set_rumble(value)

##################################Generated Methods#########################################
  def  get_controller_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_controller_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_controller_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_controller_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_hand(self):
    cdef godot_object *_owner = self.godot_owner

    cdef classes.ARVRPositionalTracker.TrackerHand* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_hand,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_is_active(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_is_active,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_joystick_axis(self,  int axis):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &axis
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_joystick_axis,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_joystick_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_joystick_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_mesh,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_rumble(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_get_rumble,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_button_pressed(self,  int button):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &button
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_is_button_pressed,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_controller_id(self,  int controller_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &controller_id
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_set_controller_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rumble(self,  float rumble):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rumble
    api_core.godot_method_bind_ptrcall(bind_arvrcontroller_set_rumble,self.godot_owner,args,NULL)
    hello('hallo2')
