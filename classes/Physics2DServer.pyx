from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class Physics2DServer(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Physics2DServer")())
##################################Generated Methods#########################################
  def  area_add_shape(self, areashapetransformdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_add_shape,self.godot_owner,[NULL,],NULL)
  def  area_attach_canvas_instance_id(self, areaid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_attach_canvas_instance_id,self.godot_owner,[NULL,],NULL)
  def  area_attach_object_instance_id(self, areaid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_attach_object_instance_id,self.godot_owner,[NULL,],NULL)
  def  area_clear_shapes(self, area):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_clear_shapes,self.godot_owner,[NULL,],NULL)
  def  area_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_create,self.godot_owner,[NULL,],&ret)
  def  area_get_canvas_instance_id(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_canvas_instance_id,self.godot_owner,[NULL,],&ret)
  def  area_get_object_instance_id(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_object_instance_id,self.godot_owner,[NULL,],&ret)
  def  area_get_param(self, areaparam):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_param,self.godot_owner,[NULL,],&ret)
  def  area_get_shape(self, areashape_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_shape,self.godot_owner,[NULL,],&ret)
  def  area_get_shape_count(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_shape_count,self.godot_owner,[NULL,],&ret)
  def  area_get_shape_transform(self, areashape_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_shape_transform,self.godot_owner,[NULL,],&ret)
  def  area_get_space(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_space,self.godot_owner,[NULL,],&ret)
  def  area_get_space_override_mode(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef Physics2DServer::AreaSpaceOverrideMode ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_space_override_mode,self.godot_owner,[NULL,],&ret)
  def  area_get_transform(self, area):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_get_transform,self.godot_owner,[NULL,],&ret)
  def  area_remove_shape(self, areashape_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_remove_shape,self.godot_owner,[NULL,],NULL)
  def  area_set_area_monitor_callback(self, areareceivermethod):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_area_monitor_callback,self.godot_owner,[NULL,],NULL)
  def  area_set_collision_layer(self, arealayer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_collision_layer,self.godot_owner,[NULL,],NULL)
  def  area_set_collision_mask(self, areamask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  area_set_monitor_callback(self, areareceivermethod):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_monitor_callback,self.godot_owner,[NULL,],NULL)
  def  area_set_monitorable(self, areamonitorable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_monitorable,self.godot_owner,[NULL,],NULL)
  def  area_set_param(self, areaparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_param,self.godot_owner,[NULL,],NULL)
  def  area_set_shape(self, areashape_idxshape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_shape,self.godot_owner,[NULL,],NULL)
  def  area_set_shape_disabled(self, areashape_idxdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_shape_disabled,self.godot_owner,[NULL,],NULL)
  def  area_set_shape_transform(self, areashape_idxtransform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_shape_transform,self.godot_owner,[NULL,],NULL)
  def  area_set_space(self, areaspace):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_space,self.godot_owner,[NULL,],NULL)
  def  area_set_space_override_mode(self, areamode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_space_override_mode,self.godot_owner,[NULL,],NULL)
  def  area_set_transform(self, areatransform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_area_set_transform,self.godot_owner,[NULL,],NULL)
  def  body_add_central_force(self, bodyforce):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_add_central_force,self.godot_owner,[NULL,],NULL)
  def  body_add_collision_exception(self, bodyexcepted_body):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_add_collision_exception,self.godot_owner,[NULL,],NULL)
  def  body_add_force(self, bodyoffsetforce):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_add_force,self.godot_owner,[NULL,],NULL)
  def  body_add_shape(self, bodyshapetransformdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_add_shape,self.godot_owner,[NULL,],NULL)
  def  body_add_torque(self, bodytorque):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_add_torque,self.godot_owner,[NULL,],NULL)
  def  body_apply_central_impulse(self, bodyimpulse):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_apply_central_impulse,self.godot_owner,[NULL,],NULL)
  def  body_apply_impulse(self, bodypositionimpulse):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_apply_impulse,self.godot_owner,[NULL,],NULL)
  def  body_apply_torque_impulse(self, bodyimpulse):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_apply_torque_impulse,self.godot_owner,[NULL,],NULL)
  def  body_attach_canvas_instance_id(self, bodyid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_attach_canvas_instance_id,self.godot_owner,[NULL,],NULL)
  def  body_attach_object_instance_id(self, bodyid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_attach_object_instance_id,self.godot_owner,[NULL,],NULL)
  def  body_clear_shapes(self, body):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_clear_shapes,self.godot_owner,[NULL,],NULL)
  def  body_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_create,self.godot_owner,[NULL,],&ret)
  def  body_get_canvas_instance_id(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_canvas_instance_id,self.godot_owner,[NULL,],&ret)
  def  body_get_collision_layer(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_collision_layer,self.godot_owner,[NULL,],&ret)
  def  body_get_collision_mask(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_collision_mask,self.godot_owner,[NULL,],&ret)
  def  body_get_continuous_collision_detection_mode(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef Physics2DServer::CCDMode ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_continuous_collision_detection_mode,self.godot_owner,[NULL,],&ret)
  def  body_get_direct_state(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef Physics2DDirectBodyState ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_direct_state,self.godot_owner,[NULL,],&ret)
  def  body_get_max_contacts_reported(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_max_contacts_reported,self.godot_owner,[NULL,],&ret)
  def  body_get_mode(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef Physics2DServer::BodyMode ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_mode,self.godot_owner,[NULL,],&ret)
  def  body_get_object_instance_id(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_object_instance_id,self.godot_owner,[NULL,],&ret)
  def  body_get_param(self, bodyparam):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_param,self.godot_owner,[NULL,],&ret)
  def  body_get_shape(self, bodyshape_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_shape,self.godot_owner,[NULL,],&ret)
  def  body_get_shape_count(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_shape_count,self.godot_owner,[NULL,],&ret)
  def  body_get_shape_metadata(self, bodyshape_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_shape_metadata,self.godot_owner,[NULL,],&ret)
  def  body_get_shape_transform(self, bodyshape_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_shape_transform,self.godot_owner,[NULL,],&ret)
  def  body_get_space(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_space,self.godot_owner,[NULL,],&ret)
  def  body_get_state(self, bodystate):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_get_state,self.godot_owner,[NULL,],&ret)
  def  body_is_omitting_force_integration(self, body):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_is_omitting_force_integration,self.godot_owner,[NULL,],&ret)
  def  body_remove_collision_exception(self, bodyexcepted_body):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_remove_collision_exception,self.godot_owner,[NULL,],NULL)
  def  body_remove_shape(self, bodyshape_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_remove_shape,self.godot_owner,[NULL,],NULL)
  def  body_set_axis_velocity(self, bodyaxis_velocity):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_axis_velocity,self.godot_owner,[NULL,],NULL)
  def  body_set_collision_layer(self, bodylayer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_collision_layer,self.godot_owner,[NULL,],NULL)
  def  body_set_collision_mask(self, bodymask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  body_set_continuous_collision_detection_mode(self, bodymode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_continuous_collision_detection_mode,self.godot_owner,[NULL,],NULL)
  def  body_set_force_integration_callback(self, bodyreceivermethoduserdata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_force_integration_callback,self.godot_owner,[NULL,],NULL)
  def  body_set_max_contacts_reported(self, bodyamount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_max_contacts_reported,self.godot_owner,[NULL,],NULL)
  def  body_set_mode(self, bodymode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_mode,self.godot_owner,[NULL,],NULL)
  def  body_set_omit_force_integration(self, bodyenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_omit_force_integration,self.godot_owner,[NULL,],NULL)
  def  body_set_param(self, bodyparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_param,self.godot_owner,[NULL,],NULL)
  def  body_set_shape(self, bodyshape_idxshape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_shape,self.godot_owner,[NULL,],NULL)
  def  body_set_shape_as_one_way_collision(self, bodyshape_idxenablemargin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_shape_as_one_way_collision,self.godot_owner,[NULL,],NULL)
  def  body_set_shape_disabled(self, bodyshape_idxdisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_shape_disabled,self.godot_owner,[NULL,],NULL)
  def  body_set_shape_metadata(self, bodyshape_idxmetadata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_shape_metadata,self.godot_owner,[NULL,],NULL)
  def  body_set_shape_transform(self, bodyshape_idxtransform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_shape_transform,self.godot_owner,[NULL,],NULL)
  def  body_set_space(self, bodyspace):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_space,self.godot_owner,[NULL,],NULL)
  def  body_set_state(self, bodystatevalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_set_state,self.godot_owner,[NULL,],NULL)
  def  body_test_motion(self, bodyfrom_, motioninfinite_inertiamarginresult):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_body_test_motion,self.godot_owner,[NULL,],&ret)
  def  capsule_shape_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_capsule_shape_create,self.godot_owner,[NULL,],&ret)
  def  circle_shape_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_circle_shape_create,self.godot_owner,[NULL,],&ret)
  def  concave_polygon_shape_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_concave_polygon_shape_create,self.godot_owner,[NULL,],&ret)
  def  convex_polygon_shape_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_convex_polygon_shape_create,self.godot_owner,[NULL,],&ret)
  def  damped_spring_joint_create(self, anchor_aanchor_bbody_abody_b):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_damped_spring_joint_create,self.godot_owner,[NULL,],&ret)
  def  damped_string_joint_get_param(self, jointparam):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_damped_string_joint_get_param,self.godot_owner,[NULL,],&ret)
  def  damped_string_joint_set_param(self, jointparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_damped_string_joint_set_param,self.godot_owner,[NULL,],NULL)
  def  free_rid(self, rid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_free_rid,self.godot_owner,[NULL,],NULL)
  def  get_process_info(self, process_info):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_get_process_info,self.godot_owner,[NULL,],&ret)
  def  groove_joint_create(self, groove1_agroove2_aanchor_bbody_abody_b):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_groove_joint_create,self.godot_owner,[NULL,],&ret)
  def  joint_get_param(self, jointparam):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_joint_get_param,self.godot_owner,[NULL,],&ret)
  def  joint_get_type(self, joint):
    cdef godot_object *_owner = self.godot_owner
    cdef Physics2DServer::JointType ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_joint_get_type,self.godot_owner,[NULL,],&ret)
  def  joint_set_param(self, jointparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_joint_set_param,self.godot_owner,[NULL,],NULL)
  def  line_shape_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_line_shape_create,self.godot_owner,[NULL,],&ret)
  def  pin_joint_create(self, anchorbody_abody_b):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_pin_joint_create,self.godot_owner,[NULL,],&ret)
  def  ray_shape_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_ray_shape_create,self.godot_owner,[NULL,],&ret)
  def  rectangle_shape_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_rectangle_shape_create,self.godot_owner,[NULL,],&ret)
  def  segment_shape_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_segment_shape_create,self.godot_owner,[NULL,],&ret)
  def  set_active(self, active):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_set_active,self.godot_owner,[NULL,],NULL)
  def  shape_get_data(self, shape):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_shape_get_data,self.godot_owner,[NULL,],&ret)
  def  shape_get_type(self, shape):
    cdef godot_object *_owner = self.godot_owner
    cdef Physics2DServer::ShapeType ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_shape_get_type,self.godot_owner,[NULL,],&ret)
  def  shape_set_data(self, shapedata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_shape_set_data,self.godot_owner,[NULL,],NULL)
  def  space_create(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_space_create,self.godot_owner,[NULL,],&ret)
  def  space_get_direct_state(self, space):
    cdef godot_object *_owner = self.godot_owner
    cdef Physics2DDirectSpaceState ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_space_get_direct_state,self.godot_owner,[NULL,],&ret)
  def  space_get_param(self, spaceparam):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_space_get_param,self.godot_owner,[NULL,],&ret)
  def  space_is_active(self, space):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_space_is_active,self.godot_owner,[NULL,],&ret)
  def  space_set_active(self, spaceactive):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_space_set_active,self.godot_owner,[NULL,],NULL)
  def  space_set_param(self, spaceparamvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dserver_space_set_param,self.godot_owner,[NULL,],NULL)
