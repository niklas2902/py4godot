from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_material_get_next_pass
cdef godot_method_bind *bind_material_get_render_priority
cdef godot_method_bind *bind_material_set_next_pass
cdef godot_method_bind *bind_material_set_render_priority
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_material_get_next_pass = api_core.godot_method_bind_get_method('Material', 'get_next_pass')
  bind_material_get_render_priority = api_core.godot_method_bind_get_method('Material', 'get_render_priority')
  bind_material_set_next_pass = api_core.godot_method_bind_get_method('Material', 'set_next_pass')
  bind_material_set_render_priority = api_core.godot_method_bind_get_method('Material', 'set_render_priority')

############################Generated class###################################
cdef class Material(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Material")())
##################################Generated Properties#########################################
  @property
  def next_pass(self): 
    return self.get_next_pass()
  @next_pass.setter 
  def next_pass(self,value): 
    self.set_next_pass(value)
  @property
  def render_priority(self): 
    return self.get_render_priority()
  @render_priority.setter 
  def render_priority(self,value): 
    self.set_render_priority(value)

##################################Generated Methods#########################################
  def  get_next_pass(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Material ret
    api_core.godot_method_bind_ptrcall(bind_material_get_next_pass,self.godot_owner,[NULL,],&ret)
  def  get_render_priority(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_material_get_render_priority,self.godot_owner,[NULL,],&ret)
  def  set_next_pass(self, next_pass):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_material_set_next_pass,self.godot_owner,[NULL,],NULL)
  def  set_render_priority(self, priority):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_material_set_render_priority,self.godot_owner,[NULL,],NULL)
