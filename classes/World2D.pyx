from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_world2d_get_canvas
cdef godot_method_bind *bind_world2d_get_direct_space_state
cdef godot_method_bind *bind_world2d_get_space
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_world2d_get_canvas = api_core.godot_method_bind_get_method('World2D', 'get_canvas')
  bind_world2d_get_direct_space_state = api_core.godot_method_bind_get_method('World2D', 'get_direct_space_state')
  bind_world2d_get_space = api_core.godot_method_bind_get_method('World2D', 'get_space')

############################Generated class###################################
cdef class World2D(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("World2D")())
##################################Generated Properties#########################################
  @property
  def canvas(self): 
    return self.get_canvas()
  @canvas.setter 
  def canvas(self,value): 
    self.set_canvas(value)
  @property
  def direct_space_state(self): 
    return self.get_direct_space_state()
  @direct_space_state.setter 
  def direct_space_state(self,value): 
    self.set_direct_space_state(value)
  @property
  def space(self): 
    return self.get_space()
  @space.setter 
  def space(self,value): 
    self.set_space(value)

##################################Generated Methods#########################################
  def  get_canvas(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_world2d_get_canvas,self.godot_owner,[NULL,],&ret)
  def  get_direct_space_state(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Physics2DDirectSpaceState ret
    api_core.godot_method_bind_ptrcall(bind_world2d_get_direct_space_state,self.godot_owner,[NULL,],&ret)
  def  get_space(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_world2d_get_space,self.godot_owner,[NULL,],&ret)
