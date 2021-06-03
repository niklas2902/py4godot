
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Joint 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_generic6dofjoint__get_angular_hi_limit_x
cdef godot_method_bind *bind_generic6dofjoint__get_angular_hi_limit_y
cdef godot_method_bind *bind_generic6dofjoint__get_angular_hi_limit_z
cdef godot_method_bind *bind_generic6dofjoint__get_angular_lo_limit_x
cdef godot_method_bind *bind_generic6dofjoint__get_angular_lo_limit_y
cdef godot_method_bind *bind_generic6dofjoint__get_angular_lo_limit_z
cdef godot_method_bind *bind_generic6dofjoint__set_angular_hi_limit_x
cdef godot_method_bind *bind_generic6dofjoint__set_angular_hi_limit_y
cdef godot_method_bind *bind_generic6dofjoint__set_angular_hi_limit_z
cdef godot_method_bind *bind_generic6dofjoint__set_angular_lo_limit_x
cdef godot_method_bind *bind_generic6dofjoint__set_angular_lo_limit_y
cdef godot_method_bind *bind_generic6dofjoint__set_angular_lo_limit_z
cdef godot_method_bind *bind_generic6dofjoint_get_flag_x
cdef godot_method_bind *bind_generic6dofjoint_get_flag_y
cdef godot_method_bind *bind_generic6dofjoint_get_flag_z
cdef godot_method_bind *bind_generic6dofjoint_get_param_x
cdef godot_method_bind *bind_generic6dofjoint_get_param_y
cdef godot_method_bind *bind_generic6dofjoint_get_param_z
cdef godot_method_bind *bind_generic6dofjoint_get_precision
cdef godot_method_bind *bind_generic6dofjoint_set_flag_x
cdef godot_method_bind *bind_generic6dofjoint_set_flag_y
cdef godot_method_bind *bind_generic6dofjoint_set_flag_z
cdef godot_method_bind *bind_generic6dofjoint_set_param_x
cdef godot_method_bind *bind_generic6dofjoint_set_param_y
cdef godot_method_bind *bind_generic6dofjoint_set_param_z
cdef godot_method_bind *bind_generic6dofjoint_set_precision
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_generic6dofjoint__get_angular_hi_limit_x = api_core.godot_method_bind_get_method('Generic6DOFJoint', '_get_angular_hi_limit_x')
  bind_generic6dofjoint__get_angular_hi_limit_y = api_core.godot_method_bind_get_method('Generic6DOFJoint', '_get_angular_hi_limit_y')
  bind_generic6dofjoint__get_angular_hi_limit_z = api_core.godot_method_bind_get_method('Generic6DOFJoint', '_get_angular_hi_limit_z')
  bind_generic6dofjoint__get_angular_lo_limit_x = api_core.godot_method_bind_get_method('Generic6DOFJoint', '_get_angular_lo_limit_x')
  bind_generic6dofjoint__get_angular_lo_limit_y = api_core.godot_method_bind_get_method('Generic6DOFJoint', '_get_angular_lo_limit_y')
  bind_generic6dofjoint__get_angular_lo_limit_z = api_core.godot_method_bind_get_method('Generic6DOFJoint', '_get_angular_lo_limit_z')
  bind_generic6dofjoint__set_angular_hi_limit_x = api_core.godot_method_bind_get_method('Generic6DOFJoint', '_set_angular_hi_limit_x')
  bind_generic6dofjoint__set_angular_hi_limit_y = api_core.godot_method_bind_get_method('Generic6DOFJoint', '_set_angular_hi_limit_y')
  bind_generic6dofjoint__set_angular_hi_limit_z = api_core.godot_method_bind_get_method('Generic6DOFJoint', '_set_angular_hi_limit_z')
  bind_generic6dofjoint__set_angular_lo_limit_x = api_core.godot_method_bind_get_method('Generic6DOFJoint', '_set_angular_lo_limit_x')
  bind_generic6dofjoint__set_angular_lo_limit_y = api_core.godot_method_bind_get_method('Generic6DOFJoint', '_set_angular_lo_limit_y')
  bind_generic6dofjoint__set_angular_lo_limit_z = api_core.godot_method_bind_get_method('Generic6DOFJoint', '_set_angular_lo_limit_z')
  bind_generic6dofjoint_get_flag_x = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'get_flag_x')
  bind_generic6dofjoint_get_flag_y = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'get_flag_y')
  bind_generic6dofjoint_get_flag_z = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'get_flag_z')
  bind_generic6dofjoint_get_param_x = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'get_param_x')
  bind_generic6dofjoint_get_param_y = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'get_param_y')
  bind_generic6dofjoint_get_param_z = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'get_param_z')
  bind_generic6dofjoint_get_precision = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'get_precision')
  bind_generic6dofjoint_set_flag_x = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'set_flag_x')
  bind_generic6dofjoint_set_flag_y = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'set_flag_y')
  bind_generic6dofjoint_set_flag_z = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'set_flag_z')
  bind_generic6dofjoint_set_param_x = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'set_param_x')
  bind_generic6dofjoint_set_param_y = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'set_param_y')
  bind_generic6dofjoint_set_param_z = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'set_param_z')
  bind_generic6dofjoint_set_precision = api_core.godot_method_bind_get_method('Generic6DOFJoint', 'set_precision')

