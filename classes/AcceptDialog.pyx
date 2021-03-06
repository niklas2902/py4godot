from classes.WindowDialog cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_acceptdialog__builtin_text_entered
cdef godot_method_bind *bind_acceptdialog__custom_action
cdef godot_method_bind *bind_acceptdialog__ok
cdef godot_method_bind *bind_acceptdialog_add_button
cdef godot_method_bind *bind_acceptdialog_add_cancel
cdef godot_method_bind *bind_acceptdialog_get_hide_on_ok
cdef godot_method_bind *bind_acceptdialog_get_label
cdef godot_method_bind *bind_acceptdialog_get_ok
cdef godot_method_bind *bind_acceptdialog_get_text
cdef godot_method_bind *bind_acceptdialog_has_autowrap
cdef godot_method_bind *bind_acceptdialog_register_text_enter
cdef godot_method_bind *bind_acceptdialog_set_autowrap
cdef godot_method_bind *bind_acceptdialog_set_hide_on_ok
cdef godot_method_bind *bind_acceptdialog_set_text
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_acceptdialog__builtin_text_entered = api_core.godot_method_bind_get_method('AcceptDialog', '_builtin_text_entered')
  bind_acceptdialog__custom_action = api_core.godot_method_bind_get_method('AcceptDialog', '_custom_action')
  bind_acceptdialog__ok = api_core.godot_method_bind_get_method('AcceptDialog', '_ok')
  bind_acceptdialog_add_button = api_core.godot_method_bind_get_method('AcceptDialog', 'add_button')
  bind_acceptdialog_add_cancel = api_core.godot_method_bind_get_method('AcceptDialog', 'add_cancel')
  bind_acceptdialog_get_hide_on_ok = api_core.godot_method_bind_get_method('AcceptDialog', 'get_hide_on_ok')
  bind_acceptdialog_get_label = api_core.godot_method_bind_get_method('AcceptDialog', 'get_label')
  bind_acceptdialog_get_ok = api_core.godot_method_bind_get_method('AcceptDialog', 'get_ok')
  bind_acceptdialog_get_text = api_core.godot_method_bind_get_method('AcceptDialog', 'get_text')
  bind_acceptdialog_has_autowrap = api_core.godot_method_bind_get_method('AcceptDialog', 'has_autowrap')
  bind_acceptdialog_register_text_enter = api_core.godot_method_bind_get_method('AcceptDialog', 'register_text_enter')
  bind_acceptdialog_set_autowrap = api_core.godot_method_bind_get_method('AcceptDialog', 'set_autowrap')
  bind_acceptdialog_set_hide_on_ok = api_core.godot_method_bind_get_method('AcceptDialog', 'set_hide_on_ok')
  bind_acceptdialog_set_text = api_core.godot_method_bind_get_method('AcceptDialog', 'set_text')

############################Generated class###################################
cdef class AcceptDialog(WindowDialog):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AcceptDialog")())
##################################Generated Properties#########################################
  @property
  def dialog_autowrap(self): 
    return self.get_dialog_autowrap()
  @dialog_autowrap.setter 
  def dialog_autowrap(self,value): 
    self.set_dialog_autowrap(value)
  @property
  def dialog_hide_on_ok(self): 
    return self.get_dialog_hide_on_ok()
  @dialog_hide_on_ok.setter 
  def dialog_hide_on_ok(self,value): 
    self.set_dialog_hide_on_ok(value)
  @property
  def dialog_text(self): 
    return self.get_dialog_text()
  @dialog_text.setter 
  def dialog_text(self,value): 
    self.set_dialog_text(value)

##################################Generated Methods#########################################
  def  _builtin_text_entered(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_acceptdialog__builtin_text_entered,self.godot_owner,[NULL,],NULL)
  def  _custom_action(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_acceptdialog__custom_action,self.godot_owner,[NULL,],NULL)
  def  _ok(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_acceptdialog__ok,self.godot_owner,[NULL,],NULL)
  def  add_button(self, textrightaction):
    cdef godot_object *_owner = self.godot_owner
    cdef Button ret
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_add_button,self.godot_owner,[NULL,],&ret)
  def  add_cancel(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Button ret
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_add_cancel,self.godot_owner,[NULL,],&ret)
  def  get_hide_on_ok(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_get_hide_on_ok,self.godot_owner,[NULL,],&ret)
  def  get_label(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Label ret
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_get_label,self.godot_owner,[NULL,],&ret)
  def  get_ok(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Button ret
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_get_ok,self.godot_owner,[NULL,],&ret)
  def  get_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_get_text,self.godot_owner,[NULL,],&ret)
  def  has_autowrap(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_has_autowrap,self.godot_owner,[NULL,],&ret)
  def  register_text_enter(self, line_edit):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_register_text_enter,self.godot_owner,[NULL,],NULL)
  def  set_autowrap(self, autowrap):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_set_autowrap,self.godot_owner,[NULL,],NULL)
  def  set_hide_on_ok(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_set_hide_on_ok,self.godot_owner,[NULL,],NULL)
  def  set_text(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_acceptdialog_set_text,self.godot_owner,[NULL,],NULL)
