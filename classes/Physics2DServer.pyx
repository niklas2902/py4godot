
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
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Physics2DTestMotionResult
cimport classes.Object 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physics2dserver_area_add_shape
cdef godot_method_bind *bind_physics2dserver_area_attach_canvas_instance_id
cdef godot_method_bind *bind_physics2dserver_area_attach_object_instance_id
cdef godot_method_bind *bind_physics2dserver_area_clear_shapes
cdef godot_method_bind *bind_physics2dserver_area_create
cdef godot_method_bind *bind_physics2dserver_area_get_canvas_instance_id
cdef godot_method_bind *bind_physics2dserver_area_get_object_instance_id
cdef godot_method_bind *bind_physics2dserver_area_get_param
cdef godot_method_bind *bind_physics2dserver_area_get_shape
cdef godot_method_bind *bind_physics2dserver_area_get_shape_count
cdef godot_method_bind *bind_physics2dserver_area_get_shape_transform
cdef godot_method_bind *bind_physics2dserver_area_get_space
cdef godot_method_bind *bind_physics2dserver_area_get_space_override_mode
cdef godot_method_bind *bind_physics2dserver_area_get_transform
cdef godot_method_bind *bind_physics2dserver_area_remove_shape
cdef godot_method_bind *bind_physics2dserver_area_set_area_monitor_callback
cdef godot_method_bind *bind_physics2dserver_area_set_collision_layer
cdef godot_method_bind *bind_physics2dserver_area_set_collision_mask
cdef godot_method_bind *bind_physics2dserver_area_set_monitor_callback
cdef godot_method_bind *bind_physics2dserver_area_set_monitorable
cdef godot_method_bind *bind_physics2dserver_area_set_param
cdef godot_method_bind *bind_physics2dserver_area_set_shape
cdef godot_method_bind *bind_physics2dserver_area_set_shape_disabled
cdef godot_method_bind *bind_physics2dserver_area_set_shape_transform
cdef godot_method_bind *bind_physics2dserver_area_set_space
cdef godot_method_bind *bind_physics2dserver_area_set_space_override_mode
cdef godot_method_bind *bind_physics2dserver_area_set_transform
cdef godot_method_bind *bind_physics2dserver_body_add_central_force
cdef godot_method_bind *bind_physics2dserver_body_add_collision_exception
cdef godot_method_bind *bind_physics2dserver_body_add_force
cdef godot_method_bind *bind_physics2dserver_body_add_shape
cdef godot_method_bind *bind_physics2dserver_body_add_torque
cdef godot_method_bind *bind_physics2dserver_body_apply_central_impulse
cdef godot_method_bind *bind_physics2dserver_body_apply_impulse
cdef godot_method_bind *bind_physics2dserver_body_apply_torque_impulse
cdef godot_method_bind *bind_physics2dserver_body_attach_canvas_instance_id
cdef godot_method_bind *bind_physics2dserver_body_attach_object_instance_id
cdef godot_method_bind *bind_physics2dserver_body_clear_shapes
cdef godot_method_bind *bind_physics2dserver_body_create
cdef godot_method_bind *bind_physics2dserver_body_get_canvas_instance_id
cdef godot_method_bind *bind_physics2dserver_body_get_collision_layer
cdef godot_method_bind *bind_physics2dserver_body_get_collision_mask
cdef godot_method_bind *bind_physics2dserver_body_get_continuous_collision_detection_mode
cdef godot_method_bind *bind_physics2dserver_body_get_direct_state
cdef godot_method_bind *bind_physics2dserver_body_get_max_contacts_reported
cdef godot_method_bind *bind_physics2dserver_body_get_mode
cdef godot_method_bind *bind_physics2dserver_body_get_object_instance_id
cdef godot_method_bind *bind_physics2dserver_body_get_param
cdef godot_method_bind *bind_physics2dserver_body_get_shape
cdef godot_method_bind *bind_physics2dserver_body_get_shape_count
cdef godot_method_bind *bind_physics2dserver_body_get_shape_metadata
cdef godot_method_bind *bind_physics2dserver_body_get_shape_transform
cdef godot_method_bind *bind_physics2dserver_body_get_space
cdef godot_method_bind *bind_physics2dserver_body_get_state
cdef godot_method_bind *bind_physics2dserver_body_is_omitting_force_integration
cdef godot_method_bind *bind_physics2dserver_body_remove_collision_exception
cdef godot_method_bind *bind_physics2dserver_body_remove_shape
cdef godot_method_bind *bind_physics2dserver_body_set_axis_velocity
cdef godot_method_bind *bind_physics2dserver_body_set_collision_layer
cdef godot_method_bind *bind_physics2dserver_body_set_collision_mask
cdef godot_method_bind *bind_physics2dserver_body_set_continuous_collision_detection_mode
cdef godot_method_bind *bind_physics2dserver_body_set_force_integration_callback
cdef godot_method_bind *bind_physics2dserver_body_set_max_contacts_reported
cdef godot_method_bind *bind_physics2dserver_body_set_mode
cdef godot_method_bind *bind_physics2dserver_body_set_omit_force_integration
cdef godot_method_bind *bind_physics2dserver_body_set_param
cdef godot_method_bind *bind_physics2dserver_body_set_shape
cdef godot_method_bind *bind_physics2dserver_body_set_shape_as_one_way_collision
cdef godot_method_bind *bind_physics2dserver_body_set_shape_disabled
cdef godot_method_bind *bind_physics2dserver_body_set_shape_metadata
cdef godot_method_bind *bind_physics2dserver_body_set_shape_transform
cdef godot_method_bind *bind_physics2dserver_body_set_space
cdef godot_method_bind *bind_physics2dserver_body_set_state
cdef godot_method_bind *bind_physics2dserver_body_test_motion
cdef godot_method_bind *bind_physics2dserver_capsule_shape_create
cdef godot_method_bind *bind_physics2dserver_circle_shape_create
cdef godot_method_bind *bind_physics2dserver_concave_polygon_shape_create
cdef godot_method_bind *bind_physics2dserver_convex_polygon_shape_create
cdef godot_method_bind *bind_physics2dserver_damped_spring_joint_create
cdef godot_method_bind *bind_physics2dserver_damped_string_joint_get_param
cdef godot_method_bind *bind_physics2dserver_damped_string_joint_set_param
cdef godot_method_bind *bind_physics2dserver_free_rid
cdef godot_method_bind *bind_physics2dserver_get_process_info
cdef godot_method_bind *bind_physics2dserver_groove_joint_create
cdef godot_method_bind *bind_physics2dserver_joint_get_param
cdef godot_method_bind *bind_physics2dserver_joint_get_type
cdef godot_method_bind *bind_physics2dserver_joint_set_param
cdef godot_method_bind *bind_physics2dserver_line_shape_create
cdef godot_method_bind *bind_physics2dserver_pin_joint_create
cdef godot_method_bind *bind_physics2dserver_ray_shape_create
cdef godot_method_bind *bind_physics2dserver_rectangle_shape_create
cdef godot_method_bind *bind_physics2dserver_segment_shape_create
cdef godot_method_bind *bind_physics2dserver_set_active
cdef godot_method_bind *bind_physics2dserver_shape_get_data
cdef godot_method_bind *bind_physics2dserver_shape_get_type
cdef godot_method_bind *bind_physics2dserver_shape_set_data
cdef godot_method_bind *bind_physics2dserver_space_create
cdef godot_method_bind *bind_physics2dserver_space_get_direct_state
cdef godot_method_bind *bind_physics2dserver_space_get_param
cdef godot_method_bind *bind_physics2dserver_space_is_active
cdef godot_method_bind *bind_physics2dserver_space_set_active
cdef godot_method_bind *bind_physics2dserver_space_set_param
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physics2dserver_area_add_shape = api_core.godot_method_bind_get_method('Physics2DServer', 'area_add_shape')
  bind_physics2dserver_area_attach_canvas_instance_id = api_core.godot_method_bind_get_method('Physics2DServer', 'area_attach_canvas_instance_id')
  bind_physics2dserver_area_attach_object_instance_id = api_core.godot_method_bind_get_method('Physics2DServer', 'area_attach_object_instance_id')
  bind_physics2dserver_area_clear_shapes = api_core.godot_method_bind_get_method('Physics2DServer', 'area_clear_shapes')
  bind_physics2dserver_area_create = api_core.godot_method_bind_get_method('Physics2DServer', 'area_create')
  bind_physics2dserver_area_get_canvas_instance_id = api_core.godot_method_bind_get_method('Physics2DServer', 'area_get_canvas_instance_id')
  bind_physics2dserver_area_get_object_instance_id = api_core.godot_method_bind_get_method('Physics2DServer', 'area_get_object_instance_id')
  bind_physics2dserver_area_get_param = api_core.godot_method_bind_get_method('Physics2DServer', 'area_get_param')
  bind_physics2dserver_area_get_shape = api_core.godot_method_bind_get_method('Physics2DServer', 'area_get_shape')
  bind_physics2dserver_area_get_shape_count = api_core.godot_method_bind_get_method('Physics2DServer', 'area_get_shape_count')
  bind_physics2dserver_area_get_shape_transform = api_core.godot_method_bind_get_method('Physics2DServer', 'area_get_shape_transform')
  bind_physics2dserver_area_get_space = api_core.godot_method_bind_get_method('Physics2DServer', 'area_get_space')
  bind_physics2dserver_area_get_space_override_mode = api_core.godot_method_bind_get_method('Physics2DServer', 'area_get_space_override_mode')
  bind_physics2dserver_area_get_transform = api_core.godot_method_bind_get_method('Physics2DServer', 'area_get_transform')
  bind_physics2dserver_area_remove_shape = api_core.godot_method_bind_get_method('Physics2DServer', 'area_remove_shape')
  bind_physics2dserver_area_set_area_monitor_callback = api_core.godot_method_bind_get_method('Physics2DServer', 'area_set_area_monitor_callback')
  bind_physics2dserver_area_set_collision_layer = api_core.godot_method_bind_get_method('Physics2DServer', 'area_set_collision_layer')
  bind_physics2dserver_area_set_collision_mask = api_core.godot_method_bind_get_method('Physics2DServer', 'area_set_collision_mask')
  bind_physics2dserver_area_set_monitor_callback = api_core.godot_method_bind_get_method('Physics2DServer', 'area_set_monitor_callback')
  bind_physics2dserver_area_set_monitorable = api_core.godot_method_bind_get_method('Physics2DServer', 'area_set_monitorable')
  bind_physics2dserver_area_set_param = api_core.godot_method_bind_get_method('Physics2DServer', 'area_set_param')
  bind_physics2dserver_area_set_shape = api_core.godot_method_bind_get_method('Physics2DServer', 'area_set_shape')
  bind_physics2dserver_area_set_shape_disabled = api_core.godot_method_bind_get_method('Physics2DServer', 'area_set_shape_disabled')
  bind_physics2dserver_area_set_shape_transform = api_core.godot_method_bind_get_method('Physics2DServer', 'area_set_shape_transform')
  bind_physics2dserver_area_set_space = api_core.godot_method_bind_get_method('Physics2DServer', 'area_set_space')
  bind_physics2dserver_area_set_space_override_mode = api_core.godot_method_bind_get_method('Physics2DServer', 'area_set_space_override_mode')
  bind_physics2dserver_area_set_transform = api_core.godot_method_bind_get_method('Physics2DServer', 'area_set_transform')
  bind_physics2dserver_body_add_central_force = api_core.godot_method_bind_get_method('Physics2DServer', 'body_add_central_force')
  bind_physics2dserver_body_add_collision_exception = api_core.godot_method_bind_get_method('Physics2DServer', 'body_add_collision_exception')
  bind_physics2dserver_body_add_force = api_core.godot_method_bind_get_method('Physics2DServer', 'body_add_force')
  bind_physics2dserver_body_add_shape = api_core.godot_method_bind_get_method('Physics2DServer', 'body_add_shape')
  bind_physics2dserver_body_add_torque = api_core.godot_method_bind_get_method('Physics2DServer', 'body_add_torque')
  bind_physics2dserver_body_apply_central_impulse = api_core.godot_method_bind_get_method('Physics2DServer', 'body_apply_central_impulse')
  bind_physics2dserver_body_apply_impulse = api_core.godot_method_bind_get_method('Physics2DServer', 'body_apply_impulse')
  bind_physics2dserver_body_apply_torque_impulse = api_core.godot_method_bind_get_method('Physics2DServer', 'body_apply_torque_impulse')
  bind_physics2dserver_body_attach_canvas_instance_id = api_core.godot_method_bind_get_method('Physics2DServer', 'body_attach_canvas_instance_id')
  bind_physics2dserver_body_attach_object_instance_id = api_core.godot_method_bind_get_method('Physics2DServer', 'body_attach_object_instance_id')
  bind_physics2dserver_body_clear_shapes = api_core.godot_method_bind_get_method('Physics2DServer', 'body_clear_shapes')
  bind_physics2dserver_body_create = api_core.godot_method_bind_get_method('Physics2DServer', 'body_create')
  bind_physics2dserver_body_get_canvas_instance_id = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_canvas_instance_id')
  bind_physics2dserver_body_get_collision_layer = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_collision_layer')
  bind_physics2dserver_body_get_collision_mask = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_collision_mask')
  bind_physics2dserver_body_get_continuous_collision_detection_mode = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_continuous_collision_detection_mode')
  bind_physics2dserver_body_get_direct_state = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_direct_state')
  bind_physics2dserver_body_get_max_contacts_reported = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_max_contacts_reported')
  bind_physics2dserver_body_get_mode = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_mode')
  bind_physics2dserver_body_get_object_instance_id = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_object_instance_id')
  bind_physics2dserver_body_get_param = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_param')
  bind_physics2dserver_body_get_shape = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_shape')
  bind_physics2dserver_body_get_shape_count = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_shape_count')
  bind_physics2dserver_body_get_shape_metadata = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_shape_metadata')
  bind_physics2dserver_body_get_shape_transform = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_shape_transform')
  bind_physics2dserver_body_get_space = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_space')
  bind_physics2dserver_body_get_state = api_core.godot_method_bind_get_method('Physics2DServer', 'body_get_state')
  bind_physics2dserver_body_is_omitting_force_integration = api_core.godot_method_bind_get_method('Physics2DServer', 'body_is_omitting_force_integration')
  bind_physics2dserver_body_remove_collision_exception = api_core.godot_method_bind_get_method('Physics2DServer', 'body_remove_collision_exception')
  bind_physics2dserver_body_remove_shape = api_core.godot_method_bind_get_method('Physics2DServer', 'body_remove_shape')
  bind_physics2dserver_body_set_axis_velocity = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_axis_velocity')
  bind_physics2dserver_body_set_collision_layer = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_collision_layer')
  bind_physics2dserver_body_set_collision_mask = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_collision_mask')
  bind_physics2dserver_body_set_continuous_collision_detection_mode = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_continuous_collision_detection_mode')
  bind_physics2dserver_body_set_force_integration_callback = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_force_integration_callback')
  bind_physics2dserver_body_set_max_contacts_reported = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_max_contacts_reported')
  bind_physics2dserver_body_set_mode = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_mode')
  bind_physics2dserver_body_set_omit_force_integration = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_omit_force_integration')
  bind_physics2dserver_body_set_param = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_param')
  bind_physics2dserver_body_set_shape = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_shape')
  bind_physics2dserver_body_set_shape_as_one_way_collision = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_shape_as_one_way_collision')
  bind_physics2dserver_body_set_shape_disabled = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_shape_disabled')
  bind_physics2dserver_body_set_shape_metadata = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_shape_metadata')
  bind_physics2dserver_body_set_shape_transform = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_shape_transform')
  bind_physics2dserver_body_set_space = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_space')
  bind_physics2dserver_body_set_state = api_core.godot_method_bind_get_method('Physics2DServer', 'body_set_state')
  bind_physics2dserver_body_test_motion = api_core.godot_method_bind_get_method('Physics2DServer', 'body_test_motion')
  bind_physics2dserver_capsule_shape_create = api_core.godot_method_bind_get_method('Physics2DServer', 'capsule_shape_create')
  bind_physics2dserver_circle_shape_create = api_core.godot_method_bind_get_method('Physics2DServer', 'circle_shape_create')
  bind_physics2dserver_concave_polygon_shape_create = api_core.godot_method_bind_get_method('Physics2DServer', 'concave_polygon_shape_create')
  bind_physics2dserver_convex_polygon_shape_create = api_core.godot_method_bind_get_method('Physics2DServer', 'convex_polygon_shape_create')
  bind_physics2dserver_damped_spring_joint_create = api_core.godot_method_bind_get_method('Physics2DServer', 'damped_spring_joint_create')
  bind_physics2dserver_damped_string_joint_get_param = api_core.godot_method_bind_get_method('Physics2DServer', 'damped_string_joint_get_param')
  bind_physics2dserver_damped_string_joint_set_param = api_core.godot_method_bind_get_method('Physics2DServer', 'damped_string_joint_set_param')
  bind_physics2dserver_free_rid = api_core.godot_method_bind_get_method('Physics2DServer', 'free_rid')
  bind_physics2dserver_get_process_info = api_core.godot_method_bind_get_method('Physics2DServer', 'get_process_info')
  bind_physics2dserver_groove_joint_create = api_core.godot_method_bind_get_method('Physics2DServer', 'groove_joint_create')
  bind_physics2dserver_joint_get_param = api_core.godot_method_bind_get_method('Physics2DServer', 'joint_get_param')
  bind_physics2dserver_joint_get_type = api_core.godot_method_bind_get_method('Physics2DServer', 'joint_get_type')
  bind_physics2dserver_joint_set_param = api_core.godot_method_bind_get_method('Physics2DServer', 'joint_set_param')
  bind_physics2dserver_line_shape_create = api_core.godot_method_bind_get_method('Physics2DServer', 'line_shape_create')
  bind_physics2dserver_pin_joint_create = api_core.godot_method_bind_get_method('Physics2DServer', 'pin_joint_create')
  bind_physics2dserver_ray_shape_create = api_core.godot_method_bind_get_method('Physics2DServer', 'ray_shape_create')
  bind_physics2dserver_rectangle_shape_create = api_core.godot_method_bind_get_method('Physics2DServer', 'rectangle_shape_create')
  bind_physics2dserver_segment_shape_create = api_core.godot_method_bind_get_method('Physics2DServer', 'segment_shape_create')
  bind_physics2dserver_set_active = api_core.godot_method_bind_get_method('Physics2DServer', 'set_active')
  bind_physics2dserver_shape_get_data = api_core.godot_method_bind_get_method('Physics2DServer', 'shape_get_data')
  bind_physics2dserver_shape_get_type = api_core.godot_method_bind_get_method('Physics2DServer', 'shape_get_type')
  bind_physics2dserver_shape_set_data = api_core.godot_method_bind_get_method('Physics2DServer', 'shape_set_data')
  bind_physics2dserver_space_create = api_core.godot_method_bind_get_method('Physics2DServer', 'space_create')
  bind_physics2dserver_space_get_direct_state = api_core.godot_method_bind_get_method('Physics2DServer', 'space_get_direct_state')
  bind_physics2dserver_space_get_param = api_core.godot_method_bind_get_method('Physics2DServer', 'space_get_param')
  bind_physics2dserver_space_is_active = api_core.godot_method_bind_get_method('Physics2DServer', 'space_is_active')
  bind_physics2dserver_space_set_active = api_core.godot_method_bind_get_method('Physics2DServer', 'space_set_active')
  bind_physics2dserver_space_set_param = api_core.godot_method_bind_get_method('Physics2DServer', 'space_set_param')

