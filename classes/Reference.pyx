from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_reference_init_ref
cdef godot_method_bind *bind_reference_reference
cdef godot_method_bind *bind_reference_unreference
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_reference_init_ref = api_core.godot_method_bind_get_method('Reference', 'init_ref')
  bind_reference_reference = api_core.godot_method_bind_get_method('Reference', 'reference')
  bind_reference_unreference = api_core.godot_method_bind_get_method('Reference', 'unreference')

############################Generated class###################################
cdef class Reference(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Reference")())
##################################Generated Methods#########################################
  def  init_ref(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_reference_init_ref,self.godot_owner,[NULL,],&ret)
  def  reference(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_reference_reference,self.godot_owner,[NULL,],&ret)
  def  unreference(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_reference_unreference,self.godot_owner,[NULL,],&ret)
