
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
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object 

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
cdef class PhysicsServer(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PhysicsServer")())
##################################Generated Methods#########################################
  def  area_add_shape(self,  RID area,  RID shape,  Transform transform,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &area._native
    args[1] = &shape._native
    args[2] = &transform._native
    args[3] = &disabled
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_add_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_attach_object_instance_id(self,  RID area,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_attach_object_instance_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_clear_shapes(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_clear_shapes,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  area_get_object_instance_id(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_object_instance_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  area_get_param(self,  RID area,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &param
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  area_get_shape(self,  RID area,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_shape,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  area_get_shape_count(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_shape_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  area_get_shape_transform(self,  RID area,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_shape_transform,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  area_get_space(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_space,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  area_get_space_override_mode(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef AreaSpaceOverrideMode* ret = NULL;

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_space_override_mode,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  area_get_transform(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_get_transform,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  area_is_ray_pickable(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_is_ray_pickable,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  area_remove_shape(self,  RID area,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_remove_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_area_monitor_callback(self,  RID area,  classes.Object.Object receiver,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &area._native
    args[1] = receiver.godot_owner
    args[2] = &method._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_area_monitor_callback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_collision_layer(self,  RID area,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &layer
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_collision_layer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_collision_mask(self,  RID area,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &mask
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_monitor_callback(self,  RID area,  classes.Object.Object receiver,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &area._native
    args[1] = receiver.godot_owner
    args[2] = &method._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_monitor_callback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_monitorable(self,  RID area,  bool monitorable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &monitorable
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_monitorable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_param(self,  RID area,  int param,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &area._native
    args[1] = &param
    args[2] = &value._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_ray_pickable(self,  RID area,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_ray_pickable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_shape(self,  RID area,  int shape_idx,  RID shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &area._native
    args[1] = &shape_idx
    args[2] = &shape._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_shape_disabled(self,  RID area,  int shape_idx,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &area._native
    args[1] = &shape_idx
    args[2] = &disabled
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_shape_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_shape_transform(self,  RID area,  int shape_idx,  Transform transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &area._native
    args[1] = &shape_idx
    args[2] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_shape_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_space(self,  RID area,  RID space):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &space._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_space,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_space_override_mode(self,  RID area,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &mode
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_space_override_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_transform(self,  RID area,  Transform transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_area_set_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_add_central_force(self,  RID body,  Vector3 force):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &force._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_add_central_force,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_add_collision_exception(self,  RID body,  RID excepted_body):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &excepted_body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_add_collision_exception,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_add_force(self,  RID body,  Vector3 force,  Vector3 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &force._native
    args[2] = &position._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_add_force,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_add_shape(self,  RID body,  RID shape,  Transform transform,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &body._native
    args[1] = &shape._native
    args[2] = &transform._native
    args[3] = &disabled
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_add_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_add_torque(self,  RID body,  Vector3 torque):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &torque._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_add_torque,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_apply_central_impulse(self,  RID body,  Vector3 impulse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &impulse._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_apply_central_impulse,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_apply_impulse(self,  RID body,  Vector3 position,  Vector3 impulse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &position._native
    args[2] = &impulse._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_apply_impulse,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_apply_torque_impulse(self,  RID body,  Vector3 impulse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &impulse._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_apply_torque_impulse,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_attach_object_instance_id(self,  RID body,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_attach_object_instance_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_clear_shapes(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_clear_shapes,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_create(self,  int mode,  bool init_sleeping):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[2]

    args[0] = &mode
    args[1] = &init_sleeping
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_create,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  body_get_collision_layer(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_collision_layer,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_collision_mask(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_collision_mask,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_direct_state(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_direct_state,self.godot_owner,args,&ret)
    hello('hallo2')
  def  body_get_kinematic_safe_margin(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_kinematic_safe_margin,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_max_contacts_reported(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_max_contacts_reported,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_mode(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef BodyMode* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_mode,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_object_instance_id(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_object_instance_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_param(self,  RID body,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &param
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_shape(self,  RID body,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_shape,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  body_get_shape_count(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_shape_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_shape_transform(self,  RID body,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_shape_transform,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  body_get_space(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_space,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  body_get_state(self,  RID body,  int state):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &state
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_get_state,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  body_is_axis_locked(self,  RID body,  int axis):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &axis
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_is_axis_locked,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_is_continuous_collision_detection_enabled(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_is_continuous_collision_detection_enabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_is_omitting_force_integration(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_is_omitting_force_integration,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_is_ray_pickable(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_is_ray_pickable,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_remove_collision_exception(self,  RID body,  RID excepted_body):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &excepted_body._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_remove_collision_exception,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_remove_shape(self,  RID body,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_remove_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_axis_lock(self,  RID body,  int axis,  bool lock):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &axis
    args[2] = &lock
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_axis_lock,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_axis_velocity(self,  RID body,  Vector3 axis_velocity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &axis_velocity._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_axis_velocity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_collision_layer(self,  RID body,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &layer
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_collision_layer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_collision_mask(self,  RID body,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &mask
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_enable_continuous_collision_detection(self,  RID body,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_enable_continuous_collision_detection,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_force_integration_callback(self,  RID body,  classes.Object.Object receiver,  String method,  Variant userdata):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &body._native
    args[1] = receiver.godot_owner
    args[2] = &method._native
    args[3] = &userdata._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_force_integration_callback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_kinematic_safe_margin(self,  RID body,  float margin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &margin
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_kinematic_safe_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_max_contacts_reported(self,  RID body,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &amount
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_max_contacts_reported,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_mode(self,  RID body,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &mode
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_omit_force_integration(self,  RID body,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_omit_force_integration,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_param(self,  RID body,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &param
    args[2] = &value
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_ray_pickable(self,  RID body,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_ray_pickable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_shape(self,  RID body,  int shape_idx,  RID shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &shape_idx
    args[2] = &shape._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_shape_disabled(self,  RID body,  int shape_idx,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &shape_idx
    args[2] = &disabled
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_shape_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_shape_transform(self,  RID body,  int shape_idx,  Transform transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &shape_idx
    args[2] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_shape_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_space(self,  RID body,  RID space):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &space._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_space,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_state(self,  RID body,  int state,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &state
    args[2] = &value._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_body_set_state,self.godot_owner,args,NULL)
    hello('hallo2')
  def  cone_twist_joint_get_param(self,  RID joint,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &joint._native
    args[1] = &param
    api_core.godot_method_bind_ptrcall(bind_physicsserver_cone_twist_joint_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  cone_twist_joint_set_param(self,  RID joint,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &joint._native
    args[1] = &param
    args[2] = &value
    api_core.godot_method_bind_ptrcall(bind_physicsserver_cone_twist_joint_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
  def  free_rid(self,  RID rid):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rid._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_free_rid,self.godot_owner,args,NULL)
    hello('hallo2')
  def  generic_6dof_joint_get_flag(self,  RID joint,  int axis,  int flag):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[3]

    args[0] = &joint._native
    args[1] = &axis
    args[2] = &flag
    api_core.godot_method_bind_ptrcall(bind_physicsserver_generic_6dof_joint_get_flag,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  generic_6dof_joint_get_param(self,  RID joint,  int axis,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[3]

    args[0] = &joint._native
    args[1] = &axis
    args[2] = &param
    api_core.godot_method_bind_ptrcall(bind_physicsserver_generic_6dof_joint_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  generic_6dof_joint_set_flag(self,  RID joint,  int axis,  int flag,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &joint._native
    args[1] = &axis
    args[2] = &flag
    args[3] = &enable
    api_core.godot_method_bind_ptrcall(bind_physicsserver_generic_6dof_joint_set_flag,self.godot_owner,args,NULL)
    hello('hallo2')
  def  generic_6dof_joint_set_param(self,  RID joint,  int axis,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &joint._native
    args[1] = &axis
    args[2] = &param
    args[3] = &value
    api_core.godot_method_bind_ptrcall(bind_physicsserver_generic_6dof_joint_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_process_info(self,  int process_info):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &process_info
    api_core.godot_method_bind_ptrcall(bind_physicsserver_get_process_info,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  hinge_joint_get_flag(self,  RID joint,  int flag):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &joint._native
    args[1] = &flag
    api_core.godot_method_bind_ptrcall(bind_physicsserver_hinge_joint_get_flag,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  hinge_joint_get_param(self,  RID joint,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &joint._native
    args[1] = &param
    api_core.godot_method_bind_ptrcall(bind_physicsserver_hinge_joint_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  hinge_joint_set_flag(self,  RID joint,  int flag,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &joint._native
    args[1] = &flag
    args[2] = &enabled
    api_core.godot_method_bind_ptrcall(bind_physicsserver_hinge_joint_set_flag,self.godot_owner,args,NULL)
    hello('hallo2')
  def  hinge_joint_set_param(self,  RID joint,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &joint._native
    args[1] = &param
    args[2] = &value
    api_core.godot_method_bind_ptrcall(bind_physicsserver_hinge_joint_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
  def  joint_create_cone_twist(self,  RID body_A,  Transform local_ref_A,  RID body_B,  Transform local_ref_B):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[4]

    args[0] = &body_A._native
    args[1] = &local_ref_A._native
    args[2] = &body_B._native
    args[3] = &local_ref_B._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_create_cone_twist,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  joint_create_generic_6dof(self,  RID body_A,  Transform local_ref_A,  RID body_B,  Transform local_ref_B):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[4]

    args[0] = &body_A._native
    args[1] = &local_ref_A._native
    args[2] = &body_B._native
    args[3] = &local_ref_B._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_create_generic_6dof,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  joint_create_hinge(self,  RID body_A,  Transform hinge_A,  RID body_B,  Transform hinge_B):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[4]

    args[0] = &body_A._native
    args[1] = &hinge_A._native
    args[2] = &body_B._native
    args[3] = &hinge_B._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_create_hinge,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  joint_create_pin(self,  RID body_A,  Vector3 local_A,  RID body_B,  Vector3 local_B):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[4]

    args[0] = &body_A._native
    args[1] = &local_A._native
    args[2] = &body_B._native
    args[3] = &local_B._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_create_pin,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  joint_create_slider(self,  RID body_A,  Transform local_ref_A,  RID body_B,  Transform local_ref_B):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[4]

    args[0] = &body_A._native
    args[1] = &local_ref_A._native
    args[2] = &body_B._native
    args[3] = &local_ref_B._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_create_slider,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  joint_get_solver_priority(self,  RID joint):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &joint._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_get_solver_priority,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  joint_get_type(self,  RID joint):
    cdef godot_object *_owner = self.godot_owner

    cdef JointType* ret = NULL;

    cdef void *args[1]

    args[0] = &joint._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_get_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  joint_set_solver_priority(self,  RID joint,  int priority):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &joint._native
    args[1] = &priority
    api_core.godot_method_bind_ptrcall(bind_physicsserver_joint_set_solver_priority,self.godot_owner,args,NULL)
    hello('hallo2')
  def  pin_joint_get_local_a(self,  RID joint):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &joint._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_pin_joint_get_local_a,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  pin_joint_get_local_b(self,  RID joint):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &joint._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_pin_joint_get_local_b,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  pin_joint_get_param(self,  RID joint,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &joint._native
    args[1] = &param
    api_core.godot_method_bind_ptrcall(bind_physicsserver_pin_joint_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  pin_joint_set_local_a(self,  RID joint,  Vector3 local_A):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &joint._native
    args[1] = &local_A._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_pin_joint_set_local_a,self.godot_owner,args,NULL)
    hello('hallo2')
  def  pin_joint_set_local_b(self,  RID joint,  Vector3 local_B):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &joint._native
    args[1] = &local_B._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_pin_joint_set_local_b,self.godot_owner,args,NULL)
    hello('hallo2')
  def  pin_joint_set_param(self,  RID joint,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &joint._native
    args[1] = &param
    args[2] = &value
    api_core.godot_method_bind_ptrcall(bind_physicsserver_pin_joint_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_active(self,  bool active):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &active
    api_core.godot_method_bind_ptrcall(bind_physicsserver_set_active,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_create(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_physicsserver_shape_create,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  shape_get_data(self,  RID shape):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &shape._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_shape_get_data,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  shape_get_type(self,  RID shape):
    cdef godot_object *_owner = self.godot_owner

    cdef ShapeType* ret = NULL;

    cdef void *args[1]

    args[0] = &shape._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_shape_get_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  shape_set_data(self,  RID shape,  Variant data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &shape._native
    args[1] = &data._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_shape_set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  slider_joint_get_param(self,  RID joint,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &joint._native
    args[1] = &param
    api_core.godot_method_bind_ptrcall(bind_physicsserver_slider_joint_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  slider_joint_set_param(self,  RID joint,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &joint._native
    args[1] = &param
    args[2] = &value
    api_core.godot_method_bind_ptrcall(bind_physicsserver_slider_joint_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
  def  space_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsserver_space_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  space_get_direct_state(self,  RID space):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &space._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_space_get_direct_state,self.godot_owner,args,&ret)
    hello('hallo2')
  def  space_get_param(self,  RID space,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &space._native
    args[1] = &param
    api_core.godot_method_bind_ptrcall(bind_physicsserver_space_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  space_is_active(self,  RID space):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &space._native
    api_core.godot_method_bind_ptrcall(bind_physicsserver_space_is_active,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  space_set_active(self,  RID space,  bool active):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &space._native
    args[1] = &active
    api_core.godot_method_bind_ptrcall(bind_physicsserver_space_set_active,self.godot_owner,args,NULL)
    hello('hallo2')
  def  space_set_param(self,  RID space,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &space._native
    args[1] = &param
    args[2] = &value
    api_core.godot_method_bind_ptrcall(bind_physicsserver_space_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
