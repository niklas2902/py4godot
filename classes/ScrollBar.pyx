from classes.Range cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_scrollbar__drag_node_exit
cdef godot_method_bind *bind_scrollbar__drag_node_input
cdef godot_method_bind *bind_scrollbar__gui_input
cdef godot_method_bind *bind_scrollbar_get_custom_step
cdef godot_method_bind *bind_scrollbar_set_custom_step
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_scrollbar__drag_node_exit = api_core.godot_method_bind_get_method('ScrollBar', '_drag_node_exit')
  bind_scrollbar__drag_node_input = api_core.godot_method_bind_get_method('ScrollBar', '_drag_node_input')
  bind_scrollbar__gui_input = api_core.godot_method_bind_get_method('ScrollBar', '_gui_input')
  bind_scrollbar_get_custom_step = api_core.godot_method_bind_get_method('ScrollBar', 'get_custom_step')
  bind_scrollbar_set_custom_step = api_core.godot_method_bind_get_method('ScrollBar', 'set_custom_step')

############################Generated class###################################
cdef class ScrollBar(Range):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ScrollBar")())
##################################Generated Properties#########################################
  @property
  def custom_step(self): 
    return self.get_custom_step()
  @custom_step.setter 
  def custom_step(self,value): 
    self.set_custom_step(value)

##################################Generated Methods#########################################
  def  _drag_node_exit(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollbar__drag_node_exit,self.godot_owner,[NULL,],NULL)
  def  _drag_node_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollbar__drag_node_input,self.godot_owner,[NULL,],NULL)
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollbar__gui_input,self.godot_owner,[NULL,],NULL)
  def  get_custom_step(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_scrollbar_get_custom_step,self.godot_owner,[NULL,],&ret)
  def  set_custom_step(self, step):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scrollbar_set_custom_step,self.godot_owner,[NULL,],NULL)
