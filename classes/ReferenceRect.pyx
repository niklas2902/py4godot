from classes.Control cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_referencerect_get_border_color
cdef godot_method_bind *bind_referencerect_get_editor_only
cdef godot_method_bind *bind_referencerect_set_border_color
cdef godot_method_bind *bind_referencerect_set_editor_only
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_referencerect_get_border_color = api_core.godot_method_bind_get_method('ReferenceRect', 'get_border_color')
  bind_referencerect_get_editor_only = api_core.godot_method_bind_get_method('ReferenceRect', 'get_editor_only')
  bind_referencerect_set_border_color = api_core.godot_method_bind_get_method('ReferenceRect', 'set_border_color')
  bind_referencerect_set_editor_only = api_core.godot_method_bind_get_method('ReferenceRect', 'set_editor_only')

############################Generated class###################################
cdef class ReferenceRect(Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ReferenceRect")())
##################################Generated Properties#########################################
  @property
  def border_color(self): 
    return self.get_border_color()
  @border_color.setter 
  def border_color(self,value): 
    self.set_border_color(value)
  @property
  def editor_only(self): 
    return self.get_editor_only()
  @editor_only.setter 
  def editor_only(self,value): 
    self.set_editor_only(value)

##################################Generated Methods#########################################
  def  get_border_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_referencerect_get_border_color,self.godot_owner,[NULL,],&ret)
  def  get_editor_only(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_referencerect_get_editor_only,self.godot_owner,[NULL,],&ret)
  def  set_border_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_referencerect_set_border_color,self.godot_owner,[NULL,],NULL)
  def  set_editor_only(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_referencerect_set_editor_only,self.godot_owner,[NULL,],NULL)
