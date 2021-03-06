from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physicsserver_area_add_shape
cdef godot_method_bind *bind_physicsserver_area_attach_object_instance_id
cdef godot_method_bind *bind_physicsserver_area_clear_shapes
cdef godot_method_bind *bind_physicsserver_area_create
cdef godot_method_bind *bind_physicsserver_area_get_object_instance_id
cdef godot_method_bind *bind_physicsserver_area_get_param
cdef godot_method_bind *bind_physicsserver_area_get_shape
cdef godot_method_bind *bind_physicsserver_area_get_shape_count
cdef godot_method_bind *bind_physicsserver_area_get_shape_transform
cdef godot_method_bind *bind_physicsserver_area_get_space
cdef godot_method_bind *bind_physicsserver_area_get_space_override_mode
cdef godot_method_bind *bind_physicsserver_area_get_transform
cdef godot_method_bind *bind_physicsserver_area_is_ray_pickable
cdef godot_method_bind *bind_physicsserver_area_remove_shape
cdef godot_method_bind *bind_physicsserver_area_set_area_monitor_callback
cdef godot_method_bind *bind_physicsserver_area_set_collision_layer
cdef godot_method_bind *bind_physicsserver_area_set_collision_mask
cdef godot_method_bind *bind_physicsserver_area_set_monitor_callback
cdef godot_method_bind *bind_physicsserver_area_set_monitorable
cdef godot_method_bind *bind_physicsserver_area_set_param
cdef godot_method_bind *bind_physicsserver_area_set_ray_pickable
cdef godot_method_bind *bind_physicsserver_area_set_shape
cdef godot_method_bind *bind_physicsserver_area_set_shape_disabled
cdef godot_method_bind *bind_physicsserver_area_set_shape_transform
cdef godot_method_bind *bind_physicsserver_area_set_space
cdef godot_method_bind *bind_physicsserver_area_set_space_override_mode
cdef godot_method_bind *bind_physicsserver_area_set_transform
cdef godot_method_bind *bind_physicsserver_body_add_central_force
cdef godot_method_bind *bind_physicsserver_body_add_collision_exception
cdef godot_method_bind *bind_physicsserver_body_add_force
cdef godot_method_bind *bind_physicsserver_body_add_shape
cdef godot_method_bind *bind_physicsserver_body_add_torque
cdef godot_method_bind *bind_physicsserver_body_apply_central_impulse
cdef godot_method_bind *bind_physicsserver_body_apply_impulse
cdef godot_method_bind *bind_physicsserver_body_apply_torque_impulse
cdef godot_method_bind *bind_physicsserver_body_attach_object_instance_id
cdef godot_method_bind *bind_physicsserver_body_clear_shapes
cdef godot_method_bind *bind_physicsserver_body_create
cdef godot_method_bind *bind_physicsserver_body_get_collision_layer
cdef godot_method_bind *bind_physicsserver_body_get_collision_mask
cdef godot_method_bind *bind_physicsserver_body_get_direct_state
cdef godot_method_bind *bind_physicsserver_body_get_kinematic_safe_margin
cdef godot_method_bind *bind_physicsserver_body_get_max_contacts_reported
cdef godot_method_bind *bind_physicsserver_body_get_mode
cdef godot_method_bind *bind_physicsserver_body_get_object_instance_id
cdef godot_method_bind *bind_physicsserver_body_get_param
cdef godot_method_bind *bind_physicsserver_body_get_shape
cdef godot_method_bind *bind_physicsserver_body_get_shape_count
cdef godot_method_bind *bind_physicsserver_body_get_shape_transform
cdef godot_method_bind *bind_physicsserver_body_get_space
cdef godot_method_bind *bind_physicsserver_body_get_state
cdef godot_method_bind *bind_physicsserver_body_is_axis_locked
cdef godot_method_bind *bind_physicsserver_body_is_continuous_collision_detection_enabled
cdef godot_method_bind *bind_physicsserver_body_is_omitting_force_integration
cdef godot_method_bind *bind_physicsserver_body_is_ray_pickable
cdef godot_method_bind *bind_physicsserver_body_remove_collision_exception
cdef godot_method_bind *bind_physicsserver_body_remove_shape
cdef godot_method_bind *bind_physicsserver_body_set_axis_lock
cdef godot_method_bind *bind_physicsserver_body_set_axis_velocity
cdef godot_method_bind *bind_physicsserver_body_set_collision_layer
cdef godot_method_bind *bind_physicsserver_body_set_collision_mask
cdef godot_method_bind *bind_physicsserver_body_set_enable_continuous_collision_detection
cdef godot_method_bind *bind_physicsserver_body_set_force_integration_callback
cdef godot_method_bind *bind_physicsserver_body_set_kinematic_safe_margin
cdef godot_method_bind *bind_physicsserver_body_set_max_contacts_reported
cdef godot_method_bind *bind_physicsserver_body_set_mode
cdef godot_method_bind *bind_physicsserver_body_set_omit_force_integration
cdef godot_method_bind *bind_physicsserver_body_set_param
cdef godot_method_bind *bind_physicsserver_body_set_ray_pickable
cdef godot_method_bind *bind_physicsserver_body_set_shape
cdef godot_method_bind *bind_physicsserver_body_set_shape_disabled
cdef godot_method_bind *bind_physicsserver_body_set_shape_transform
cdef godot_method_bind *bind_physicsserver_body_set_space
cdef godot_method_bind *bind_physicsserver_body_set_state
cdef godot_method_bind *bind_physicsserver_cone_twist_joint_get_param
cdef godot_method_bind *bind_physicsserver_cone_twist_joint_set_param
cdef godot_method_bind *bind_physicsserver_free_rid
cdef godot_method_bind *bind_physicsserver_generic_6dof_joint_get_flag
cdef godot_method_bind *bind_physicsserver_generic_6dof_joint_get_param
cdef godot_method_bind *bind_physicsserver_generic_6dof_joint_set_flag
cdef godot_method_bind *bind_physicsserver_generic_6dof_joint_set_param
cdef godot_method_bind *bind_physicsserver_get_process_info
cdef godot_method_bind *bind_physicsserver_hinge_joint_get_flag
cdef godot_method_bind *bind_physicsserver_hinge_joint_get_param
cdef godot_method_bind *bind_physicsserver_hinge_joint_set_flag
cdef godot_method_bind *bind_physicsserver_hinge_joint_set_param
cdef godot_method_bind *bind_physicsserver_joint_create_cone_twist
cdef godot_method_bind *bind_physicsserver_joint_create_generic_6dof
cdef godot_method_bind *bind_physicsserver_joint_create_hinge
cdef godot_method_bind *bind_physicsserver_joint_create_pin
cdef godot_method_bind *bind_physicsserver_joint_create_slider
cdef godot_method_bind *bind_physicsserver_joint_get_solver_priority
cdef godot_method_bind *bind_physicsserver_joint_get_type
cdef godot_method_bind *bind_physicsserver_joint_set_solver_priority
cdef godot_method_bind *bind_physicsserver_pin_joint_get_local_a
cdef godot_method_bind *bind_physicsserver_pin_joint_get_local_b
cdef godot_method_bind *bind_physicsserver_pin_joint_get_param
cdef godot_method_bind *bind_physicsserver_pin_joint_set_local_a
cdef godot_method_bind *bind_physicsserver_pin_joint_set_local_b
cdef godot_method_bind *bind_physicsserver_pin_joint_set_param
cdef godot_method_bind *bind_physicsserver_set_active
cdef godot_method_bind *bind_physicsserver_shape_create
cdef godot_method_bind *bind_physicsserver_shape_get_data
cdef godot_method_bind *bind_physicsserver_shape_get_type
cdef godot_method_bind *bind_physicsserver_shape_set_data
cdef godot_method_bind *bind_physicsserver_slider_joint_get_param
cdef godot_method_bind *bind_physicsserver_slider_joint_set_param
cdef godot_method_bind *bind_physicsserver_space_create
cdef godot_method_bind *bind_physicsserver_space_get_direct_state
cdef godot_method_bind *bind_physicsserver_space_get_param
cdef godot_method_bind *bind_physicsserver_space_is_active
cdef godot_method_bind *bind_physicsserver_space_set_active
cdef godot_method_bind *bind_physicsserver_space_set_param
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physicsserver_area_add_shape = api_core.godot_method_bind_get_method('PhysicsServer', 'area_add_shape')
  bind_physicsserver_area_attach_object_instance_id = api_core.godot_method_bind_get_method('PhysicsServer', 'area_attach_object_instance_id')
  bind_physicsserver_area_clear_shapes = api_core.godot_method_bind_get_method('PhysicsServer', 'area_clear_shapes')
  bind_physicsserver_area_create = api_core.godot_method_bind_get_method('PhysicsServer', 'area_create')
  bind_physicsserver_area_get_object_instance_id = api_core.godot_method_bind_get_method('PhysicsServer', 'area_get_object_instance_id')
  bind_physicsserver_area_get_param = api_core.godot_method_bind_get_method('PhysicsServer', 'area_get_param')
  bind_physicsserver_area_get_shape = api_core.godot_method_bind_get_method('PhysicsServer', 'area_get_shape')
  bind_physicsserver_area_get_shape_count = api_core.godot_method_bind_get_method('PhysicsServer', 'area_get_shape_count')
  bind_physicsserver_area_get_shape_transform = api_core.godot_method_bind_get_method('PhysicsServer', 'area_get_shape_transform')
  bind_physicsserver_area_get_space = api_core.godot_method_bind_get_method('PhysicsServer', 'area_get_space')
  bind_physicsserver_area_get_space_override_mode = api_core.godot_method_bind_get_method('PhysicsServer', 'area_get_space_override_mode')
  bind_physicsserver_area_get_transform = api_core.godot_method_bind_get_method('PhysicsServer', 'area_get_transform')
  bind_physicsserver_area_is_ray_pickable = api_core.godot_method_bind_get_method('PhysicsServer', 'area_is_ray_pickable')
  bind_physicsserver_area_remove_shape = api_core.godot_method_bind_get_method('PhysicsServer', 'area_remove_shape')
  bind_physicsserver_area_set_area_monitor_callback = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_area_monitor_callback')
  bind_physicsserver_area_set_collision_layer = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_collision_layer')
  bind_physicsserver_area_set_collision_mask = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_collision_mask')
  bind_physicsserver_area_set_monitor_callback = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_monitor_callback')
  bind_physicsserver_area_set_monitorable = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_monitorable')
  bind_physicsserver_area_set_param = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_param')
  bind_physicsserver_area_set_ray_pickable = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_ray_pickable')
  bind_physicsserver_area_set_shape = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_shape')
  bind_physicsserver_area_set_shape_disabled = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_shape_disabled')
  bind_physicsserver_area_set_shape_transform = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_shape_transform')
  bind_physicsserver_area_set_space = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_space')
  bind_physicsserver_area_set_space_override_mode = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_space_override_mode')
  bind_physicsserver_area_set_transform = api_core.godot_method_bind_get_method('PhysicsServer', 'area_set_transform')
  bind_physicsserver_body_add_central_force = api_core.godot_method_bind_get_method('PhysicsServer', 'body_add_central_force')
  bind_physicsserver_body_add_collision_exception = api_core.godot_method_bind_get_method('PhysicsServer', 'body_add_collision_exception')
  bind_physicsserver_body_add_force = api_core.godot_method_bind_get_method('PhysicsServer', 'body_add_force')
  bind_physicsserver_body_add_shape = api_core.godot_method_bind_get_method('PhysicsServer', 'body_add_shape')
  bind_physicsserver_body_add_torque = api_core.godot_method_bind_get_method('PhysicsServer', 'body_add_torque')
  bind_physicsserver_body_apply_central_impulse = api_core.godot_method_bind_get_method('PhysicsServer', 'body_apply_central_impulse')
  bind_physicsserver_body_apply_impulse = api_core.godot_method_bind_get_method('PhysicsServer', 'body_apply_impulse')
  bind_physicsserver_body_apply_torque_impulse = api_core.godot_method_bind_get_method('PhysicsServer', 'body_apply_torque_impulse')
  bind_physicsserver_body_attach_object_instance_id = api_core.godot_method_bind_get_method('PhysicsServer', 'body_attach_object_instance_id')
  bind_physicsserver_body_clear_shapes = api_core.godot_method_bind_get_method('PhysicsServer', 'body_clear_shapes')
  bind_physicsserver_body_create = api_core.godot_method_bind_get_method('PhysicsServer', 'body_create')
  bind_physicsserver_body_get_collision_layer = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_collision_layer')
  bind_physicsserver_body_get_collision_mask = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_collision_mask')
  bind_physicsserver_body_get_direct_state = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_direct_state')
  bind_physicsserver_body_get_kinematic_safe_margin = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_kinematic_safe_margin')
  bind_physicsserver_body_get_max_contacts_reported = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_max_contacts_reported')
  bind_physicsserver_body_get_mode = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_mode')
  bind_physicsserver_body_get_object_instance_id = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_object_instance_id')
  bind_physicsserver_body_get_param = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_param')
  bind_physicsserver_body_get_shape = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_shape')
  bind_physicsserver_body_get_shape_count = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_shape_count')
  bind_physicsserver_body_get_shape_transform = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_shape_transform')
  bind_physicsserver_body_get_space = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_space')
  bind_physicsserver_body_get_state = api_core.godot_method_bind_get_method('PhysicsServer', 'body_get_state')
  bind_physicsserver_body_is_axis_locked = api_core.godot_method_bind_get_method('PhysicsServer', 'body_is_axis_locked')
  bind_physicsserver_body_is_continuous_collision_detection_enabled = api_core.godot_method_bind_get_method('PhysicsServer', 'body_is_continuous_collision_detection_enabled')
  bind_physicsserver_body_is_omitting_force_integration = api_core.godot_method_bind_get_method('PhysicsServer', 'body_is_omitting_force_integration')
  bind_physicsserver_body_is_ray_pickable = api_core.godot_method_bind_get_method('PhysicsServer', 'body_is_ray_pickable')
  bind_physicsserver_body_remove_collision_exception = api_core.godot_method_bind_get_method('PhysicsServer', 'body_remove_collision_exception')
  bind_physicsserver_body_remove_shape = api_core.godot_method_bind_get_method('PhysicsServer', 'body_remove_shape')
  bind_physicsserver_body_set_axis_lock = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_axis_lock')
  bind_physicsserver_body_set_axis_velocity = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_axis_velocity')
  bind_physicsserver_body_set_collision_layer = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_collision_layer')
  bind_physicsserver_body_set_collision_mask = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_collision_mask')
  bind_physicsserver_body_set_enable_continuous_collision_detection = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_enable_continuous_collision_detection')
  bind_physicsserver_body_set_force_integration_callback = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_force_integration_callback')
  bind_physicsserver_body_set_kinematic_safe_margin = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_kinematic_safe_margin')
  bind_physicsserver_body_set_max_contacts_reported = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_max_contacts_reported')
  bind_physicsserver_body_set_mode = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_mode')
  bind_physicsserver_body_set_omit_force_integration = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_omit_force_integration')
  bind_physicsserver_body_set_param = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_param')
  bind_physicsserver_body_set_ray_pickable = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_ray_pickable')
  bind_physicsserver_body_set_shape = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_shape')
  bind_physicsserver_body_set_shape_disabled = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_shape_disabled')
  bind_physicsserver_body_set_shape_transform = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_shape_transform')
  bind_physicsserver_body_set_space = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_space')
  bind_physicsserver_body_set_state = api_core.godot_method_bind_get_method('PhysicsServer', 'body_set_state')
  bind_physicsserver_cone_twist_joint_get_param = api_core.godot_method_bind_get_method('PhysicsServer', 'cone_twist_joint_get_param')
  bind_physicsserver_cone_twist_joint_set_param = api_core.godot_method_bind_get_method('PhysicsServer', 'cone_twist_joint_set_param')
  bind_physicsserver_free_rid = api_core.godot_method_bind_get_method('PhysicsServer', 'free_rid')
  bind_physicsserver_generic_6dof_joint_get_flag = api_core.godot_method_bind_get_method('PhysicsServer', 'generic_6dof_joint_get_flag')
  bind_physicsserver_generic_6dof_joint_get_param = api_core.godot_method_bind_get_method('PhysicsServer', 'generic_6dof_joint_get_param')
  bind_physicsserver_generic_6dof_joint_set_flag = api_core.godot_method_bind_get_method('PhysicsServer', 'generic_6dof_joint_set_flag')
  bind_physicsserver_generic_6dof_joint_set_param = api_core.godot_method_bind_get_method('PhysicsServer', 'generic_6dof_joint_set_param')
  bind_physicsserver_get_process_info = api_core.godot_method_bind_get_method('PhysicsServer', 'get_process_info')
  bind_physicsserver_hinge_joint_get_flag = api_core.godot_method_bind_get_method('PhysicsServer', 'hinge_joint_get_flag')
  bind_physicsserver_hinge_joint_get_param = api_core.godot_method_bind_get_method('PhysicsServer', 'hinge_joint_get_param')
  bind_physicsserver_hinge_joint_set_flag = api_core.godot_method_bind_get_method('PhysicsServer', 'hinge_joint_set_flag')
  bind_physicsserver_hinge_joint_set_param = api_core.godot_method_bind_get_method('PhysicsServer', 'hinge_joint_set_param')
  bind_physicsserver_joint_create_cone_twist = api_core.godot_method_bind_get_method('PhysicsServer', 'joint_create_cone_twist')
  bind_physicsserver_joint_create_generic_6dof = api_core.godot_method_bind_get_method('PhysicsServer', 'joint_create_generic_6dof')
  bind_physicsserver_joint_create_hinge = api_core.godot_method_bind_get_method('PhysicsServer', 'joint_create_hinge')
  bind_physicsserver_joint_create_pin = api_core.godot_method_bind_get_method('PhysicsServer', 'joint_create_pin')
  bind_physicsserver_joint_create_slider = api_core.godot_method_bind_get_method('PhysicsServer', 'joint_create_slider')
  bind_physicsserver_joint_get_solver_priority = api_core.godot_method_bind_get_method('PhysicsServer', 'joint_get_solver_priority')
  bind_physicsserver_joint_get_type = api_core.godot_method_bind_get_method('PhysicsServer', 'joint_get_type')
  bind_physicsserver_joint_set_solver_priority = api_core.godot_method_bind_get_method('PhysicsServer', 'joint_set_solver_priority')
  bind_physicsserver_pin_joint_get_local_a = api_core.godot_method_bind_get_method('PhysicsServer', 'pin_joint_get_local_a')
  bind_physicsserver_pin_joint_get_local_b = api_core.godot_method_bind_get_method('PhysicsServer', 'pin_joint_get_local_b')
  bind_physicsserver_pin_joint_get_param = api_core.godot_method_bind_get_method('PhysicsServer', 'pin_joint_get_param')
  bind_physicsserver_pin_joint_set_local_a = api_core.godot_method_bind_get_method('PhysicsServer', 'pin_joint_set_local_a')
  bind_physicsserver_pin_joint_set_local_b = api_core.godot_method_bind_get_method('PhysicsServer', 'pin_joint_set_local_b')
  bind_physicsserver_pin_joint_set_param = api_core.godot_method_bind_get_method('PhysicsServer', 'pin_joint_set_param')
  bind_physicsserver_set_active = api_core.godot_method_bind_get_method('PhysicsServer', 'set_active')
  bind_physicsserver_shape_create = api_core.godot_method_bind_get_method('PhysicsServer', 'shape_create')
  bind_physicsserver_shape_get_data = api_core.godot_method_bind_get_method('PhysicsServer', 'shape_get_data')
  bind_physicsserver_shape_get_type = api_core.godot_method_bind_get_method('PhysicsServer', 'shape_get_type')
  bind_physicsserver_shape_set_data = api_core.godot_method_bind_get_method('PhysicsServer', 'shape_set_data')
  bind_physicsserver_slider_joint_get_param = api_core.godot_method_bind_get_method('PhysicsServer', 'slider_joint_get_param')
  bind_physicsserver_slider_joint_set_param = api_core.godot_method_bind_get_method('PhysicsServer', 'slider_joint_set_param')
  bind_physicsserver_space_create = api_core.godot_method_bind_get_method('PhysicsServer', 'space_create')
  bind_physicsserver_space_get_direct_state = api_core.godot_method_bind_get_method('PhysicsServer', 'space_get_direct_state')
  bind_physicsserver_space_get_param = api_core.godot_method_bind_get_method('PhysicsServer', 'space_get_param')
  bind_physicsserver_space_is_active = api_core.godot_method_bind_get_method('PhysicsServer', 'space_is_active')
  bind_physicsserver_space_set_active = api_core.godot_method_bind_get_method('PhysicsServer', 'space_set_active')
  bind_physicsserver_space_set_param = api_core.godot_method_bind_get_method('PhysicsServer', 'space_set_param')