############################Generated class###################################
cdef class Generic6DOFJoint(classes.Joint.Joint):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Generic6DOFJoint")())
##################################Generated Properties#########################################
  @property
  def angular_limit_x_damping(self): 
    return self.get_angular_limit_x_damping()
  @angular_limit_x_damping.setter 
  def angular_limit_x_damping(self,value): 
    self.set_angular_limit_x_damping(value)
  @property
  def angular_limit_x_enabled(self): 
    return self.get_angular_limit_x_enabled()
  @angular_limit_x_enabled.setter 
  def angular_limit_x_enabled(self,value): 
    self.set_angular_limit_x_enabled(value)
  @property
  def angular_limit_x_erp(self): 
    return self.get_angular_limit_x_erp()
  @angular_limit_x_erp.setter 
  def angular_limit_x_erp(self,value): 
    self.set_angular_limit_x_erp(value)
  @property
  def angular_limit_x_force_limit(self): 
    return self.get_angular_limit_x_force_limit()
  @angular_limit_x_force_limit.setter 
  def angular_limit_x_force_limit(self,value): 
    self.set_angular_limit_x_force_limit(value)
  @property
  def angular_limit_x_lower_angle(self): 
    return self.get_angular_limit_x_lower_angle()
  @angular_limit_x_lower_angle.setter 
  def angular_limit_x_lower_angle(self,value): 
    self.set_angular_limit_x_lower_angle(value)
  @property
  def angular_limit_x_restitution(self): 
    return self.get_angular_limit_x_restitution()
  @angular_limit_x_restitution.setter 
  def angular_limit_x_restitution(self,value): 
    self.set_angular_limit_x_restitution(value)
  @property
  def angular_limit_x_softness(self): 
    return self.get_angular_limit_x_softness()
  @angular_limit_x_softness.setter 
  def angular_limit_x_softness(self,value): 
    self.set_angular_limit_x_softness(value)
  @property
  def angular_limit_x_upper_angle(self): 
    return self.get_angular_limit_x_upper_angle()
  @angular_limit_x_upper_angle.setter 
  def angular_limit_x_upper_angle(self,value): 
    self.set_angular_limit_x_upper_angle(value)
  @property
  def angular_limit_y_damping(self): 
    return self.get_angular_limit_y_damping()
  @angular_limit_y_damping.setter 
  def angular_limit_y_damping(self,value): 
    self.set_angular_limit_y_damping(value)
  @property
  def angular_limit_y_enabled(self): 
    return self.get_angular_limit_y_enabled()
  @angular_limit_y_enabled.setter 
  def angular_limit_y_enabled(self,value): 
    self.set_angular_limit_y_enabled(value)
  @property
  def angular_limit_y_erp(self): 
    return self.get_angular_limit_y_erp()
  @angular_limit_y_erp.setter 
  def angular_limit_y_erp(self,value): 
    self.set_angular_limit_y_erp(value)
  @property
  def angular_limit_y_force_limit(self): 
    return self.get_angular_limit_y_force_limit()
  @angular_limit_y_force_limit.setter 
  def angular_limit_y_force_limit(self,value): 
    self.set_angular_limit_y_force_limit(value)
  @property
  def angular_limit_y_lower_angle(self): 
    return self.get_angular_limit_y_lower_angle()
  @angular_limit_y_lower_angle.setter 
  def angular_limit_y_lower_angle(self,value): 
    self.set_angular_limit_y_lower_angle(value)
  @property
  def angular_limit_y_restitution(self): 
    return self.get_angular_limit_y_restitution()
  @angular_limit_y_restitution.setter 
  def angular_limit_y_restitution(self,value): 
    self.set_angular_limit_y_restitution(value)
  @property
  def angular_limit_y_softness(self): 
    return self.get_angular_limit_y_softness()
  @angular_limit_y_softness.setter 
  def angular_limit_y_softness(self,value): 
    self.set_angular_limit_y_softness(value)
  @property
  def angular_limit_y_upper_angle(self): 
    return self.get_angular_limit_y_upper_angle()
  @angular_limit_y_upper_angle.setter 
  def angular_limit_y_upper_angle(self,value): 
    self.set_angular_limit_y_upper_angle(value)
  @property
  def angular_limit_z_damping(self): 
    return self.get_angular_limit_z_damping()
  @angular_limit_z_damping.setter 
  def angular_limit_z_damping(self,value): 
    self.set_angular_limit_z_damping(value)
  @property
  def angular_limit_z_enabled(self): 
    return self.get_angular_limit_z_enabled()
  @angular_limit_z_enabled.setter 
  def angular_limit_z_enabled(self,value): 
    self.set_angular_limit_z_enabled(value)
  @property
  def angular_limit_z_erp(self): 
    return self.get_angular_limit_z_erp()
  @angular_limit_z_erp.setter 
  def angular_limit_z_erp(self,value): 
    self.set_angular_limit_z_erp(value)
  @property
  def angular_limit_z_force_limit(self): 
    return self.get_angular_limit_z_force_limit()
  @angular_limit_z_force_limit.setter 
  def angular_limit_z_force_limit(self,value): 
    self.set_angular_limit_z_force_limit(value)
  @property
  def angular_limit_z_lower_angle(self): 
    return self.get_angular_limit_z_lower_angle()
  @angular_limit_z_lower_angle.setter 
  def angular_limit_z_lower_angle(self,value): 
    self.set_angular_limit_z_lower_angle(value)
  @property
  def angular_limit_z_restitution(self): 
    return self.get_angular_limit_z_restitution()
  @angular_limit_z_restitution.setter 
  def angular_limit_z_restitution(self,value): 
    self.set_angular_limit_z_restitution(value)
  @property
  def angular_limit_z_softness(self): 
    return self.get_angular_limit_z_softness()
  @angular_limit_z_softness.setter 
  def angular_limit_z_softness(self,value): 
    self.set_angular_limit_z_softness(value)
  @property
  def angular_limit_z_upper_angle(self): 
    return self.get_angular_limit_z_upper_angle()
  @angular_limit_z_upper_angle.setter 
  def angular_limit_z_upper_angle(self,value): 
    self.set_angular_limit_z_upper_angle(value)
  @property
  def angular_motor_x_enabled(self): 
    return self.get_angular_motor_x_enabled()
  @angular_motor_x_enabled.setter 
  def angular_motor_x_enabled(self,value): 
    self.set_angular_motor_x_enabled(value)
  @property
  def angular_motor_x_force_limit(self): 
    return self.get_angular_motor_x_force_limit()
  @angular_motor_x_force_limit.setter 
  def angular_motor_x_force_limit(self,value): 
    self.set_angular_motor_x_force_limit(value)
  @property
  def angular_motor_x_target_velocity(self): 
    return self.get_angular_motor_x_target_velocity()
  @angular_motor_x_target_velocity.setter 
  def angular_motor_x_target_velocity(self,value): 
    self.set_angular_motor_x_target_velocity(value)
  @property
  def angular_motor_y_enabled(self): 
    return self.get_angular_motor_y_enabled()
  @angular_motor_y_enabled.setter 
  def angular_motor_y_enabled(self,value): 
    self.set_angular_motor_y_enabled(value)
  @property
  def angular_motor_y_force_limit(self): 
    return self.get_angular_motor_y_force_limit()
  @angular_motor_y_force_limit.setter 
  def angular_motor_y_force_limit(self,value): 
    self.set_angular_motor_y_force_limit(value)
  @property
  def angular_motor_y_target_velocity(self): 
    return self.get_angular_motor_y_target_velocity()
  @angular_motor_y_target_velocity.setter 
  def angular_motor_y_target_velocity(self,value): 
    self.set_angular_motor_y_target_velocity(value)
  @property
  def angular_motor_z_enabled(self): 
    return self.get_angular_motor_z_enabled()
  @angular_motor_z_enabled.setter 
  def angular_motor_z_enabled(self,value): 
    self.set_angular_motor_z_enabled(value)
  @property
  def angular_motor_z_force_limit(self): 
    return self.get_angular_motor_z_force_limit()
  @angular_motor_z_force_limit.setter 
  def angular_motor_z_force_limit(self,value): 
    self.set_angular_motor_z_force_limit(value)
  @property
  def angular_motor_z_target_velocity(self): 
    return self.get_angular_motor_z_target_velocity()
  @angular_motor_z_target_velocity.setter 
  def angular_motor_z_target_velocity(self,value): 
    self.set_angular_motor_z_target_velocity(value)
  @property
  def angular_spring_x_damping(self): 
    return self.get_angular_spring_x_damping()
  @angular_spring_x_damping.setter 
  def angular_spring_x_damping(self,value): 
    self.set_angular_spring_x_damping(value)
  @property
  def angular_spring_x_enabled(self): 
    return self.get_angular_spring_x_enabled()
  @angular_spring_x_enabled.setter 
  def angular_spring_x_enabled(self,value): 
    self.set_angular_spring_x_enabled(value)
  @property
  def angular_spring_x_equilibrium_point(self): 
    return self.get_angular_spring_x_equilibrium_point()
  @angular_spring_x_equilibrium_point.setter 
  def angular_spring_x_equilibrium_point(self,value): 
    self.set_angular_spring_x_equilibrium_point(value)
  @property
  def angular_spring_x_stiffness(self): 
    return self.get_angular_spring_x_stiffness()
  @angular_spring_x_stiffness.setter 
  def angular_spring_x_stiffness(self,value): 
    self.set_angular_spring_x_stiffness(value)
  @property
  def angular_spring_y_damping(self): 
    return self.get_angular_spring_y_damping()
  @angular_spring_y_damping.setter 
  def angular_spring_y_damping(self,value): 
    self.set_angular_spring_y_damping(value)
  @property
  def angular_spring_y_enabled(self): 
    return self.get_angular_spring_y_enabled()
  @angular_spring_y_enabled.setter 
  def angular_spring_y_enabled(self,value): 
    self.set_angular_spring_y_enabled(value)
  @property
  def angular_spring_y_equilibrium_point(self): 
    return self.get_angular_spring_y_equilibrium_point()
  @angular_spring_y_equilibrium_point.setter 
  def angular_spring_y_equilibrium_point(self,value): 
    self.set_angular_spring_y_equilibrium_point(value)
  @property
  def angular_spring_y_stiffness(self): 
    return self.get_angular_spring_y_stiffness()
  @angular_spring_y_stiffness.setter 
  def angular_spring_y_stiffness(self,value): 
    self.set_angular_spring_y_stiffness(value)
  @property
  def angular_spring_z_damping(self): 
    return self.get_angular_spring_z_damping()
  @angular_spring_z_damping.setter 
  def angular_spring_z_damping(self,value): 
    self.set_angular_spring_z_damping(value)
  @property
  def angular_spring_z_enabled(self): 
    return self.get_angular_spring_z_enabled()
  @angular_spring_z_enabled.setter 
  def angular_spring_z_enabled(self,value): 
    self.set_angular_spring_z_enabled(value)
  @property
  def angular_spring_z_equilibrium_point(self): 
    return self.get_angular_spring_z_equilibrium_point()
  @angular_spring_z_equilibrium_point.setter 
  def angular_spring_z_equilibrium_point(self,value): 
    self.set_angular_spring_z_equilibrium_point(value)
  @property
  def angular_spring_z_stiffness(self): 
    return self.get_angular_spring_z_stiffness()
  @angular_spring_z_stiffness.setter 
  def angular_spring_z_stiffness(self,value): 
    self.set_angular_spring_z_stiffness(value)
  @property
  def linear_limit_x_damping(self): 
    return self.get_linear_limit_x_damping()
  @linear_limit_x_damping.setter 
  def linear_limit_x_damping(self,value): 
    self.set_linear_limit_x_damping(value)
  @property
  def linear_limit_x_enabled(self): 
    return self.get_linear_limit_x_enabled()
  @linear_limit_x_enabled.setter 
  def linear_limit_x_enabled(self,value): 
    self.set_linear_limit_x_enabled(value)
  @property
  def linear_limit_x_lower_distance(self): 
    return self.get_linear_limit_x_lower_distance()
  @linear_limit_x_lower_distance.setter 
  def linear_limit_x_lower_distance(self,value): 
    self.set_linear_limit_x_lower_distance(value)
  @property
  def linear_limit_x_restitution(self): 
    return self.get_linear_limit_x_restitution()
  @linear_limit_x_restitution.setter 
  def linear_limit_x_restitution(self,value): 
    self.set_linear_limit_x_restitution(value)
  @property
  def linear_limit_x_softness(self): 
    return self.get_linear_limit_x_softness()
  @linear_limit_x_softness.setter 
  def linear_limit_x_softness(self,value): 
    self.set_linear_limit_x_softness(value)
  @property
  def linear_limit_x_upper_distance(self): 
    return self.get_linear_limit_x_upper_distance()
  @linear_limit_x_upper_distance.setter 
  def linear_limit_x_upper_distance(self,value): 
    self.set_linear_limit_x_upper_distance(value)
  @property
  def linear_limit_y_damping(self): 
    return self.get_linear_limit_y_damping()
  @linear_limit_y_damping.setter 
  def linear_limit_y_damping(self,value): 
    self.set_linear_limit_y_damping(value)
  @property
  def linear_limit_y_enabled(self): 
    return self.get_linear_limit_y_enabled()
  @linear_limit_y_enabled.setter 
  def linear_limit_y_enabled(self,value): 
    self.set_linear_limit_y_enabled(value)
  @property
  def linear_limit_y_lower_distance(self): 
    return self.get_linear_limit_y_lower_distance()
  @linear_limit_y_lower_distance.setter 
  def linear_limit_y_lower_distance(self,value): 
    self.set_linear_limit_y_lower_distance(value)
  @property
  def linear_limit_y_restitution(self): 
    return self.get_linear_limit_y_restitution()
  @linear_limit_y_restitution.setter 
  def linear_limit_y_restitution(self,value): 
    self.set_linear_limit_y_restitution(value)
  @property
  def linear_limit_y_softness(self): 
    return self.get_linear_limit_y_softness()
  @linear_limit_y_softness.setter 
  def linear_limit_y_softness(self,value): 
    self.set_linear_limit_y_softness(value)
  @property
  def linear_limit_y_upper_distance(self): 
    return self.get_linear_limit_y_upper_distance()
  @linear_limit_y_upper_distance.setter 
  def linear_limit_y_upper_distance(self,value): 
    self.set_linear_limit_y_upper_distance(value)
  @property
  def linear_limit_z_damping(self): 
    return self.get_linear_limit_z_damping()
  @linear_limit_z_damping.setter 
  def linear_limit_z_damping(self,value): 
    self.set_linear_limit_z_damping(value)
  @property
  def linear_limit_z_enabled(self): 
    return self.get_linear_limit_z_enabled()
  @linear_limit_z_enabled.setter 
  def linear_limit_z_enabled(self,value): 
    self.set_linear_limit_z_enabled(value)
  @property
  def linear_limit_z_lower_distance(self): 
    return self.get_linear_limit_z_lower_distance()
  @linear_limit_z_lower_distance.setter 
  def linear_limit_z_lower_distance(self,value): 
    self.set_linear_limit_z_lower_distance(value)
  @property
  def linear_limit_z_restitution(self): 
    return self.get_linear_limit_z_restitution()
  @linear_limit_z_restitution.setter 
  def linear_limit_z_restitution(self,value): 
    self.set_linear_limit_z_restitution(value)
  @property
  def linear_limit_z_softness(self): 
    return self.get_linear_limit_z_softness()
  @linear_limit_z_softness.setter 
  def linear_limit_z_softness(self,value): 
    self.set_linear_limit_z_softness(value)
  @property
  def linear_limit_z_upper_distance(self): 
    return self.get_linear_limit_z_upper_distance()
  @linear_limit_z_upper_distance.setter 
  def linear_limit_z_upper_distance(self,value): 
    self.set_linear_limit_z_upper_distance(value)
  @property
  def linear_motor_x_enabled(self): 
    return self.get_linear_motor_x_enabled()
  @linear_motor_x_enabled.setter 
  def linear_motor_x_enabled(self,value): 
    self.set_linear_motor_x_enabled(value)
  @property
  def linear_motor_x_force_limit(self): 
    return self.get_linear_motor_x_force_limit()
  @linear_motor_x_force_limit.setter 
  def linear_motor_x_force_limit(self,value): 
    self.set_linear_motor_x_force_limit(value)
  @property
  def linear_motor_x_target_velocity(self): 
    return self.get_linear_motor_x_target_velocity()
  @linear_motor_x_target_velocity.setter 
  def linear_motor_x_target_velocity(self,value): 
    self.set_linear_motor_x_target_velocity(value)
  @property
  def linear_motor_y_enabled(self): 
    return self.get_linear_motor_y_enabled()
  @linear_motor_y_enabled.setter 
  def linear_motor_y_enabled(self,value): 
    self.set_linear_motor_y_enabled(value)
  @property
  def linear_motor_y_force_limit(self): 
    return self.get_linear_motor_y_force_limit()
  @linear_motor_y_force_limit.setter 
  def linear_motor_y_force_limit(self,value): 
    self.set_linear_motor_y_force_limit(value)
  @property
  def linear_motor_y_target_velocity(self): 
    return self.get_linear_motor_y_target_velocity()
  @linear_motor_y_target_velocity.setter 
  def linear_motor_y_target_velocity(self,value): 
    self.set_linear_motor_y_target_velocity(value)
  @property
  def linear_motor_z_enabled(self): 
    return self.get_linear_motor_z_enabled()
  @linear_motor_z_enabled.setter 
  def linear_motor_z_enabled(self,value): 
    self.set_linear_motor_z_enabled(value)
  @property
  def linear_motor_z_force_limit(self): 
    return self.get_linear_motor_z_force_limit()
  @linear_motor_z_force_limit.setter 
  def linear_motor_z_force_limit(self,value): 
    self.set_linear_motor_z_force_limit(value)
  @property
  def linear_motor_z_target_velocity(self): 
    return self.get_linear_motor_z_target_velocity()
  @linear_motor_z_target_velocity.setter 
  def linear_motor_z_target_velocity(self,value): 
    self.set_linear_motor_z_target_velocity(value)
  @property
  def linear_spring_x_damping(self): 
    return self.get_linear_spring_x_damping()
  @linear_spring_x_damping.setter 
  def linear_spring_x_damping(self,value): 
    self.set_linear_spring_x_damping(value)
  @property
  def linear_spring_x_enabled(self): 
    return self.get_linear_spring_x_enabled()
  @linear_spring_x_enabled.setter 
  def linear_spring_x_enabled(self,value): 
    self.set_linear_spring_x_enabled(value)
  @property
  def linear_spring_x_equilibrium_point(self): 
    return self.get_linear_spring_x_equilibrium_point()
  @linear_spring_x_equilibrium_point.setter 
  def linear_spring_x_equilibrium_point(self,value): 
    self.set_linear_spring_x_equilibrium_point(value)
  @property
  def linear_spring_x_stiffness(self): 
    return self.get_linear_spring_x_stiffness()
  @linear_spring_x_stiffness.setter 
  def linear_spring_x_stiffness(self,value): 
    self.set_linear_spring_x_stiffness(value)
  @property
  def linear_spring_y_damping(self): 
    return self.get_linear_spring_y_damping()
  @linear_spring_y_damping.setter 
  def linear_spring_y_damping(self,value): 
    self.set_linear_spring_y_damping(value)
  @property
  def linear_spring_y_enabled(self): 
    return self.get_linear_spring_y_enabled()
  @linear_spring_y_enabled.setter 
  def linear_spring_y_enabled(self,value): 
    self.set_linear_spring_y_enabled(value)
  @property
  def linear_spring_y_equilibrium_point(self): 
    return self.get_linear_spring_y_equilibrium_point()
  @linear_spring_y_equilibrium_point.setter 
  def linear_spring_y_equilibrium_point(self,value): 
    self.set_linear_spring_y_equilibrium_point(value)
  @property
  def linear_spring_y_stiffness(self): 
    return self.get_linear_spring_y_stiffness()
  @linear_spring_y_stiffness.setter 
  def linear_spring_y_stiffness(self,value): 
    self.set_linear_spring_y_stiffness(value)
  @property
  def linear_spring_z_damping(self): 
    return self.get_linear_spring_z_damping()
  @linear_spring_z_damping.setter 
  def linear_spring_z_damping(self,value): 
    self.set_linear_spring_z_damping(value)
  @property
  def linear_spring_z_enabled(self): 
    return self.get_linear_spring_z_enabled()
  @linear_spring_z_enabled.setter 
  def linear_spring_z_enabled(self,value): 
    self.set_linear_spring_z_enabled(value)
  @property
  def linear_spring_z_equilibrium_point(self): 
    return self.get_linear_spring_z_equilibrium_point()
  @linear_spring_z_equilibrium_point.setter 
  def linear_spring_z_equilibrium_point(self,value): 
    self.set_linear_spring_z_equilibrium_point(value)
  @property
  def linear_spring_z_stiffness(self): 
    return self.get_linear_spring_z_stiffness()
  @linear_spring_z_stiffness.setter 
  def linear_spring_z_stiffness(self,value): 
    self.set_linear_spring_z_stiffness(value)
  @property
  def precision(self): 
    return self.get_precision()
  @precision.setter 
  def precision(self,value): 
    self.set_precision(value)

