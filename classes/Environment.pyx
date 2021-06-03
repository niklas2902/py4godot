
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
cimport classes.Texture
cimport classes.Sky
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_environment_get_adjustment_brightness
cdef godot_method_bind *bind_environment_get_adjustment_color_correction
cdef godot_method_bind *bind_environment_get_adjustment_contrast
cdef godot_method_bind *bind_environment_get_adjustment_saturation
cdef godot_method_bind *bind_environment_get_ambient_light_color
cdef godot_method_bind *bind_environment_get_ambient_light_energy
cdef godot_method_bind *bind_environment_get_ambient_light_sky_contribution
cdef godot_method_bind *bind_environment_get_background
cdef godot_method_bind *bind_environment_get_bg_color
cdef godot_method_bind *bind_environment_get_bg_energy
cdef godot_method_bind *bind_environment_get_camera_feed_id
cdef godot_method_bind *bind_environment_get_canvas_max_layer
cdef godot_method_bind *bind_environment_get_dof_blur_far_amount
cdef godot_method_bind *bind_environment_get_dof_blur_far_distance
cdef godot_method_bind *bind_environment_get_dof_blur_far_quality
cdef godot_method_bind *bind_environment_get_dof_blur_far_transition
cdef godot_method_bind *bind_environment_get_dof_blur_near_amount
cdef godot_method_bind *bind_environment_get_dof_blur_near_distance
cdef godot_method_bind *bind_environment_get_dof_blur_near_quality
cdef godot_method_bind *bind_environment_get_dof_blur_near_transition
cdef godot_method_bind *bind_environment_get_fog_color
cdef godot_method_bind *bind_environment_get_fog_depth_begin
cdef godot_method_bind *bind_environment_get_fog_depth_curve
cdef godot_method_bind *bind_environment_get_fog_depth_end
cdef godot_method_bind *bind_environment_get_fog_height_curve
cdef godot_method_bind *bind_environment_get_fog_height_max
cdef godot_method_bind *bind_environment_get_fog_height_min
cdef godot_method_bind *bind_environment_get_fog_sun_amount
cdef godot_method_bind *bind_environment_get_fog_sun_color
cdef godot_method_bind *bind_environment_get_fog_transmit_curve
cdef godot_method_bind *bind_environment_get_glow_blend_mode
cdef godot_method_bind *bind_environment_get_glow_bloom
cdef godot_method_bind *bind_environment_get_glow_hdr_bleed_scale
cdef godot_method_bind *bind_environment_get_glow_hdr_bleed_threshold
cdef godot_method_bind *bind_environment_get_glow_hdr_luminance_cap
cdef godot_method_bind *bind_environment_get_glow_intensity
cdef godot_method_bind *bind_environment_get_glow_strength
cdef godot_method_bind *bind_environment_get_sky
cdef godot_method_bind *bind_environment_get_sky_custom_fov
cdef godot_method_bind *bind_environment_get_sky_orientation
cdef godot_method_bind *bind_environment_get_sky_rotation
cdef godot_method_bind *bind_environment_get_sky_rotation_degrees
cdef godot_method_bind *bind_environment_get_ssao_ao_channel_affect
cdef godot_method_bind *bind_environment_get_ssao_bias
cdef godot_method_bind *bind_environment_get_ssao_blur
cdef godot_method_bind *bind_environment_get_ssao_color
cdef godot_method_bind *bind_environment_get_ssao_direct_light_affect
cdef godot_method_bind *bind_environment_get_ssao_edge_sharpness
cdef godot_method_bind *bind_environment_get_ssao_intensity
cdef godot_method_bind *bind_environment_get_ssao_intensity2
cdef godot_method_bind *bind_environment_get_ssao_quality
cdef godot_method_bind *bind_environment_get_ssao_radius
cdef godot_method_bind *bind_environment_get_ssao_radius2
cdef godot_method_bind *bind_environment_get_ssr_depth_tolerance
cdef godot_method_bind *bind_environment_get_ssr_fade_in
cdef godot_method_bind *bind_environment_get_ssr_fade_out
cdef godot_method_bind *bind_environment_get_ssr_max_steps
cdef godot_method_bind *bind_environment_get_tonemap_auto_exposure
cdef godot_method_bind *bind_environment_get_tonemap_auto_exposure_grey
cdef godot_method_bind *bind_environment_get_tonemap_auto_exposure_max
cdef godot_method_bind *bind_environment_get_tonemap_auto_exposure_min
cdef godot_method_bind *bind_environment_get_tonemap_auto_exposure_speed
cdef godot_method_bind *bind_environment_get_tonemap_exposure
cdef godot_method_bind *bind_environment_get_tonemap_white
cdef godot_method_bind *bind_environment_get_tonemapper
cdef godot_method_bind *bind_environment_is_adjustment_enabled
cdef godot_method_bind *bind_environment_is_dof_blur_far_enabled
cdef godot_method_bind *bind_environment_is_dof_blur_near_enabled
cdef godot_method_bind *bind_environment_is_fog_depth_enabled
cdef godot_method_bind *bind_environment_is_fog_enabled
cdef godot_method_bind *bind_environment_is_fog_height_enabled
cdef godot_method_bind *bind_environment_is_fog_transmit_enabled
cdef godot_method_bind *bind_environment_is_glow_bicubic_upscale_enabled
cdef godot_method_bind *bind_environment_is_glow_enabled
cdef godot_method_bind *bind_environment_is_glow_level_enabled
cdef godot_method_bind *bind_environment_is_ssao_enabled
cdef godot_method_bind *bind_environment_is_ssr_enabled
cdef godot_method_bind *bind_environment_is_ssr_rough
cdef godot_method_bind *bind_environment_set_adjustment_brightness
cdef godot_method_bind *bind_environment_set_adjustment_color_correction
cdef godot_method_bind *bind_environment_set_adjustment_contrast
cdef godot_method_bind *bind_environment_set_adjustment_enable
cdef godot_method_bind *bind_environment_set_adjustment_saturation
cdef godot_method_bind *bind_environment_set_ambient_light_color
cdef godot_method_bind *bind_environment_set_ambient_light_energy
cdef godot_method_bind *bind_environment_set_ambient_light_sky_contribution
cdef godot_method_bind *bind_environment_set_background
cdef godot_method_bind *bind_environment_set_bg_color
cdef godot_method_bind *bind_environment_set_bg_energy
cdef godot_method_bind *bind_environment_set_camera_feed_id
cdef godot_method_bind *bind_environment_set_canvas_max_layer
cdef godot_method_bind *bind_environment_set_dof_blur_far_amount
cdef godot_method_bind *bind_environment_set_dof_blur_far_distance
cdef godot_method_bind *bind_environment_set_dof_blur_far_enabled
cdef godot_method_bind *bind_environment_set_dof_blur_far_quality
cdef godot_method_bind *bind_environment_set_dof_blur_far_transition
cdef godot_method_bind *bind_environment_set_dof_blur_near_amount
cdef godot_method_bind *bind_environment_set_dof_blur_near_distance
cdef godot_method_bind *bind_environment_set_dof_blur_near_enabled
cdef godot_method_bind *bind_environment_set_dof_blur_near_quality
cdef godot_method_bind *bind_environment_set_dof_blur_near_transition
cdef godot_method_bind *bind_environment_set_fog_color
cdef godot_method_bind *bind_environment_set_fog_depth_begin
cdef godot_method_bind *bind_environment_set_fog_depth_curve
cdef godot_method_bind *bind_environment_set_fog_depth_enabled
cdef godot_method_bind *bind_environment_set_fog_depth_end
cdef godot_method_bind *bind_environment_set_fog_enabled
cdef godot_method_bind *bind_environment_set_fog_height_curve
cdef godot_method_bind *bind_environment_set_fog_height_enabled
cdef godot_method_bind *bind_environment_set_fog_height_max
cdef godot_method_bind *bind_environment_set_fog_height_min
cdef godot_method_bind *bind_environment_set_fog_sun_amount
cdef godot_method_bind *bind_environment_set_fog_sun_color
cdef godot_method_bind *bind_environment_set_fog_transmit_curve
cdef godot_method_bind *bind_environment_set_fog_transmit_enabled
cdef godot_method_bind *bind_environment_set_glow_bicubic_upscale
cdef godot_method_bind *bind_environment_set_glow_blend_mode
cdef godot_method_bind *bind_environment_set_glow_bloom
cdef godot_method_bind *bind_environment_set_glow_enabled
cdef godot_method_bind *bind_environment_set_glow_hdr_bleed_scale
cdef godot_method_bind *bind_environment_set_glow_hdr_bleed_threshold
cdef godot_method_bind *bind_environment_set_glow_hdr_luminance_cap
cdef godot_method_bind *bind_environment_set_glow_intensity
cdef godot_method_bind *bind_environment_set_glow_level
cdef godot_method_bind *bind_environment_set_glow_strength
cdef godot_method_bind *bind_environment_set_sky
cdef godot_method_bind *bind_environment_set_sky_custom_fov
cdef godot_method_bind *bind_environment_set_sky_orientation
cdef godot_method_bind *bind_environment_set_sky_rotation
cdef godot_method_bind *bind_environment_set_sky_rotation_degrees
cdef godot_method_bind *bind_environment_set_ssao_ao_channel_affect
cdef godot_method_bind *bind_environment_set_ssao_bias
cdef godot_method_bind *bind_environment_set_ssao_blur
cdef godot_method_bind *bind_environment_set_ssao_color
cdef godot_method_bind *bind_environment_set_ssao_direct_light_affect
cdef godot_method_bind *bind_environment_set_ssao_edge_sharpness
cdef godot_method_bind *bind_environment_set_ssao_enabled
cdef godot_method_bind *bind_environment_set_ssao_intensity
cdef godot_method_bind *bind_environment_set_ssao_intensity2
cdef godot_method_bind *bind_environment_set_ssao_quality
cdef godot_method_bind *bind_environment_set_ssao_radius
cdef godot_method_bind *bind_environment_set_ssao_radius2
cdef godot_method_bind *bind_environment_set_ssr_depth_tolerance
cdef godot_method_bind *bind_environment_set_ssr_enabled
cdef godot_method_bind *bind_environment_set_ssr_fade_in
cdef godot_method_bind *bind_environment_set_ssr_fade_out
cdef godot_method_bind *bind_environment_set_ssr_max_steps
cdef godot_method_bind *bind_environment_set_ssr_rough
cdef godot_method_bind *bind_environment_set_tonemap_auto_exposure
cdef godot_method_bind *bind_environment_set_tonemap_auto_exposure_grey
cdef godot_method_bind *bind_environment_set_tonemap_auto_exposure_max
cdef godot_method_bind *bind_environment_set_tonemap_auto_exposure_min
cdef godot_method_bind *bind_environment_set_tonemap_auto_exposure_speed
cdef godot_method_bind *bind_environment_set_tonemap_exposure
cdef godot_method_bind *bind_environment_set_tonemap_white
cdef godot_method_bind *bind_environment_set_tonemapper
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_environment_get_adjustment_brightness = api_core.godot_method_bind_get_method('Environment', 'get_adjustment_brightness')
  bind_environment_get_adjustment_color_correction = api_core.godot_method_bind_get_method('Environment', 'get_adjustment_color_correction')
  bind_environment_get_adjustment_contrast = api_core.godot_method_bind_get_method('Environment', 'get_adjustment_contrast')
  bind_environment_get_adjustment_saturation = api_core.godot_method_bind_get_method('Environment', 'get_adjustment_saturation')
  bind_environment_get_ambient_light_color = api_core.godot_method_bind_get_method('Environment', 'get_ambient_light_color')
  bind_environment_get_ambient_light_energy = api_core.godot_method_bind_get_method('Environment', 'get_ambient_light_energy')
  bind_environment_get_ambient_light_sky_contribution = api_core.godot_method_bind_get_method('Environment', 'get_ambient_light_sky_contribution')
  bind_environment_get_background = api_core.godot_method_bind_get_method('Environment', 'get_background')
  bind_environment_get_bg_color = api_core.godot_method_bind_get_method('Environment', 'get_bg_color')
  bind_environment_get_bg_energy = api_core.godot_method_bind_get_method('Environment', 'get_bg_energy')
  bind_environment_get_camera_feed_id = api_core.godot_method_bind_get_method('Environment', 'get_camera_feed_id')
  bind_environment_get_canvas_max_layer = api_core.godot_method_bind_get_method('Environment', 'get_canvas_max_layer')
  bind_environment_get_dof_blur_far_amount = api_core.godot_method_bind_get_method('Environment', 'get_dof_blur_far_amount')
  bind_environment_get_dof_blur_far_distance = api_core.godot_method_bind_get_method('Environment', 'get_dof_blur_far_distance')
  bind_environment_get_dof_blur_far_quality = api_core.godot_method_bind_get_method('Environment', 'get_dof_blur_far_quality')
  bind_environment_get_dof_blur_far_transition = api_core.godot_method_bind_get_method('Environment', 'get_dof_blur_far_transition')
  bind_environment_get_dof_blur_near_amount = api_core.godot_method_bind_get_method('Environment', 'get_dof_blur_near_amount')
  bind_environment_get_dof_blur_near_distance = api_core.godot_method_bind_get_method('Environment', 'get_dof_blur_near_distance')
  bind_environment_get_dof_blur_near_quality = api_core.godot_method_bind_get_method('Environment', 'get_dof_blur_near_quality')
  bind_environment_get_dof_blur_near_transition = api_core.godot_method_bind_get_method('Environment', 'get_dof_blur_near_transition')
  bind_environment_get_fog_color = api_core.godot_method_bind_get_method('Environment', 'get_fog_color')
  bind_environment_get_fog_depth_begin = api_core.godot_method_bind_get_method('Environment', 'get_fog_depth_begin')
  bind_environment_get_fog_depth_curve = api_core.godot_method_bind_get_method('Environment', 'get_fog_depth_curve')
  bind_environment_get_fog_depth_end = api_core.godot_method_bind_get_method('Environment', 'get_fog_depth_end')
  bind_environment_get_fog_height_curve = api_core.godot_method_bind_get_method('Environment', 'get_fog_height_curve')
  bind_environment_get_fog_height_max = api_core.godot_method_bind_get_method('Environment', 'get_fog_height_max')
  bind_environment_get_fog_height_min = api_core.godot_method_bind_get_method('Environment', 'get_fog_height_min')
  bind_environment_get_fog_sun_amount = api_core.godot_method_bind_get_method('Environment', 'get_fog_sun_amount')
  bind_environment_get_fog_sun_color = api_core.godot_method_bind_get_method('Environment', 'get_fog_sun_color')
  bind_environment_get_fog_transmit_curve = api_core.godot_method_bind_get_method('Environment', 'get_fog_transmit_curve')
  bind_environment_get_glow_blend_mode = api_core.godot_method_bind_get_method('Environment', 'get_glow_blend_mode')
  bind_environment_get_glow_bloom = api_core.godot_method_bind_get_method('Environment', 'get_glow_bloom')
  bind_environment_get_glow_hdr_bleed_scale = api_core.godot_method_bind_get_method('Environment', 'get_glow_hdr_bleed_scale')
  bind_environment_get_glow_hdr_bleed_threshold = api_core.godot_method_bind_get_method('Environment', 'get_glow_hdr_bleed_threshold')
  bind_environment_get_glow_hdr_luminance_cap = api_core.godot_method_bind_get_method('Environment', 'get_glow_hdr_luminance_cap')
  bind_environment_get_glow_intensity = api_core.godot_method_bind_get_method('Environment', 'get_glow_intensity')
  bind_environment_get_glow_strength = api_core.godot_method_bind_get_method('Environment', 'get_glow_strength')
  bind_environment_get_sky = api_core.godot_method_bind_get_method('Environment', 'get_sky')
  bind_environment_get_sky_custom_fov = api_core.godot_method_bind_get_method('Environment', 'get_sky_custom_fov')
  bind_environment_get_sky_orientation = api_core.godot_method_bind_get_method('Environment', 'get_sky_orientation')
  bind_environment_get_sky_rotation = api_core.godot_method_bind_get_method('Environment', 'get_sky_rotation')
  bind_environment_get_sky_rotation_degrees = api_core.godot_method_bind_get_method('Environment', 'get_sky_rotation_degrees')
  bind_environment_get_ssao_ao_channel_affect = api_core.godot_method_bind_get_method('Environment', 'get_ssao_ao_channel_affect')
  bind_environment_get_ssao_bias = api_core.godot_method_bind_get_method('Environment', 'get_ssao_bias')
  bind_environment_get_ssao_blur = api_core.godot_method_bind_get_method('Environment', 'get_ssao_blur')
  bind_environment_get_ssao_color = api_core.godot_method_bind_get_method('Environment', 'get_ssao_color')
  bind_environment_get_ssao_direct_light_affect = api_core.godot_method_bind_get_method('Environment', 'get_ssao_direct_light_affect')
  bind_environment_get_ssao_edge_sharpness = api_core.godot_method_bind_get_method('Environment', 'get_ssao_edge_sharpness')
  bind_environment_get_ssao_intensity = api_core.godot_method_bind_get_method('Environment', 'get_ssao_intensity')
  bind_environment_get_ssao_intensity2 = api_core.godot_method_bind_get_method('Environment', 'get_ssao_intensity2')
  bind_environment_get_ssao_quality = api_core.godot_method_bind_get_method('Environment', 'get_ssao_quality')
  bind_environment_get_ssao_radius = api_core.godot_method_bind_get_method('Environment', 'get_ssao_radius')
  bind_environment_get_ssao_radius2 = api_core.godot_method_bind_get_method('Environment', 'get_ssao_radius2')
  bind_environment_get_ssr_depth_tolerance = api_core.godot_method_bind_get_method('Environment', 'get_ssr_depth_tolerance')
  bind_environment_get_ssr_fade_in = api_core.godot_method_bind_get_method('Environment', 'get_ssr_fade_in')
  bind_environment_get_ssr_fade_out = api_core.godot_method_bind_get_method('Environment', 'get_ssr_fade_out')
  bind_environment_get_ssr_max_steps = api_core.godot_method_bind_get_method('Environment', 'get_ssr_max_steps')
  bind_environment_get_tonemap_auto_exposure = api_core.godot_method_bind_get_method('Environment', 'get_tonemap_auto_exposure')
  bind_environment_get_tonemap_auto_exposure_grey = api_core.godot_method_bind_get_method('Environment', 'get_tonemap_auto_exposure_grey')
  bind_environment_get_tonemap_auto_exposure_max = api_core.godot_method_bind_get_method('Environment', 'get_tonemap_auto_exposure_max')
  bind_environment_get_tonemap_auto_exposure_min = api_core.godot_method_bind_get_method('Environment', 'get_tonemap_auto_exposure_min')
  bind_environment_get_tonemap_auto_exposure_speed = api_core.godot_method_bind_get_method('Environment', 'get_tonemap_auto_exposure_speed')
  bind_environment_get_tonemap_exposure = api_core.godot_method_bind_get_method('Environment', 'get_tonemap_exposure')
  bind_environment_get_tonemap_white = api_core.godot_method_bind_get_method('Environment', 'get_tonemap_white')
  bind_environment_get_tonemapper = api_core.godot_method_bind_get_method('Environment', 'get_tonemapper')
  bind_environment_is_adjustment_enabled = api_core.godot_method_bind_get_method('Environment', 'is_adjustment_enabled')
  bind_environment_is_dof_blur_far_enabled = api_core.godot_method_bind_get_method('Environment', 'is_dof_blur_far_enabled')
  bind_environment_is_dof_blur_near_enabled = api_core.godot_method_bind_get_method('Environment', 'is_dof_blur_near_enabled')
  bind_environment_is_fog_depth_enabled = api_core.godot_method_bind_get_method('Environment', 'is_fog_depth_enabled')
  bind_environment_is_fog_enabled = api_core.godot_method_bind_get_method('Environment', 'is_fog_enabled')
  bind_environment_is_fog_height_enabled = api_core.godot_method_bind_get_method('Environment', 'is_fog_height_enabled')
  bind_environment_is_fog_transmit_enabled = api_core.godot_method_bind_get_method('Environment', 'is_fog_transmit_enabled')
  bind_environment_is_glow_bicubic_upscale_enabled = api_core.godot_method_bind_get_method('Environment', 'is_glow_bicubic_upscale_enabled')
  bind_environment_is_glow_enabled = api_core.godot_method_bind_get_method('Environment', 'is_glow_enabled')
  bind_environment_is_glow_level_enabled = api_core.godot_method_bind_get_method('Environment', 'is_glow_level_enabled')
  bind_environment_is_ssao_enabled = api_core.godot_method_bind_get_method('Environment', 'is_ssao_enabled')
  bind_environment_is_ssr_enabled = api_core.godot_method_bind_get_method('Environment', 'is_ssr_enabled')
  bind_environment_is_ssr_rough = api_core.godot_method_bind_get_method('Environment', 'is_ssr_rough')
  bind_environment_set_adjustment_brightness = api_core.godot_method_bind_get_method('Environment', 'set_adjustment_brightness')
  bind_environment_set_adjustment_color_correction = api_core.godot_method_bind_get_method('Environment', 'set_adjustment_color_correction')
  bind_environment_set_adjustment_contrast = api_core.godot_method_bind_get_method('Environment', 'set_adjustment_contrast')
  bind_environment_set_adjustment_enable = api_core.godot_method_bind_get_method('Environment', 'set_adjustment_enable')
  bind_environment_set_adjustment_saturation = api_core.godot_method_bind_get_method('Environment', 'set_adjustment_saturation')
  bind_environment_set_ambient_light_color = api_core.godot_method_bind_get_method('Environment', 'set_ambient_light_color')
  bind_environment_set_ambient_light_energy = api_core.godot_method_bind_get_method('Environment', 'set_ambient_light_energy')
  bind_environment_set_ambient_light_sky_contribution = api_core.godot_method_bind_get_method('Environment', 'set_ambient_light_sky_contribution')
  bind_environment_set_background = api_core.godot_method_bind_get_method('Environment', 'set_background')
  bind_environment_set_bg_color = api_core.godot_method_bind_get_method('Environment', 'set_bg_color')
  bind_environment_set_bg_energy = api_core.godot_method_bind_get_method('Environment', 'set_bg_energy')
  bind_environment_set_camera_feed_id = api_core.godot_method_bind_get_method('Environment', 'set_camera_feed_id')
  bind_environment_set_canvas_max_layer = api_core.godot_method_bind_get_method('Environment', 'set_canvas_max_layer')
  bind_environment_set_dof_blur_far_amount = api_core.godot_method_bind_get_method('Environment', 'set_dof_blur_far_amount')
  bind_environment_set_dof_blur_far_distance = api_core.godot_method_bind_get_method('Environment', 'set_dof_blur_far_distance')
  bind_environment_set_dof_blur_far_enabled = api_core.godot_method_bind_get_method('Environment', 'set_dof_blur_far_enabled')
  bind_environment_set_dof_blur_far_quality = api_core.godot_method_bind_get_method('Environment', 'set_dof_blur_far_quality')
  bind_environment_set_dof_blur_far_transition = api_core.godot_method_bind_get_method('Environment', 'set_dof_blur_far_transition')
  bind_environment_set_dof_blur_near_amount = api_core.godot_method_bind_get_method('Environment', 'set_dof_blur_near_amount')
  bind_environment_set_dof_blur_near_distance = api_core.godot_method_bind_get_method('Environment', 'set_dof_blur_near_distance')
  bind_environment_set_dof_blur_near_enabled = api_core.godot_method_bind_get_method('Environment', 'set_dof_blur_near_enabled')
  bind_environment_set_dof_blur_near_quality = api_core.godot_method_bind_get_method('Environment', 'set_dof_blur_near_quality')
  bind_environment_set_dof_blur_near_transition = api_core.godot_method_bind_get_method('Environment', 'set_dof_blur_near_transition')
  bind_environment_set_fog_color = api_core.godot_method_bind_get_method('Environment', 'set_fog_color')
  bind_environment_set_fog_depth_begin = api_core.godot_method_bind_get_method('Environment', 'set_fog_depth_begin')
  bind_environment_set_fog_depth_curve = api_core.godot_method_bind_get_method('Environment', 'set_fog_depth_curve')
  bind_environment_set_fog_depth_enabled = api_core.godot_method_bind_get_method('Environment', 'set_fog_depth_enabled')
  bind_environment_set_fog_depth_end = api_core.godot_method_bind_get_method('Environment', 'set_fog_depth_end')
  bind_environment_set_fog_enabled = api_core.godot_method_bind_get_method('Environment', 'set_fog_enabled')
  bind_environment_set_fog_height_curve = api_core.godot_method_bind_get_method('Environment', 'set_fog_height_curve')
  bind_environment_set_fog_height_enabled = api_core.godot_method_bind_get_method('Environment', 'set_fog_height_enabled')
  bind_environment_set_fog_height_max = api_core.godot_method_bind_get_method('Environment', 'set_fog_height_max')
  bind_environment_set_fog_height_min = api_core.godot_method_bind_get_method('Environment', 'set_fog_height_min')
  bind_environment_set_fog_sun_amount = api_core.godot_method_bind_get_method('Environment', 'set_fog_sun_amount')
  bind_environment_set_fog_sun_color = api_core.godot_method_bind_get_method('Environment', 'set_fog_sun_color')
  bind_environment_set_fog_transmit_curve = api_core.godot_method_bind_get_method('Environment', 'set_fog_transmit_curve')
  bind_environment_set_fog_transmit_enabled = api_core.godot_method_bind_get_method('Environment', 'set_fog_transmit_enabled')
  bind_environment_set_glow_bicubic_upscale = api_core.godot_method_bind_get_method('Environment', 'set_glow_bicubic_upscale')
  bind_environment_set_glow_blend_mode = api_core.godot_method_bind_get_method('Environment', 'set_glow_blend_mode')
  bind_environment_set_glow_bloom = api_core.godot_method_bind_get_method('Environment', 'set_glow_bloom')
  bind_environment_set_glow_enabled = api_core.godot_method_bind_get_method('Environment', 'set_glow_enabled')
  bind_environment_set_glow_hdr_bleed_scale = api_core.godot_method_bind_get_method('Environment', 'set_glow_hdr_bleed_scale')
  bind_environment_set_glow_hdr_bleed_threshold = api_core.godot_method_bind_get_method('Environment', 'set_glow_hdr_bleed_threshold')
  bind_environment_set_glow_hdr_luminance_cap = api_core.godot_method_bind_get_method('Environment', 'set_glow_hdr_luminance_cap')
  bind_environment_set_glow_intensity = api_core.godot_method_bind_get_method('Environment', 'set_glow_intensity')
  bind_environment_set_glow_level = api_core.godot_method_bind_get_method('Environment', 'set_glow_level')
  bind_environment_set_glow_strength = api_core.godot_method_bind_get_method('Environment', 'set_glow_strength')
  bind_environment_set_sky = api_core.godot_method_bind_get_method('Environment', 'set_sky')
  bind_environment_set_sky_custom_fov = api_core.godot_method_bind_get_method('Environment', 'set_sky_custom_fov')
  bind_environment_set_sky_orientation = api_core.godot_method_bind_get_method('Environment', 'set_sky_orientation')
  bind_environment_set_sky_rotation = api_core.godot_method_bind_get_method('Environment', 'set_sky_rotation')
  bind_environment_set_sky_rotation_degrees = api_core.godot_method_bind_get_method('Environment', 'set_sky_rotation_degrees')
  bind_environment_set_ssao_ao_channel_affect = api_core.godot_method_bind_get_method('Environment', 'set_ssao_ao_channel_affect')
  bind_environment_set_ssao_bias = api_core.godot_method_bind_get_method('Environment', 'set_ssao_bias')
  bind_environment_set_ssao_blur = api_core.godot_method_bind_get_method('Environment', 'set_ssao_blur')
  bind_environment_set_ssao_color = api_core.godot_method_bind_get_method('Environment', 'set_ssao_color')
  bind_environment_set_ssao_direct_light_affect = api_core.godot_method_bind_get_method('Environment', 'set_ssao_direct_light_affect')
  bind_environment_set_ssao_edge_sharpness = api_core.godot_method_bind_get_method('Environment', 'set_ssao_edge_sharpness')
  bind_environment_set_ssao_enabled = api_core.godot_method_bind_get_method('Environment', 'set_ssao_enabled')
  bind_environment_set_ssao_intensity = api_core.godot_method_bind_get_method('Environment', 'set_ssao_intensity')
  bind_environment_set_ssao_intensity2 = api_core.godot_method_bind_get_method('Environment', 'set_ssao_intensity2')
  bind_environment_set_ssao_quality = api_core.godot_method_bind_get_method('Environment', 'set_ssao_quality')
  bind_environment_set_ssao_radius = api_core.godot_method_bind_get_method('Environment', 'set_ssao_radius')
  bind_environment_set_ssao_radius2 = api_core.godot_method_bind_get_method('Environment', 'set_ssao_radius2')
  bind_environment_set_ssr_depth_tolerance = api_core.godot_method_bind_get_method('Environment', 'set_ssr_depth_tolerance')
  bind_environment_set_ssr_enabled = api_core.godot_method_bind_get_method('Environment', 'set_ssr_enabled')
  bind_environment_set_ssr_fade_in = api_core.godot_method_bind_get_method('Environment', 'set_ssr_fade_in')
  bind_environment_set_ssr_fade_out = api_core.godot_method_bind_get_method('Environment', 'set_ssr_fade_out')
  bind_environment_set_ssr_max_steps = api_core.godot_method_bind_get_method('Environment', 'set_ssr_max_steps')
  bind_environment_set_ssr_rough = api_core.godot_method_bind_get_method('Environment', 'set_ssr_rough')
  bind_environment_set_tonemap_auto_exposure = api_core.godot_method_bind_get_method('Environment', 'set_tonemap_auto_exposure')
  bind_environment_set_tonemap_auto_exposure_grey = api_core.godot_method_bind_get_method('Environment', 'set_tonemap_auto_exposure_grey')
  bind_environment_set_tonemap_auto_exposure_max = api_core.godot_method_bind_get_method('Environment', 'set_tonemap_auto_exposure_max')
  bind_environment_set_tonemap_auto_exposure_min = api_core.godot_method_bind_get_method('Environment', 'set_tonemap_auto_exposure_min')
  bind_environment_set_tonemap_auto_exposure_speed = api_core.godot_method_bind_get_method('Environment', 'set_tonemap_auto_exposure_speed')
  bind_environment_set_tonemap_exposure = api_core.godot_method_bind_get_method('Environment', 'set_tonemap_exposure')
  bind_environment_set_tonemap_white = api_core.godot_method_bind_get_method('Environment', 'set_tonemap_white')
  bind_environment_set_tonemapper = api_core.godot_method_bind_get_method('Environment', 'set_tonemapper')

