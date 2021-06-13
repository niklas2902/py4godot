
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.PhysicsMaterial
cimport classes.PhysicsBody2D 

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
cdef class StaticBody2D(classes.PhysicsBody2D.PhysicsBody2D):
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

    api_core.godot_method_bind_ptrcall(bind_staticbody2d__reload_physics_characteristics,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_bounce(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_staticbody2d_get_bounce,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_constant_angular_velocity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_staticbody2d_get_constant_angular_velocity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_constant_linear_velocity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_staticbody2d_get_constant_linear_velocity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_friction(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_staticbody2d_get_friction,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_physics_material_override(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_staticbody2d_get_physics_material_override,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_bounce(self,  float bounce):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bounce
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_set_bounce,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_constant_angular_velocity(self,  float vel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &vel
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_set_constant_angular_velocity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_constant_linear_velocity(self,  Vector2 vel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &vel._native
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_set_constant_linear_velocity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_friction(self,  float friction):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &friction
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_set_friction,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_physics_material_override(self,  classes.PhysicsMaterial.PhysicsMaterial physics_material_override):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = physics_material_override.godot_owner
    api_core.godot_method_bind_ptrcall(bind_staticbody2d_set_physics_material_override,self.godot_owner,args,NULL)
    hello('hallo2')
