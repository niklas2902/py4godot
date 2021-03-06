from classes.PhysicsBody2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_staticbody2d__reload_physics_characteristics
cdef godot_method_bind *bind_staticbody2d_get_bounce
cdef godot_method_bind *bind_staticbody2d_get_constant_angular_velocity
cdef godot_method_bind *bind_staticbody2d_get_constant_linear_velocity
cdef godot_method_bind *bind_staticbody2d_get_friction
cdef godot_method_bind *bind_staticbody2d_get_physics_material_override
cdef godot_method_bind *bind_staticbody2d_set_bounce
cdef godot_method_bind *bind_staticbody2d_set_constant_angular_velocity
cdef godot_method_bind *bind_staticbody2d_set_constant_linear_velocity
cdef godot_method_bind *bind_staticbody2d_set_friction
cdef godot_method_bind *bind_staticbody2d_set_physics_material_override
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_staticbody2d__reload_physics_characteristics = api_core.godot_method_bind_get_method('StaticBody2D', '_reload_physics_characteristics')
  bind_staticbody2d_get_bounce = api_core.godot_method_bind_get_method('StaticBody2D', 'get_bounce')
  bind_staticbody2d_get_constant_angular_velocity = api_core.godot_method_bind_get_method('StaticBody2D', 'get_constant_angular_velocity')
  bind_staticbody2d_get_constant_linear_velocity = api_core.godot_method_bind_get_method('StaticBody2D', 'get_constant_linear_velocity')
  bind_staticbody2d_get_friction = api_core.godot_method_bind_get_method('StaticBody2D', 'get_friction')
  bind_staticbody2d_get_physics_material_override = api_core.godot_method_bind_get_method('StaticBody2D', 'get_physics_material_override')
  bind_staticbody2d_set_bounce = api_core.godot_method_bind_get_method('StaticBody2D', 'set_bounce')
  bind_staticbody2d_set_constant_angular_velocity = api_core.godot_method_bind_get_method('StaticBody2D', 'set_constant_angular_velocity')
  bind_staticbody2d_set_constant_linear_velocity = api_core.godot_method_bind_get_method('StaticBody2D', 'set_constant_linear_velocity')
  bind_staticbody2d_set_friction = api_core.godot_method_bind_get_method('StaticBody2D', 'set_friction')
  bind_staticbody2d_set_physics_material_override = api_core.godot_method_bind_get_method('StaticBody2D', 'set_physics_material_override')

############################Generated class###################################
cdef class StaticBody2D(PhysicsBody2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StaticBody2D")())
##################################Generated Properties#########################################
  @property
  def bounce(self): 
    return self.get_bounce()
  @bounce.setter 
  def bounce(self,value): 
    self.set_bounce(value)
  @property
  def constant_angular_velocity(self): 
    return self.get_constant_angular_velocity()
  @constant_angular_velocity.setter 
  def constant_angular_velocity(self,value): 
    self.set_constant_angular_velocity(value)
  @property
  def constant_linear_velocity(self): 
    return self.get_constant_linear_velocity()
  @constant_linear_velocity.setter 
  def constant_linear_velocity(self,value): 
    self.set_constant_linear_velocity(value)
  @property
  def friction(self): 
    return self.get_friction()
  @friction.setter 
  def friction(self,value): 
    self.set_friction(value)
  @property
  def physics_material_override(self): 
    return self.get_physics_material_override()
  @physics_material_override.setter 
  def physics_material_override(self,value): 
    self.set_physics_material_override(value)

##################################Generated Methods#########################################
  def  _reload_physics_characteristics(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_staticbody2d__reload_physics_characteristics,self.godot_owner,[NULL,],NULL)
  def  get_bounce(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_get_bounce,self.godot_owner,[NULL,],&ret)
  def  get_constant_angular_velocity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_get_constant_angular_velocity,self.godot_owner,[NULL,],&ret)
  def  get_constant_linear_velocity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_get_constant_linear_velocity,self.godot_owner,[NULL,],&ret)
  def  get_friction(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_get_friction,self.godot_owner,[NULL,],&ret)
  def  get_physics_material_override(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PhysicsMaterial ret
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_get_physics_material_override,self.godot_owner,[NULL,],&ret)
  def  set_bounce(self, bounce):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_set_bounce,self.godot_owner,[NULL,],NULL)
  def  set_constant_angular_velocity(self, vel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_set_constant_angular_velocity,self.godot_owner,[NULL,],NULL)
  def  set_constant_linear_velocity(self, vel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_set_constant_linear_velocity,self.godot_owner,[NULL,],NULL)
  def  set_friction(self, friction):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_set_friction,self.godot_owner,[NULL,],NULL)
  def  set_physics_material_override(self, physics_material_override):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_set_physics_material_override,self.godot_owner,[NULL,],NULL)
