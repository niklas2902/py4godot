from classes.Control cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_colorrect_get_frame_color
cdef godot_method_bind *bind_colorrect_set_frame_color
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_colorrect_get_frame_color = api_core.godot_method_bind_get_method('ColorRect', 'get_frame_color')
  bind_colorrect_set_frame_color = api_core.godot_method_bind_get_method('ColorRect', 'set_frame_color')

############################Generated class###################################
cdef class ColorRect(Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ColorRect")())
##################################Generated Properties#########################################
  @property
  def color(self): 
    return self.get_color()
  @color.setter 
  def color(self,value): 
    self.set_color(value)

##################################Generated Methods#########################################
  def  get_frame_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_colorrect_get_frame_color,self.godot_owner,[NULL,],&ret)
  def  set_frame_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_colorrect_set_frame_color,self.godot_owner,[NULL,],NULL)
