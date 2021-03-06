from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class MainLoop(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MainLoop")())
##################################Generated Methods#########################################
  def  _drop_files(self, filesfrom_screen):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mainloop__drop_files,self.godot_owner,[NULL,],NULL)
  def  _finalize(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mainloop__finalize,self.godot_owner,[NULL,],NULL)
  def  _global_menu_action(self, idmeta):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mainloop__global_menu_action,self.godot_owner,[NULL,],NULL)
  def  _idle(self, delta):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_mainloop__idle,self.godot_owner,[NULL,],&ret)
  def  _initialize(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mainloop__initialize,self.godot_owner,[NULL,],NULL)
  def  _input_event(self, event):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mainloop__input_event,self.godot_owner,[NULL,],NULL)
  def  _input_text(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mainloop__input_text,self.godot_owner,[NULL,],NULL)
  def  _iteration(self, delta):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_mainloop__iteration,self.godot_owner,[NULL,],&ret)
  def  finish(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mainloop_finish,self.godot_owner,[NULL,],NULL)
  def  idle(self, delta):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_mainloop_idle,self.godot_owner,[NULL,],&ret)
  def  init(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mainloop_init,self.godot_owner,[NULL,],NULL)
  def  input_event(self, event):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mainloop_input_event,self.godot_owner,[NULL,],NULL)
  def  input_text(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mainloop_input_text,self.godot_owner,[NULL,],NULL)
  def  iteration(self, delta):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_mainloop_iteration,self.godot_owner,[NULL,],&ret)
