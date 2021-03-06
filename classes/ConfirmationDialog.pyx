from classes.AcceptDialog cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_confirmationdialog_get_cancel
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_confirmationdialog_get_cancel = api_core.godot_method_bind_get_method('ConfirmationDialog', 'get_cancel')

############################Generated class###################################
cdef class ConfirmationDialog(AcceptDialog):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ConfirmationDialog")())
##################################Generated Methods#########################################
  def  get_cancel(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Button ret
    api_core.godot_method_bind_ptrcall(bind_confirmationdialog_get_cancel,self.godot_owner,[NULL,],&ret)