############################Generated class###################################
cdef class Environment(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Environment")())
##################################Generated Properties#########################################
  @property
  def adjustment_brightness(self): 
    return self.get_adjustment_brightness()
  @adjustment_brightness.setter 
  def adjustment_brightness(self,value): 
    self.set_adjustment_brightness(value)
  @property
  def adjustment_color_correction(self): 
    return self.get_adjustment_color_correction()
  @adjustment_color_correction.setter 
  def adjustment_color_correction(self,value): 
    self.set_adjustment_color_correction(value)
  @property
  def adjustment_contrast(self): 
    return self.get_adjustment_contrast()
  @adjustment_contrast.setter 
  def adjustment_contrast(self,value): 
    self.set_adjustment_contrast(value)
  @property
  def adjustment_enabled(self): 
    return self.get_adjustment_enabled()
  @adjustment_enabled.setter 
  def adjustment_enabled(self,value): 
    self.set_adjustment_enabled(value)
  @property
  def adjustment_saturation(self): 
    return self.get_adjustment_saturation()
  @adjustment_saturation.setter 
  def adjustment_saturation(self,value): 
    self.set_adjustment_saturation(value)
  @property
  def ambient_light_color(self): 
    return self.get_ambient_light_color()
  @ambient_light_color.setter 
  def ambient_light_color(self,value): 
    self.set_ambient_light_color(value)
  @property
  def ambient_light_energy(self): 
    return self.get_ambient_light_energy()
  @ambient_light_energy.setter 
  def ambient_light_energy(self,value): 
    self.set_ambient_light_energy(value)
  @property
  def ambient_light_sky_contribution(self): 
    return self.get_ambient_light_sky_contribution()
  @ambient_light_sky_contribution.setter 
  def ambient_light_sky_contribution(self,value): 
    self.set_ambient_light_sky_contribution(value)
  @property
  def auto_exposure_enabled(self): 
    return self.get_auto_exposure_enabled()
  @auto_exposure_enabled.setter 
  def auto_exposure_enabled(self,value): 
    self.set_auto_exposure_enabled(value)
  @property
  def auto_exposure_max_luma(self): 
    return self.get_auto_exposure_max_luma()
  @auto_exposure_max_luma.setter 
  def auto_exposure_max_luma(self,value): 
    self.set_auto_exposure_max_luma(value)
  @property
  def auto_exposure_min_luma(self): 
    return self.get_auto_exposure_min_luma()
  @auto_exposure_min_luma.setter 
  def auto_exposure_min_luma(self,value): 
    self.set_auto_exposure_min_luma(value)
  @property
  def auto_exposure_scale(self): 
    return self.get_auto_exposure_scale()
  @auto_exposure_scale.setter 
  def auto_exposure_scale(self,value): 
    self.set_auto_exposure_scale(value)
  @property
  def auto_exposure_speed(self): 
    return self.get_auto_exposure_speed()
  @auto_exposure_speed.setter 
  def auto_exposure_speed(self,value): 
    self.set_auto_exposure_speed(value)
  @property
  def background_camera_feed_id(self): 
    return self.get_background_camera_feed_id()
  @background_camera_feed_id.setter 
  def background_camera_feed_id(self,value): 
    self.set_background_camera_feed_id(value)
  @property
  def background_canvas_max_layer(self): 
    return self.get_background_canvas_max_layer()
  @background_canvas_max_layer.setter 
  def background_canvas_max_layer(self,value): 
    self.set_background_canvas_max_layer(value)
  @property
  def background_color(self): 
    return self.get_background_color()
  @background_color.setter 
  def background_color(self,value): 
    self.set_background_color(value)
  @property
  def background_energy(self): 
    return self.get_background_energy()
  @background_energy.setter 
  def background_energy(self,value): 
    self.set_background_energy(value)
  @property
  def background_mode(self): 
    return self.get_background_mode()
  @background_mode.setter 
  def background_mode(self,value): 
    self.set_background_mode(value)
  @property
  def background_sky(self): 
    return self.get_background_sky()
  @background_sky.setter 
  def background_sky(self,value): 
    self.set_background_sky(value)
  @property
  def background_sky_custom_fov(self): 
    return self.get_background_sky_custom_fov()
  @background_sky_custom_fov.setter 
  def background_sky_custom_fov(self,value): 
    self.set_background_sky_custom_fov(value)
  @property
  def background_sky_orientation(self): 
    return self.get_background_sky_orientation()
  @background_sky_orientation.setter 
  def background_sky_orientation(self,value): 
    self.set_background_sky_orientation(value)
  @property
  def background_sky_rotation(self): 
    return self.get_background_sky_rotation()
  @background_sky_rotation.setter 
  def background_sky_rotation(self,value): 
    self.set_background_sky_rotation(value)
  @property
  def background_sky_rotation_degrees(self): 
    return self.get_background_sky_rotation_degrees()
  @background_sky_rotation_degrees.setter 
  def background_sky_rotation_degrees(self,value): 
    self.set_background_sky_rotation_degrees(value)
  @property
  def dof_blur_far_amount(self): 
    return self.get_dof_blur_far_amount()
  @dof_blur_far_amount.setter 
  def dof_blur_far_amount(self,value): 
    self.set_dof_blur_far_amount(value)
  @property
  def dof_blur_far_distance(self): 
    return self.get_dof_blur_far_distance()
  @dof_blur_far_distance.setter 
  def dof_blur_far_distance(self,value): 
    self.set_dof_blur_far_distance(value)
  @property
  def dof_blur_far_enabled(self): 
    return self.get_dof_blur_far_enabled()
  @dof_blur_far_enabled.setter 
  def dof_blur_far_enabled(self,value): 
    self.set_dof_blur_far_enabled(value)
  @property
  def dof_blur_far_quality(self): 
    return self.get_dof_blur_far_quality()
  @dof_blur_far_quality.setter 
  def dof_blur_far_quality(self,value): 
    self.set_dof_blur_far_quality(value)
  @property
  def dof_blur_far_transition(self): 
    return self.get_dof_blur_far_transition()
  @dof_blur_far_transition.setter 
  def dof_blur_far_transition(self,value): 
    self.set_dof_blur_far_transition(value)
  @property
  def dof_blur_near_amount(self): 
    return self.get_dof_blur_near_amount()
  @dof_blur_near_amount.setter 
  def dof_blur_near_amount(self,value): 
    self.set_dof_blur_near_amount(value)
  @property
  def dof_blur_near_distance(self): 
    return self.get_dof_blur_near_distance()
  @dof_blur_near_distance.setter 
  def dof_blur_near_distance(self,value): 
    self.set_dof_blur_near_distance(value)
  @property
  def dof_blur_near_enabled(self): 
    return self.get_dof_blur_near_enabled()
  @dof_blur_near_enabled.setter 
  def dof_blur_near_enabled(self,value): 
    self.set_dof_blur_near_enabled(value)
  @property
  def dof_blur_near_quality(self): 
    return self.get_dof_blur_near_quality()
  @dof_blur_near_quality.setter 
  def dof_blur_near_quality(self,value): 
    self.set_dof_blur_near_quality(value)
  @property
  def dof_blur_near_transition(self): 
    return self.get_dof_blur_near_transition()
  @dof_blur_near_transition.setter 
  def dof_blur_near_transition(self,value): 
    self.set_dof_blur_near_transition(value)
  @property
  def fog_color(self): 
    return self.get_fog_color()
  @fog_color.setter 
  def fog_color(self,value): 
    self.set_fog_color(value)
  @property
  def fog_depth_begin(self): 
    return self.get_fog_depth_begin()
  @fog_depth_begin.setter 
  def fog_depth_begin(self,value): 
    self.set_fog_depth_begin(value)
  @property
  def fog_depth_curve(self): 
    return self.get_fog_depth_curve()
  @fog_depth_curve.setter 
  def fog_depth_curve(self,value): 
    self.set_fog_depth_curve(value)
  @property
  def fog_depth_enabled(self): 
    return self.get_fog_depth_enabled()
  @fog_depth_enabled.setter 
  def fog_depth_enabled(self,value): 
    self.set_fog_depth_enabled(value)
  @property
  def fog_depth_end(self): 
    return self.get_fog_depth_end()
  @fog_depth_end.setter 
  def fog_depth_end(self,value): 
    self.set_fog_depth_end(value)
  @property
  def fog_enabled(self): 
    return self.get_fog_enabled()
  @fog_enabled.setter 
  def fog_enabled(self,value): 
    self.set_fog_enabled(value)
  @property
  def fog_height_curve(self): 
    return self.get_fog_height_curve()
  @fog_height_curve.setter 
  def fog_height_curve(self,value): 
    self.set_fog_height_curve(value)
  @property
  def fog_height_enabled(self): 
    return self.get_fog_height_enabled()
  @fog_height_enabled.setter 
  def fog_height_enabled(self,value): 
    self.set_fog_height_enabled(value)
  @property
  def fog_height_max(self): 
    return self.get_fog_height_max()
  @fog_height_max.setter 
  def fog_height_max(self,value): 
    self.set_fog_height_max(value)
  @property
  def fog_height_min(self): 
    return self.get_fog_height_min()
  @fog_height_min.setter 
  def fog_height_min(self,value): 
    self.set_fog_height_min(value)
  @property
  def fog_sun_amount(self): 
    return self.get_fog_sun_amount()
  @fog_sun_amount.setter 
  def fog_sun_amount(self,value): 
    self.set_fog_sun_amount(value)
  @property
  def fog_sun_color(self): 
    return self.get_fog_sun_color()
  @fog_sun_color.setter 
  def fog_sun_color(self,value): 
    self.set_fog_sun_color(value)
  @property
  def fog_transmit_curve(self): 
    return self.get_fog_transmit_curve()
  @fog_transmit_curve.setter 
  def fog_transmit_curve(self,value): 
    self.set_fog_transmit_curve(value)
  @property
  def fog_transmit_enabled(self): 
    return self.get_fog_transmit_enabled()
  @fog_transmit_enabled.setter 
  def fog_transmit_enabled(self,value): 
    self.set_fog_transmit_enabled(value)
  @property
  def glow_bicubic_upscale(self): 
    return self.get_glow_bicubic_upscale()
  @glow_bicubic_upscale.setter 
  def glow_bicubic_upscale(self,value): 
    self.set_glow_bicubic_upscale(value)
  @property
  def glow_blend_mode(self): 
    return self.get_glow_blend_mode()
  @glow_blend_mode.setter 
  def glow_blend_mode(self,value): 
    self.set_glow_blend_mode(value)
  @property
  def glow_bloom(self): 
    return self.get_glow_bloom()
  @glow_bloom.setter 
  def glow_bloom(self,value): 
    self.set_glow_bloom(value)
  @property
  def glow_enabled(self): 
    return self.get_glow_enabled()
  @glow_enabled.setter 
  def glow_enabled(self,value): 
    self.set_glow_enabled(value)
  @property
  def glow_hdr_luminance_cap(self): 
    return self.get_glow_hdr_luminance_cap()
  @glow_hdr_luminance_cap.setter 
  def glow_hdr_luminance_cap(self,value): 
    self.set_glow_hdr_luminance_cap(value)
  @property
  def glow_hdr_scale(self): 
    return self.get_glow_hdr_scale()
  @glow_hdr_scale.setter 
  def glow_hdr_scale(self,value): 
    self.set_glow_hdr_scale(value)
  @property
  def glow_hdr_threshold(self): 
    return self.get_glow_hdr_threshold()
  @glow_hdr_threshold.setter 
  def glow_hdr_threshold(self,value): 
    self.set_glow_hdr_threshold(value)
  @property
  def glow_intensity(self): 
    return self.get_glow_intensity()
  @glow_intensity.setter 
  def glow_intensity(self,value): 
    self.set_glow_intensity(value)
  @property
  def glow_levels_1(self): 
    return self.get_glow_levels_1()
  @glow_levels_1.setter 
  def glow_levels_1(self,value): 
    self.set_glow_levels_1(value)
  @property
  def glow_levels_2(self): 
    return self.get_glow_levels_2()
  @glow_levels_2.setter 
  def glow_levels_2(self,value): 
    self.set_glow_levels_2(value)
  @property
  def glow_levels_3(self): 
    return self.get_glow_levels_3()
  @glow_levels_3.setter 
  def glow_levels_3(self,value): 
    self.set_glow_levels_3(value)
  @property
  def glow_levels_4(self): 
    return self.get_glow_levels_4()
  @glow_levels_4.setter 
  def glow_levels_4(self,value): 
    self.set_glow_levels_4(value)
  @property
  def glow_levels_5(self): 
    return self.get_glow_levels_5()
  @glow_levels_5.setter 
  def glow_levels_5(self,value): 
    self.set_glow_levels_5(value)
  @property
  def glow_levels_6(self): 
    return self.get_glow_levels_6()
  @glow_levels_6.setter 
  def glow_levels_6(self,value): 
    self.set_glow_levels_6(value)
  @property
  def glow_levels_7(self): 
    return self.get_glow_levels_7()
  @glow_levels_7.setter 
  def glow_levels_7(self,value): 
    self.set_glow_levels_7(value)
  @property
  def glow_strength(self): 
    return self.get_glow_strength()
  @glow_strength.setter 
  def glow_strength(self,value): 
    self.set_glow_strength(value)
  @property
  def ss_reflections_depth_tolerance(self): 
    return self.get_ss_reflections_depth_tolerance()
  @ss_reflections_depth_tolerance.setter 
  def ss_reflections_depth_tolerance(self,value): 
    self.set_ss_reflections_depth_tolerance(value)
  @property
  def ss_reflections_enabled(self): 
    return self.get_ss_reflections_enabled()
  @ss_reflections_enabled.setter 
  def ss_reflections_enabled(self,value): 
    self.set_ss_reflections_enabled(value)
  @property
  def ss_reflections_fade_in(self): 
    return self.get_ss_reflections_fade_in()
  @ss_reflections_fade_in.setter 
  def ss_reflections_fade_in(self,value): 
    self.set_ss_reflections_fade_in(value)
  @property
  def ss_reflections_fade_out(self): 
    return self.get_ss_reflections_fade_out()
  @ss_reflections_fade_out.setter 
  def ss_reflections_fade_out(self,value): 
    self.set_ss_reflections_fade_out(value)
  @property
  def ss_reflections_max_steps(self): 
    return self.get_ss_reflections_max_steps()
  @ss_reflections_max_steps.setter 
  def ss_reflections_max_steps(self,value): 
    self.set_ss_reflections_max_steps(value)
  @property
  def ss_reflections_roughness(self): 
    return self.get_ss_reflections_roughness()
  @ss_reflections_roughness.setter 
  def ss_reflections_roughness(self,value): 
    self.set_ss_reflections_roughness(value)
  @property
  def ssao_ao_channel_affect(self): 
    return self.get_ssao_ao_channel_affect()
  @ssao_ao_channel_affect.setter 
  def ssao_ao_channel_affect(self,value): 
    self.set_ssao_ao_channel_affect(value)
  @property
  def ssao_bias(self): 
    return self.get_ssao_bias()
  @ssao_bias.setter 
  def ssao_bias(self,value): 
    self.set_ssao_bias(value)
  @property
  def ssao_blur(self): 
    return self.get_ssao_blur()
  @ssao_blur.setter 
  def ssao_blur(self,value): 
    self.set_ssao_blur(value)
  @property
  def ssao_color(self): 
    return self.get_ssao_color()
  @ssao_color.setter 
  def ssao_color(self,value): 
    self.set_ssao_color(value)
  @property
  def ssao_edge_sharpness(self): 
    return self.get_ssao_edge_sharpness()
  @ssao_edge_sharpness.setter 
  def ssao_edge_sharpness(self,value): 
    self.set_ssao_edge_sharpness(value)
  @property
  def ssao_enabled(self): 
    return self.get_ssao_enabled()
  @ssao_enabled.setter 
  def ssao_enabled(self,value): 
    self.set_ssao_enabled(value)
  @property
  def ssao_intensity(self): 
    return self.get_ssao_intensity()
  @ssao_intensity.setter 
  def ssao_intensity(self,value): 
    self.set_ssao_intensity(value)
  @property
  def ssao_intensity2(self): 
    return self.get_ssao_intensity2()
  @ssao_intensity2.setter 
  def ssao_intensity2(self,value): 
    self.set_ssao_intensity2(value)
  @property
  def ssao_light_affect(self): 
    return self.get_ssao_light_affect()
  @ssao_light_affect.setter 
  def ssao_light_affect(self,value): 
    self.set_ssao_light_affect(value)
  @property
  def ssao_quality(self): 
    return self.get_ssao_quality()
  @ssao_quality.setter 
  def ssao_quality(self,value): 
    self.set_ssao_quality(value)
  @property
  def ssao_radius(self): 
    return self.get_ssao_radius()
  @ssao_radius.setter 
  def ssao_radius(self,value): 
    self.set_ssao_radius(value)
  @property
  def ssao_radius2(self): 
    return self.get_ssao_radius2()
  @ssao_radius2.setter 
  def ssao_radius2(self,value): 
    self.set_ssao_radius2(value)
  @property
  def tonemap_exposure(self): 
    return self.get_tonemap_exposure()
  @tonemap_exposure.setter 
  def tonemap_exposure(self,value): 
    self.set_tonemap_exposure(value)
  @property
  def tonemap_mode(self): 
    return self.get_tonemap_mode()
  @tonemap_mode.setter 
  def tonemap_mode(self,value): 
    self.set_tonemap_mode(value)
  @property
  def tonemap_white(self): 
    return self.get_tonemap_white()
  @tonemap_white.setter 
  def tonemap_white(self,value): 
    self.set_tonemap_white(value)

##################################Generated Methods#########################################
  def  get_adjustment_brightness(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_adjustment_brightness,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_adjustment_color_correction(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_adjustment_color_correction,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_adjustment_contrast(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_adjustment_contrast,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_adjustment_saturation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_adjustment_saturation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ambient_light_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ambient_light_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_ambient_light_energy(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ambient_light_energy,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ambient_light_sky_contribution(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ambient_light_sky_contribution,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_background(self):
    cdef godot_object *_owner = self.godot_owner

    cdef BGMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_background,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bg_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_bg_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_bg_energy(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_bg_energy,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_camera_feed_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_camera_feed_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_canvas_max_layer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_canvas_max_layer,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_dof_blur_far_amount(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_dof_blur_far_amount,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_dof_blur_far_distance(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_dof_blur_far_distance,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_dof_blur_far_quality(self):
    cdef godot_object *_owner = self.godot_owner

    cdef DOFBlurQuality* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_dof_blur_far_quality,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_dof_blur_far_transition(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_dof_blur_far_transition,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_dof_blur_near_amount(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_dof_blur_near_amount,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_dof_blur_near_distance(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_dof_blur_near_distance,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_dof_blur_near_quality(self):
    cdef godot_object *_owner = self.godot_owner

    cdef DOFBlurQuality* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_dof_blur_near_quality,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_dof_blur_near_transition(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_dof_blur_near_transition,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fog_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_fog_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_fog_depth_begin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_fog_depth_begin,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fog_depth_curve(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_fog_depth_curve,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fog_depth_end(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_fog_depth_end,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fog_height_curve(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_fog_height_curve,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fog_height_max(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_fog_height_max,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fog_height_min(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_fog_height_min,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fog_sun_amount(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_fog_sun_amount,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fog_sun_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_fog_sun_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_fog_transmit_curve(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_fog_transmit_curve,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_glow_blend_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef GlowBlendMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_glow_blend_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_glow_bloom(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_glow_bloom,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_glow_hdr_bleed_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_glow_hdr_bleed_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_glow_hdr_bleed_threshold(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_glow_hdr_bleed_threshold,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_glow_hdr_luminance_cap(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_glow_hdr_luminance_cap,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_glow_intensity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_glow_intensity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_glow_strength(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_glow_strength,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_sky(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_sky,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_sky_custom_fov(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_sky_custom_fov,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_sky_orientation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_basis* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_sky_orientation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Basis.new_static(dereference(ret))

  def  get_sky_rotation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_sky_rotation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_sky_rotation_degrees(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_sky_rotation_degrees,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_ssao_ao_channel_affect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssao_ao_channel_affect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssao_bias(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssao_bias,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssao_blur(self):
    cdef godot_object *_owner = self.godot_owner

    cdef SSAOBlur* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssao_blur,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssao_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssao_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_ssao_direct_light_affect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssao_direct_light_affect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssao_edge_sharpness(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssao_edge_sharpness,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssao_intensity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssao_intensity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssao_intensity2(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssao_intensity2,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssao_quality(self):
    cdef godot_object *_owner = self.godot_owner

    cdef SSAOQuality* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssao_quality,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssao_radius(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssao_radius,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssao_radius2(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssao_radius2,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssr_depth_tolerance(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssr_depth_tolerance,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssr_fade_in(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssr_fade_in,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssr_fade_out(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssr_fade_out,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ssr_max_steps(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_ssr_max_steps,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tonemap_auto_exposure(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_tonemap_auto_exposure,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tonemap_auto_exposure_grey(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_tonemap_auto_exposure_grey,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tonemap_auto_exposure_max(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_tonemap_auto_exposure_max,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tonemap_auto_exposure_min(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_tonemap_auto_exposure_min,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tonemap_auto_exposure_speed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_tonemap_auto_exposure_speed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tonemap_exposure(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_tonemap_exposure,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tonemap_white(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_tonemap_white,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tonemapper(self):
    cdef godot_object *_owner = self.godot_owner

    cdef ToneMapper* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_get_tonemapper,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_adjustment_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_is_adjustment_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_dof_blur_far_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_is_dof_blur_far_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_dof_blur_near_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_is_dof_blur_near_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_fog_depth_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_is_fog_depth_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_fog_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_is_fog_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_fog_height_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_is_fog_height_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_fog_transmit_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_is_fog_transmit_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_glow_bicubic_upscale_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_is_glow_bicubic_upscale_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_glow_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_is_glow_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_glow_level_enabled(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_environment_is_glow_level_enabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_ssao_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_is_ssao_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_ssr_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_is_ssr_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_ssr_rough(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_environment_is_ssr_rough,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_adjustment_brightness(self,  float brightness):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &brightness
    api_core.godot_method_bind_ptrcall(bind_environment_set_adjustment_brightness,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_adjustment_color_correction(self,  classes.Texture.Texture color_correction):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = color_correction.godot_owner
    api_core.godot_method_bind_ptrcall(bind_environment_set_adjustment_color_correction,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_adjustment_contrast(self,  float contrast):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &contrast
    api_core.godot_method_bind_ptrcall(bind_environment_set_adjustment_contrast,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_adjustment_enable(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_environment_set_adjustment_enable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_adjustment_saturation(self,  float saturation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &saturation
    api_core.godot_method_bind_ptrcall(bind_environment_set_adjustment_saturation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ambient_light_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_environment_set_ambient_light_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ambient_light_energy(self,  float energy):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &energy
    api_core.godot_method_bind_ptrcall(bind_environment_set_ambient_light_energy,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ambient_light_sky_contribution(self,  float energy):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &energy
    api_core.godot_method_bind_ptrcall(bind_environment_set_ambient_light_sky_contribution,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_background(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_environment_set_background,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bg_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_environment_set_bg_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bg_energy(self,  float energy):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &energy
    api_core.godot_method_bind_ptrcall(bind_environment_set_bg_energy,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_camera_feed_id(self,  int camera_feed_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &camera_feed_id
    api_core.godot_method_bind_ptrcall(bind_environment_set_camera_feed_id,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_canvas_max_layer(self,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &layer
    api_core.godot_method_bind_ptrcall(bind_environment_set_canvas_max_layer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dof_blur_far_amount(self,  float intensity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &intensity
    api_core.godot_method_bind_ptrcall(bind_environment_set_dof_blur_far_amount,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dof_blur_far_distance(self,  float intensity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &intensity
    api_core.godot_method_bind_ptrcall(bind_environment_set_dof_blur_far_distance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dof_blur_far_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_environment_set_dof_blur_far_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dof_blur_far_quality(self,  int intensity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &intensity
    api_core.godot_method_bind_ptrcall(bind_environment_set_dof_blur_far_quality,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dof_blur_far_transition(self,  float intensity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &intensity
    api_core.godot_method_bind_ptrcall(bind_environment_set_dof_blur_far_transition,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dof_blur_near_amount(self,  float intensity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &intensity
    api_core.godot_method_bind_ptrcall(bind_environment_set_dof_blur_near_amount,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dof_blur_near_distance(self,  float intensity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &intensity
    api_core.godot_method_bind_ptrcall(bind_environment_set_dof_blur_near_distance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dof_blur_near_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_environment_set_dof_blur_near_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dof_blur_near_quality(self,  int level):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &level
    api_core.godot_method_bind_ptrcall(bind_environment_set_dof_blur_near_quality,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dof_blur_near_transition(self,  float intensity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &intensity
    api_core.godot_method_bind_ptrcall(bind_environment_set_dof_blur_near_transition,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_depth_begin(self,  float distance):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &distance
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_depth_begin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_depth_curve(self,  float curve):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &curve
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_depth_curve,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_depth_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_depth_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_depth_end(self,  float distance):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &distance
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_depth_end,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_height_curve(self,  float curve):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &curve
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_height_curve,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_height_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_height_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_height_max(self,  float height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &height
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_height_max,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_height_min(self,  float height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &height
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_height_min,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_sun_amount(self,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_sun_amount,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_sun_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_sun_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_transmit_curve(self,  float curve):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &curve
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_transmit_curve,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fog_transmit_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_environment_set_fog_transmit_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_glow_bicubic_upscale(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_environment_set_glow_bicubic_upscale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_glow_blend_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_environment_set_glow_blend_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_glow_bloom(self,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_environment_set_glow_bloom,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_glow_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_environment_set_glow_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_glow_hdr_bleed_scale(self,  float scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scale
    api_core.godot_method_bind_ptrcall(bind_environment_set_glow_hdr_bleed_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_glow_hdr_bleed_threshold(self,  float threshold):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &threshold
    api_core.godot_method_bind_ptrcall(bind_environment_set_glow_hdr_bleed_threshold,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_glow_hdr_luminance_cap(self,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_environment_set_glow_hdr_luminance_cap,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_glow_intensity(self,  float intensity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &intensity
    api_core.godot_method_bind_ptrcall(bind_environment_set_glow_intensity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_glow_level(self,  int idx,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &enabled
    api_core.godot_method_bind_ptrcall(bind_environment_set_glow_level,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_glow_strength(self,  float strength):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &strength
    api_core.godot_method_bind_ptrcall(bind_environment_set_glow_strength,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sky(self,  classes.Sky.Sky sky):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = sky.godot_owner
    api_core.godot_method_bind_ptrcall(bind_environment_set_sky,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sky_custom_fov(self,  float scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scale
    api_core.godot_method_bind_ptrcall(bind_environment_set_sky_custom_fov,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sky_orientation(self,  Basis orientation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &orientation._native
    api_core.godot_method_bind_ptrcall(bind_environment_set_sky_orientation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sky_rotation(self,  Vector3 euler_radians):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &euler_radians._native
    api_core.godot_method_bind_ptrcall(bind_environment_set_sky_rotation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sky_rotation_degrees(self,  Vector3 euler_degrees):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &euler_degrees._native
    api_core.godot_method_bind_ptrcall(bind_environment_set_sky_rotation_degrees,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssao_ao_channel_affect(self,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssao_ao_channel_affect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssao_bias(self,  float bias):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bias
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssao_bias,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssao_blur(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssao_blur,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssao_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssao_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssao_direct_light_affect(self,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssao_direct_light_affect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssao_edge_sharpness(self,  float edge_sharpness):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &edge_sharpness
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssao_edge_sharpness,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssao_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssao_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssao_intensity(self,  float intensity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &intensity
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssao_intensity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssao_intensity2(self,  float intensity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &intensity
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssao_intensity2,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssao_quality(self,  int quality):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &quality
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssao_quality,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssao_radius(self,  float radius):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radius
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssao_radius,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssao_radius2(self,  float radius):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radius
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssao_radius2,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssr_depth_tolerance(self,  float depth_tolerance):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &depth_tolerance
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssr_depth_tolerance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssr_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssr_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssr_fade_in(self,  float fade_in):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &fade_in
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssr_fade_in,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssr_fade_out(self,  float fade_out):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &fade_out
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssr_fade_out,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssr_max_steps(self,  int max_steps):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &max_steps
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssr_max_steps,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssr_rough(self,  bool rough):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rough
    api_core.godot_method_bind_ptrcall(bind_environment_set_ssr_rough,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tonemap_auto_exposure(self,  bool auto_exposure):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &auto_exposure
    api_core.godot_method_bind_ptrcall(bind_environment_set_tonemap_auto_exposure,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tonemap_auto_exposure_grey(self,  float exposure_grey):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &exposure_grey
    api_core.godot_method_bind_ptrcall(bind_environment_set_tonemap_auto_exposure_grey,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tonemap_auto_exposure_max(self,  float exposure_max):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &exposure_max
    api_core.godot_method_bind_ptrcall(bind_environment_set_tonemap_auto_exposure_max,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tonemap_auto_exposure_min(self,  float exposure_min):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &exposure_min
    api_core.godot_method_bind_ptrcall(bind_environment_set_tonemap_auto_exposure_min,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tonemap_auto_exposure_speed(self,  float exposure_speed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &exposure_speed
    api_core.godot_method_bind_ptrcall(bind_environment_set_tonemap_auto_exposure_speed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tonemap_exposure(self,  float exposure):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &exposure
    api_core.godot_method_bind_ptrcall(bind_environment_set_tonemap_exposure,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tonemap_white(self,  float white):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &white
    api_core.godot_method_bind_ptrcall(bind_environment_set_tonemap_white,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tonemapper(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_environment_set_tonemapper,self.godot_owner,args,NULL)
    hello('hallo2')
