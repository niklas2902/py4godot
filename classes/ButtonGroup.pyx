from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_buttongroup_get_buttons
cdef godot_method_bind *bind_buttongroup_get_pressed_button
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_buttongroup_get_buttons = api_core.godot_method_bind_get_method('ButtonGroup', 'get_buttons')
  bind_buttongroup_get_pressed_button = api_core.godot_method_bind_get_method('ButtonGroup', 'get_pressed_button')

############################Generated class###################################
cdef class ButtonGroup(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ButtonGroup")())
##################################Generated Methods#########################################
  def  get_buttons(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_buttongroup_get_buttons,self.godot_owner,[NULL,],&ret)
  def  get_pressed_button(self):
    cdef godot_object *_owner = self.godot_owner
    cdef BaseButton ret
    api_core.godot_method_bind_ptrcall(bind_buttongroup_get_pressed_button,self.godot_owner,[NULL,],&ret)
