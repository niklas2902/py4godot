
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
cimport classes.InputEvent
cimport classes.Object 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_mainloop__drop_files
cdef godot_method_bind *bind_mainloop__finalize
cdef godot_method_bind *bind_mainloop__global_menu_action
cdef godot_method_bind *bind_mainloop__idle
cdef godot_method_bind *bind_mainloop__initialize
cdef godot_method_bind *bind_mainloop__input_event
cdef godot_method_bind *bind_mainloop__input_text
cdef godot_method_bind *bind_mainloop__iteration
cdef godot_method_bind *bind_mainloop_finish
cdef godot_method_bind *bind_mainloop_idle
cdef godot_method_bind *bind_mainloop_init
cdef godot_method_bind *bind_mainloop_input_event
cdef godot_method_bind *bind_mainloop_input_text
cdef godot_method_bind *bind_mainloop_iteration
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_mainloop__drop_files = api_core.godot_method_bind_get_method('MainLoop', '_drop_files')
  bind_mainloop__finalize = api_core.godot_method_bind_get_method('MainLoop', '_finalize')
  bind_mainloop__global_menu_action = api_core.godot_method_bind_get_method('MainLoop', '_global_menu_action')
  bind_mainloop__idle = api_core.godot_method_bind_get_method('MainLoop', '_idle')
  bind_mainloop__initialize = api_core.godot_method_bind_get_method('MainLoop', '_initialize')
  bind_mainloop__input_event = api_core.godot_method_bind_get_method('MainLoop', '_input_event')
  bind_mainloop__input_text = api_core.godot_method_bind_get_method('MainLoop', '_input_text')
  bind_mainloop__iteration = api_core.godot_method_bind_get_method('MainLoop', '_iteration')
  bind_mainloop_finish = api_core.godot_method_bind_get_method('MainLoop', 'finish')
  bind_mainloop_idle = api_core.godot_method_bind_get_method('MainLoop', 'idle')
  bind_mainloop_init = api_core.godot_method_bind_get_method('MainLoop', 'init')
  bind_mainloop_input_event = api_core.godot_method_bind_get_method('MainLoop', 'input_event')
  bind_mainloop_input_text = api_core.godot_method_bind_get_method('MainLoop', 'input_text')
  bind_mainloop_iteration = api_core.godot_method_bind_get_method('MainLoop', 'iteration')

############################Generated class###################################
cdef class MainLoop(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MainLoop")())
##################################Generated Methods#########################################
  def  _drop_files(self,  PoolStringArray files,  int from_screen):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &files._native
    args[1] = &from_screen
    api_core.godot_method_bind_ptrcall(bind_mainloop__drop_files,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _finalize(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_mainloop__finalize,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _global_menu_action(self,  Variant id,  Variant meta):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &meta._native
    api_core.godot_method_bind_ptrcall(bind_mainloop__global_menu_action,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _idle(self,  float delta):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &delta
    api_core.godot_method_bind_ptrcall(bind_mainloop__idle,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _initialize(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_mainloop__initialize,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _input_event(self,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mainloop__input_event,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _input_text(self,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &text._native
    api_core.godot_method_bind_ptrcall(bind_mainloop__input_text,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _iteration(self,  float delta):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &delta
    api_core.godot_method_bind_ptrcall(bind_mainloop__iteration,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  finish(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_mainloop_finish,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  idle(self,  float delta):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &delta
    api_core.godot_method_bind_ptrcall(bind_mainloop_idle,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  init(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_mainloop_init,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  input_event(self,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mainloop_input_event,self.godot_owner,args,NULL)
    hello('hallo2')
  def  input_text(self,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &text._native
    api_core.godot_method_bind_ptrcall(bind_mainloop_input_text,self.godot_owner,args,NULL)
    hello('hallo2')
  def  iteration(self,  float delta):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &delta
    api_core.godot_method_bind_ptrcall(bind_mainloop_iteration,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

