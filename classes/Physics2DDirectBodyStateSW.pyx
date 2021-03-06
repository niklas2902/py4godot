from classes.Physics2DDirectBodyState cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")

############################Generated class###################################
cdef class Physics2DDirectBodyStateSW(Physics2DDirectBodyState):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Physics2DDirectBodyStateSW")())