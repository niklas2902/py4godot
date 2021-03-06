from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_javaclasswrapper_wrap
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_javaclasswrapper_wrap = api_core.godot_method_bind_get_method('JavaClassWrapper', 'wrap')

############################Generated class###################################
cdef class JavaClassWrapper(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("JavaClassWrapper")())
##################################Generated Methods#########################################
  def  wrap(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef JavaClass ret
    api_core.godot_method_bind_ptrcall(bind_javaclasswrapper_wrap,self.godot_owner,[NULL,],&ret)