############################Generated class###################################
cdef class Physics2DServer(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Physics2DServer")())
##################################Generated Methods#########################################
  def  area_add_shape(self,  RID area,  RID shape,  Transform2D transform,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &area._native
    args[1] = &shape._native
    args[2] = &transform._native
    args[3] = &disabled
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_add_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_attach_canvas_instance_id(self,  RID area,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_attach_canvas_instance_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_attach_object_instance_id(self,  RID area,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_attach_object_instance_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_clear_shapes(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_clear_shapes,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  area_get_canvas_instance_id(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_canvas_instance_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  area_get_object_instance_id(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_object_instance_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  area_get_param(self,  RID area,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &param
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  area_get_shape(self,  RID area,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_shape,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  area_get_shape_count(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_shape_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  area_get_shape_transform(self,  RID area,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_shape_transform,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  area_get_space(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_space,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  area_get_space_override_mode(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef Physics2DServer_AreaSpaceOverrideMode* ret = NULL;

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_space_override_mode,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  area_get_transform(self,  RID area):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    cdef void *args[1]

    args[0] = &area._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_transform,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  area_remove_shape(self,  RID area,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_remove_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_area_monitor_callback(self,  RID area,  classes.Object.Object receiver,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &area._native
    args[1] = receiver.godot_owner
    args[2] = &method._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_area_monitor_callback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_collision_layer(self,  RID area,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &layer
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_collision_layer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_collision_mask(self,  RID area,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &mask
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_monitor_callback(self,  RID area,  classes.Object.Object receiver,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &area._native
    args[1] = receiver.godot_owner
    args[2] = &method._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_monitor_callback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_monitorable(self,  RID area,  bool monitorable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &monitorable
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_monitorable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_param(self,  RID area,  int param,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &area._native
    args[1] = &param
    args[2] = &value._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_shape(self,  RID area,  int shape_idx,  RID shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &area._native
    args[1] = &shape_idx
    args[2] = &shape._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_shape_disabled(self,  RID area,  int shape_idx,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &area._native
    args[1] = &shape_idx
    args[2] = &disabled
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_shape_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_shape_transform(self,  RID area,  int shape_idx,  Transform2D transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &area._native
    args[1] = &shape_idx
    args[2] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_shape_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_space(self,  RID area,  RID space):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &space._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_space,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_space_override_mode(self,  RID area,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &mode
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_space_override_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  area_set_transform(self,  RID area,  Transform2D transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &area._native
    args[1] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_add_central_force(self,  RID body,  Vector2 force):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &force._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_add_central_force,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_add_collision_exception(self,  RID body,  RID excepted_body):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &excepted_body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_add_collision_exception,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_add_force(self,  RID body,  Vector2 offset,  Vector2 force):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &offset._native
    args[2] = &force._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_add_force,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_add_shape(self,  RID body,  RID shape,  Transform2D transform,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &body._native
    args[1] = &shape._native
    args[2] = &transform._native
    args[3] = &disabled
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_add_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_add_torque(self,  RID body,  float torque):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &torque
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_add_torque,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_apply_central_impulse(self,  RID body,  Vector2 impulse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &impulse._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_apply_central_impulse,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_apply_impulse(self,  RID body,  Vector2 position,  Vector2 impulse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &position._native
    args[2] = &impulse._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_apply_impulse,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_apply_torque_impulse(self,  RID body,  float impulse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &impulse
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_apply_torque_impulse,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_attach_canvas_instance_id(self,  RID body,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_attach_canvas_instance_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_attach_object_instance_id(self,  RID body,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_attach_object_instance_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_clear_shapes(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_clear_shapes,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  body_get_canvas_instance_id(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_canvas_instance_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_collision_layer(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_collision_layer,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_collision_mask(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_collision_mask,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_continuous_collision_detection_mode(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef Physics2DServer_CCDMode* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_continuous_collision_detection_mode,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_direct_state(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_direct_state,self.godot_owner,args,&ret)
    hello('hallo2')
  def  body_get_max_contacts_reported(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_max_contacts_reported,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_mode(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef Physics2DServer_BodyMode* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_mode,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_object_instance_id(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_object_instance_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_param(self,  RID body,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &param
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_shape(self,  RID body,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_shape,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  body_get_shape_count(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_shape_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_get_shape_metadata(self,  RID body,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_shape_metadata,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  body_get_shape_transform(self,  RID body,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_shape_transform,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  body_get_space(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_space,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  body_get_state(self,  RID body,  int state):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &state
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_state,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  body_is_omitting_force_integration(self,  RID body):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_is_omitting_force_integration,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  body_remove_collision_exception(self,  RID body,  RID excepted_body):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &excepted_body._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_remove_collision_exception,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_remove_shape(self,  RID body,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_remove_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_axis_velocity(self,  RID body,  Vector2 axis_velocity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &axis_velocity._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_axis_velocity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_collision_layer(self,  RID body,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &layer
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_collision_layer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_collision_mask(self,  RID body,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &mask
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_continuous_collision_detection_mode(self,  RID body,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &mode
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_continuous_collision_detection_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_force_integration_callback(self,  RID body,  classes.Object.Object receiver,  String method,  Variant userdata):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &body._native
    args[1] = receiver.godot_owner
    args[2] = &method._native
    args[3] = &userdata._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_force_integration_callback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_max_contacts_reported(self,  RID body,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &amount
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_max_contacts_reported,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_mode(self,  RID body,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &mode
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_omit_force_integration(self,  RID body,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_omit_force_integration,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_param(self,  RID body,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &param
    args[2] = &value
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_shape(self,  RID body,  int shape_idx,  RID shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &shape_idx
    args[2] = &shape._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_shape_as_one_way_collision(self,  RID body,  int shape_idx,  bool enable,  float margin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &body._native
    args[1] = &shape_idx
    args[2] = &enable
    args[3] = &margin
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_shape_as_one_way_collision,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_shape_disabled(self,  RID body,  int shape_idx,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &shape_idx
    args[2] = &disabled
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_shape_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_shape_metadata(self,  RID body,  int shape_idx,  Variant metadata):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &shape_idx
    args[2] = &metadata._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_shape_metadata,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_shape_transform(self,  RID body,  int shape_idx,  Transform2D transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &shape_idx
    args[2] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_shape_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_space(self,  RID body,  RID space):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &body._native
    args[1] = &space._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_space,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_set_state(self,  RID body,  int state,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &body._native
    args[1] = &state
    args[2] = &value._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_state,self.godot_owner,args,NULL)
    hello('hallo2')
  def  body_test_motion(self,  RID body,  Transform2D from_,  Vector2 motion,  bool infinite_inertia,  float margin,  classes.Physics2DTestMotionResult.Physics2DTestMotionResult result):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[6]

    args[0] = &body._native
    args[1] = &from_._native
    args[2] = &motion._native
    args[3] = &infinite_inertia
    args[4] = &margin
    args[5] = result.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_test_motion,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  capsule_shape_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dserver_capsule_shape_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  circle_shape_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dserver_circle_shape_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  concave_polygon_shape_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dserver_concave_polygon_shape_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  convex_polygon_shape_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dserver_convex_polygon_shape_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  damped_spring_joint_create(self,  Vector2 anchor_a,  Vector2 anchor_b,  RID body_a,  RID body_b):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[4]

    args[0] = &anchor_a._native
    args[1] = &anchor_b._native
    args[2] = &body_a._native
    args[3] = &body_b._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_damped_spring_joint_create,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  damped_string_joint_get_param(self,  RID joint,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &joint._native
    args[1] = &param
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_damped_string_joint_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  damped_string_joint_set_param(self,  RID joint,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &joint._native
    args[1] = &param
    args[2] = &value
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_damped_string_joint_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
  def  free_rid(self,  RID rid):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rid._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_free_rid,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_process_info(self,  int process_info):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &process_info
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_get_process_info,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  groove_joint_create(self,  Vector2 groove1_a,  Vector2 groove2_a,  Vector2 anchor_b,  RID body_a,  RID body_b):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[5]

    args[0] = &groove1_a._native
    args[1] = &groove2_a._native
    args[2] = &anchor_b._native
    args[3] = &body_a._native
    args[4] = &body_b._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_groove_joint_create,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  joint_get_param(self,  RID joint,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &joint._native
    args[1] = &param
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_joint_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  joint_get_type(self,  RID joint):
    cdef godot_object *_owner = self.godot_owner

    cdef Physics2DServer_JointType* ret = NULL;

    cdef void *args[1]

    args[0] = &joint._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_joint_get_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  joint_set_param(self,  RID joint,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &joint._native
    args[1] = &param
    args[2] = &value
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_joint_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
  def  line_shape_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dserver_line_shape_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  pin_joint_create(self,  Vector2 anchor,  RID body_a,  RID body_b):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[3]

    args[0] = &anchor._native
    args[1] = &body_a._native
    args[2] = &body_b._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_pin_joint_create,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  ray_shape_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dserver_ray_shape_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  rectangle_shape_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dserver_rectangle_shape_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  segment_shape_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dserver_segment_shape_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  set_active(self,  bool active):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &active
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_set_active,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_get_data(self,  RID shape):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &shape._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_shape_get_data,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  shape_get_type(self,  RID shape):
    cdef godot_object *_owner = self.godot_owner

    cdef Physics2DServer_ShapeType* ret = NULL;

    cdef void *args[1]

    args[0] = &shape._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_shape_get_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  shape_set_data(self,  RID shape,  Variant data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &shape._native
    args[1] = &data._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_shape_set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  space_create(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dserver_space_create,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  space_get_direct_state(self,  RID space):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &space._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_space_get_direct_state,self.godot_owner,args,&ret)
    hello('hallo2')
  def  space_get_param(self,  RID space,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &space._native
    args[1] = &param
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_space_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  space_is_active(self,  RID space):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &space._native
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_space_is_active,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  space_set_active(self,  RID space,  bool active):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &space._native
    args[1] = &active
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_space_set_active,self.godot_owner,args,NULL)
    hello('hallo2')
  def  space_set_param(self,  RID space,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &space._native
    args[1] = &param
    args[2] = &value
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_space_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
