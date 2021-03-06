from classes.Popup cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_windowdialog__closed
cdef godot_method_bind *bind_windowdialog__gui_input
cdef godot_method_bind *bind_windowdialog_get_close_button
cdef godot_method_bind *bind_windowdialog_get_resizable
cdef godot_method_bind *bind_windowdialog_get_title
cdef godot_method_bind *bind_windowdialog_set_resizable
cdef godot_method_bind *bind_windowdialog_set_title
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_windowdialog__closed = api_core.godot_method_bind_get_method('WindowDialog', '_closed')
  bind_windowdialog__gui_input = api_core.godot_method_bind_get_method('WindowDialog', '_gui_input')
  bind_windowdialog_get_close_button = api_core.godot_method_bind_get_method('WindowDialog', 'get_close_button')
  bind_windowdialog_get_resizable = api_core.godot_method_bind_get_method('WindowDialog', 'get_resizable')
  bind_windowdialog_get_title = api_core.godot_method_bind_get_method('WindowDialog', 'get_title')
  bind_windowdialog_set_resizable = api_core.godot_method_bind_get_method('WindowDialog', 'set_resizable')
  bind_windowdialog_set_title = api_core.godot_method_bind_get_method('WindowDialog', 'set_title')

############################Generated class###################################
cdef class WindowDialog(Popup):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WindowDialog")())
##################################Generated Properties#########################################
  @property
  def resizable(self): 
    return self.get_resizable()
  @resizable.setter 
  def resizable(self,value): 
    self.set_resizable(value)
  @property
  def window_title(self): 
    return self.get_window_title()
  @window_title.setter 
  def window_title(self,value): 
    self.set_window_title(value)

##################################Generated Methods#########################################
  def  _closed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_windowdialog__closed,self.godot_owner,[NULL,],NULL)
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_windowdialog__gui_input,self.godot_owner,[NULL,],NULL)
  def  get_close_button(self):
    cdef godot_object *_owner = self.godot_owner
    cdef TextureButton ret
    api_core.godot_method_bind_ptrcall(bind_windowdialog_get_close_button,self.godot_owner,[NULL,],&ret)
  def  get_resizable(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_windowdialog_get_resizable,self.godot_owner,[NULL,],&ret)
  def  get_title(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_windowdialog_get_title,self.godot_owner,[NULL,],&ret)
  def  set_resizable(self, resizable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_windowdialog_set_resizable,self.godot_owner,[NULL,],NULL)
  def  set_title(self, title):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_windowdialog_set_title,self.godot_owner,[NULL,],NULL)