############################Generated class###################################
cdef class PhysicsServer(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PhysicsServer")())
##################################Generated Methods#########################################
  def  area_add_shape(self, areashapetransformdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_add_shape,self.godot_owner,[NULL,],NULL)
  def  area_attach_object_instance_id(self, areaid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_attach_object_instance_id,self.godot_owner,[NULL,],NULL)
  def  area_clear_shapes(self, area):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_clear_shapes,self.godot_owner,[NULL,],NULL)
  def  area_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_create,self.godot_owner,[NULL,],&ret)
  def  area_get_object_instance_id(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_object_instance_id,self.godot_owner,[NULL,],&ret)
  def  area_get_param(self, areaparam):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_param,self.godot_owner,[NULL,],&ret)
  def  area_get_shape(self, areashape_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_shape,self.godot_owner,[NULL,],&ret)
  def  area_get_shape_count(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_shape_count,self.godot_owner,[NULL,],&ret)
  def  area_get_shape_transform(self, areashape_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_shape_transform,self.godot_owner,[NULL,],&ret)
  def  area_get_space(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_space,self.godot_owner,[NULL,],&ret)
  def  area_get_space_override_mode(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef PhysicsServer::AreaSpaceOverrideMode ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_space_override_mode,self.godot_owner,[NULL,],&ret)
  def  area_get_transform(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_transform,self.godot_owner,[NULL,],&ret)
  def  area_is_ray_pickable(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_is_ray_pickable,self.godot_owner,[NULL,],&ret)
  def  area_remove_shape(self, areashape_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_remove_shape,self.godot_owner,[NULL,],NULL)
  def  area_set_area_monitor_callback(self, areareceivermethod):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_area_monitor_callback,self.godot_owner,[NULL,],NULL)
  def  area_set_collision_layer(self, arealayer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_collision_layer,self.godot_owner,[NULL,],NULL)
  def  area_set_collision_mask(self, areamask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  area_set_monitor_callback(self, areareceivermethod):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_monitor_callback,self.godot_owner,[NULL,],NULL)
  def  area_set_monitorable(self, areamonitorable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_monitorable,self.godot_owner,[NULL,],NULL)
  def  area_set_param(self, areaparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_param,self.godot_owner,[NULL,],NULL)
  def  area_set_ray_pickable(self, areaenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_ray_pickable,self.godot_owner,[NULL,],NULL)
  def  area_set_shape(self, areashape_idxshape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_shape,self.godot_owner,[NULL,],NULL)
  def  area_set_shape_disabled(self, areashape_idxdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_shape_disabled,self.godot_owner,[NULL,],NULL)
  def  area_set_shape_transform(self, areashape_idxtransform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_shape_transform,self.godot_owner,[NULL,],NULL)
  def  area_set_space(self, areaspace):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_space,self.godot_owner,[NULL,],NULL)
  def  area_set_space_override_mode(self, areamode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_space_override_mode,self.godot_owner,[NULL,],NULL)
  def  area_set_transform(self, areatransform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_transform,self.godot_owner,[NULL,],NULL)
  def  body_add_central_force(self, bodyforce):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_add_central_force,self.godot_owner,[NULL,],NULL)
  def  body_add_collision_exception(self, bodyexcepted_body):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_add_collision_exception,self.godot_owner,[NULL,],NULL)
  def  body_add_force(self, bodyforceposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_add_force,self.godot_owner,[NULL,],NULL)
  def  body_add_shape(self, bodyshapetransformdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_add_shape,self.godot_owner,[NULL,],NULL)
  def  body_add_torque(self, bodytorque):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_add_torque,self.godot_owner,[NULL,],NULL)
  def  body_apply_central_impulse(self, bodyimpulse):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_apply_central_impulse,self.godot_owner,[NULL,],NULL)
  def  body_apply_impulse(self, bodypositionimpulse):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_apply_impulse,self.godot_owner,[NULL,],NULL)
  def  body_apply_torque_impulse(self, bodyimpulse):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_apply_torque_impulse,self.godot_owner,[NULL,],NULL)
  def  body_attach_object_instance_id(self, bodyid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_attach_object_instance_id,self.godot_owner,[NULL,],NULL)
  def  body_clear_shapes(self, body):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_clear_shapes,self.godot_owner,[NULL,],NULL)
  def  body_create(self, modeinit_sleeping):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_create,self.godot_owner,[NULL,],&ret)
  def  body_get_collision_layer(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_collision_layer,self.godot_owner,[NULL,],&ret)
  def  body_get_collision_mask(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_collision_mask,self.godot_owner,[NULL,],&ret)
  def  body_get_direct_state(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef PhysicsDirectBodyState ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_direct_state,self.godot_owner,[NULL,],&ret)
  def  body_get_kinematic_safe_margin(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_kinematic_safe_margin,self.godot_owner,[NULL,],&ret)
  def  body_get_max_contacts_reported(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_max_contacts_reported,self.godot_owner,[NULL,],&ret)
  def  body_get_mode(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef PhysicsServer::BodyMode ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_mode,self.godot_owner,[NULL,],&ret)
  def  body_get_object_instance_id(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_object_instance_id,self.godot_owner,[NULL,],&ret)
  def  body_get_param(self, bodyparam):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_param,self.godot_owner,[NULL,],&ret)
  def  body_get_shape(self, bodyshape_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_shape,self.godot_owner,[NULL,],&ret)
  def  body_get_shape_count(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_shape_count,self.godot_owner,[NULL,],&ret)
  def  body_get_shape_transform(self, bodyshape_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_shape_transform,self.godot_owner,[NULL,],&ret)
  def  body_get_space(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_space,self.godot_owner,[NULL,],&ret)
  def  body_get_state(self, bodystate):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_state,self.godot_owner,[NULL,],&ret)
  def  body_is_axis_locked(self, bodyaxis):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_is_axis_locked,self.godot_owner,[NULL,],&ret)
  def  body_is_continuous_collision_detection_enabled(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_is_continuous_collision_detection_enabled,self.godot_owner,[NULL,],&ret)
  def  body_is_omitting_force_integration(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_is_omitting_force_integration,self.godot_owner,[NULL,],&ret)
  def  body_is_ray_pickable(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_is_ray_pickable,self.godot_owner,[NULL,],&ret)
  def  body_remove_collision_exception(self, bodyexcepted_body):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_remove_collision_exception,self.godot_owner,[NULL,],NULL)
  def  body_remove_shape(self, bodyshape_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_remove_shape,self.godot_owner,[NULL,],NULL)
  def  body_set_axis_lock(self, bodyaxislock):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_axis_lock,self.godot_owner,[NULL,],NULL)
  def  body_set_axis_velocity(self, bodyaxis_velocity):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_axis_velocity,self.godot_owner,[NULL,],NULL)
  def  body_set_collision_layer(self, bodylayer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_collision_layer,self.godot_owner,[NULL,],NULL)
  def  body_set_collision_mask(self, bodymask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  body_set_enable_continuous_collision_detection(self, bodyenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_enable_continuous_collision_detection,self.godot_owner,[NULL,],NULL)
  def  body_set_force_integration_callback(self, bodyreceivermethoduserdata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_force_integration_callback,self.godot_owner,[NULL,],NULL)
  def  body_set_kinematic_safe_margin(self, bodymargin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_kinematic_safe_margin,self.godot_owner,[NULL,],NULL)
  def  body_set_max_contacts_reported(self, bodyamount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_max_contacts_reported,self.godot_owner,[NULL,],NULL)
  def  body_set_mode(self, bodymode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_mode,self.godot_owner,[NULL,],NULL)
  def  body_set_omit_force_integration(self, bodyenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_omit_force_integration,self.godot_owner,[NULL,],NULL)
  def  body_set_param(self, bodyparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_param,self.godot_owner,[NULL,],NULL)
  def  body_set_ray_pickable(self, bodyenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_ray_pickable,self.godot_owner,[NULL,],NULL)
  def  body_set_shape(self, bodyshape_idxshape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_shape,self.godot_owner,[NULL,],NULL)
  def  body_set_shape_disabled(self, bodyshape_idxdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_shape_disabled,self.godot_owner,[NULL,],NULL)
  def  body_set_shape_transform(self, bodyshape_idxtransform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_shape_transform,self.godot_owner,[NULL,],NULL)
  def  body_set_space(self, bodyspace):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_space,self.godot_owner,[NULL,],NULL)
  def  body_set_state(self, bodystatevalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_state,self.godot_owner,[NULL,],NULL)
  def  cone_twist_joint_get_param(self, jointparam):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_cone_twist_joint_get_param,self.godot_owner,[NULL,],&ret)
  def  cone_twist_joint_set_param(self, jointparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_cone_twist_joint_set_param,self.godot_owner,[NULL,],NULL)
  def  free_rid(self, rid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_free_rid,self.godot_owner,[NULL,],NULL)
  def  generic_6dof_joint_get_flag(self, jointaxisflag):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_generic_6dof_joint_get_flag,self.godot_owner,[NULL,],&ret)
  def  generic_6dof_joint_get_param(self, jointaxisparam):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_generic_6dof_joint_get_param,self.godot_owner,[NULL,],&ret)
  def  generic_6dof_joint_set_flag(self, jointaxisflagenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_generic_6dof_joint_set_flag,self.godot_owner,[NULL,],NULL)
  def  generic_6dof_joint_set_param(self, jointaxisparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_generic_6dof_joint_set_param,self.godot_owner,[NULL,],NULL)
  def  get_process_info(self, process_info):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_get_process_info,self.godot_owner,[NULL,],&ret)
  def  hinge_joint_get_flag(self, jointflag):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_hinge_joint_get_flag,self.godot_owner,[NULL,],&ret)
  def  hinge_joint_get_param(self, jointparam):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_hinge_joint_get_param,self.godot_owner,[NULL,],&ret)
  def  hinge_joint_set_flag(self, jointflagenabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_hinge_joint_set_flag,self.godot_owner,[NULL,],NULL)
  def  hinge_joint_set_param(self, jointparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_hinge_joint_set_param,self.godot_owner,[NULL,],NULL)
  def  joint_create_cone_twist(self, body_Alocal_ref_Abody_Blocal_ref_B):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_create_cone_twist,self.godot_owner,[NULL,],&ret)
  def  joint_create_generic_6dof(self, body_Alocal_ref_Abody_Blocal_ref_B):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_create_generic_6dof,self.godot_owner,[NULL,],&ret)
  def  joint_create_hinge(self, body_Ahinge_Abody_Bhinge_B):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_create_hinge,self.godot_owner,[NULL,],&ret)
  def  joint_create_pin(self, body_Alocal_Abody_Blocal_B):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_create_pin,self.godot_owner,[NULL,],&ret)
  def  joint_create_slider(self, body_Alocal_ref_Abody_Blocal_ref_B):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_create_slider,self.godot_owner,[NULL,],&ret)
  def  joint_get_solver_priority(self, joint):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_get_solver_priority,self.godot_owner,[NULL,],&ret)
  def  joint_get_type(self, joint):
    cdef godot_object *_owner = self.godot_owner
    cdef PhysicsServer::JointType ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_get_type,self.godot_owner,[NULL,],&ret)
  def  joint_set_solver_priority(self, jointpriority):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_set_solver_priority,self.godot_owner,[NULL,],NULL)
  def  pin_joint_get_local_a(self, joint):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_pin_joint_get_local_a,self.godot_owner,[NULL,],&ret)
  def  pin_joint_get_local_b(self, joint):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_pin_joint_get_local_b,self.godot_owner,[NULL,],&ret)
  def  pin_joint_get_param(self, jointparam):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_pin_joint_get_param,self.godot_owner,[NULL,],&ret)
  def  pin_joint_set_local_a(self, jointlocal_A):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_pin_joint_set_local_a,self.godot_owner,[NULL,],NULL)
  def  pin_joint_set_local_b(self, jointlocal_B):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_pin_joint_set_local_b,self.godot_owner,[NULL,],NULL)
  def  pin_joint_set_param(self, jointparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_pin_joint_set_param,self.godot_owner,[NULL,],NULL)
  def  set_active(self, active):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_set_active,self.godot_owner,[NULL,],NULL)
  def  shape_create(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_shape_create,self.godot_owner,[NULL,],&ret)
  def  shape_get_data(self, shape):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_shape_get_data,self.godot_owner,[NULL,],&ret)
  def  shape_get_type(self, shape):
    cdef godot_object *_owner = self.godot_owner
    cdef PhysicsServer::ShapeType ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_shape_get_type,self.godot_owner,[NULL,],&ret)
  def  shape_set_data(self, shapedata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_shape_set_data,self.godot_owner,[NULL,],NULL)
  def  slider_joint_get_param(self, jointparam):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_slider_joint_get_param,self.godot_owner,[NULL,],&ret)
  def  slider_joint_set_param(self, jointparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_slider_joint_set_param,self.godot_owner,[NULL,],NULL)
  def  space_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_space_create,self.godot_owner,[NULL,],&ret)
  def  space_get_direct_state(self, space):
    cdef godot_object *_owner = self.godot_owner
    cdef PhysicsDirectSpaceState ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_space_get_direct_state,self.godot_owner,[NULL,],&ret)
  def  space_get_param(self, spaceparam):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_space_get_param,self.godot_owner,[NULL,],&ret)
  def  space_is_active(self, space):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsserver_space_is_active,self.godot_owner,[NULL,],&ret)
  def  space_set_active(self, spaceactive):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_space_set_active,self.godot_owner,[NULL,],NULL)
  def  space_set_param(self, spaceparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsserver_space_set_param,self.godot_owner,[NULL,],NULL)
