from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_shape2d_collide
cdef godot_method_bind *bind_shape2d_collide_and_get_contacts
cdef godot_method_bind *bind_shape2d_collide_with_motion
cdef godot_method_bind *bind_shape2d_collide_with_motion_and_get_contacts
cdef godot_method_bind *bind_shape2d_get_custom_solver_bias
cdef godot_method_bind *bind_shape2d_set_custom_solver_bias
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_shape2d_collide = api_core.godot_method_bind_get_method('Shape2D', 'collide')
  bind_shape2d_collide_and_get_contacts = api_core.godot_method_bind_get_method('Shape2D', 'collide_and_get_contacts')
  bind_shape2d_collide_with_motion = api_core.godot_method_bind_get_method('Shape2D', 'collide_with_motion')
  bind_shape2d_collide_with_motion_and_get_contacts = api_core.godot_method_bind_get_method('Shape2D', 'collide_with_motion_and_get_contacts')
  bind_shape2d_get_custom_solver_bias = api_core.godot_method_bind_get_method('Shape2D', 'get_custom_solver_bias')
  bind_shape2d_set_custom_solver_bias = api_core.godot_method_bind_get_method('Shape2D', 'set_custom_solver_bias')

############################Generated class###################################
cdef class Shape2D(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Shape2D")())
##################################Generated Properties#########################################
  @property
  def custom_solver_bias(self): 
    return self.get_custom_solver_bias()
  @custom_solver_bias.setter 
  def custom_solver_bias(self,value): 
    self.set_custom_solver_bias(value)

##################################Generated Methods#########################################
  def  collide(self, local_xformwith_shapeshape_xform):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_shape2d_collide,self.godot_owner,[NULL,],&ret)
  def  collide_and_get_contacts(self, local_xformwith_shapeshape_xform):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_shape2d_collide_and_get_contacts,self.godot_owner,[NULL,],&ret)
  def  collide_with_motion(self, local_xformlocal_motionwith_shapeshape_xformshape_motion):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_shape2d_collide_with_motion,self.godot_owner,[NULL,],&ret)
  def  collide_with_motion_and_get_contacts(self, local_xformlocal_motionwith_shapeshape_xformshape_motion):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_shape2d_collide_with_motion_and_get_contacts,self.godot_owner,[NULL,],&ret)
  def  get_custom_solver_bias(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_shape2d_get_custom_solver_bias,self.godot_owner,[NULL,],&ret)
  def  set_custom_solver_bias(self, bias):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_shape2d_set_custom_solver_bias,self.godot_owner,[NULL,],NULL)