##################################Generated Methods#########################################
  def  _get_angular_hi_limit_x(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint__get_angular_hi_limit_x,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_angular_hi_limit_y(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint__get_angular_hi_limit_y,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_angular_hi_limit_z(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint__get_angular_hi_limit_z,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_angular_lo_limit_x(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint__get_angular_lo_limit_x,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_angular_lo_limit_y(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint__get_angular_lo_limit_y,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_angular_lo_limit_z(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint__get_angular_lo_limit_z,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _set_angular_hi_limit_x(self,  float angle):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &angle
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint__set_angular_hi_limit_x,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_angular_hi_limit_y(self,  float angle):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &angle
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint__set_angular_hi_limit_y,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_angular_hi_limit_z(self,  float angle):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &angle
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint__set_angular_hi_limit_z,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_angular_lo_limit_x(self,  float angle):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &angle
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint__set_angular_lo_limit_x,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_angular_lo_limit_y(self,  float angle):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &angle
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint__set_angular_lo_limit_y,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_angular_lo_limit_z(self,  float angle):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &angle
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint__set_angular_lo_limit_z,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_flag_x(self,  int flag):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &flag
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_get_flag_x,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_flag_y(self,  int flag):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &flag
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_get_flag_y,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_flag_z(self,  int flag):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &flag
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_get_flag_z,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_param_x(self,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &param
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_get_param_x,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_param_y(self,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &param
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_get_param_y,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_param_z(self,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &param
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_get_param_z,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_precision(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_get_precision,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_flag_x(self,  int flag,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &flag
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_set_flag_x,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flag_y(self,  int flag,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &flag
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_set_flag_y,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flag_z(self,  int flag,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &flag
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_set_flag_z,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_param_x(self,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &param
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_set_param_x,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_param_y(self,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &param
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_set_param_y,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_param_z(self,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &param
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_set_param_z,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_precision(self,  int precision):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &precision
    api_core.godot_method_bind_ptrcall(bind_generic6dofjoint_set_precision,self.godot_owner,args,NULL)
    hello('hallo2')
