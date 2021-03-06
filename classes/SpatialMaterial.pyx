from classes.Material cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_spatialmaterial_get_albedo
cdef godot_method_bind *bind_spatialmaterial_get_alpha_scissor_threshold
cdef godot_method_bind *bind_spatialmaterial_get_anisotropy
cdef godot_method_bind *bind_spatialmaterial_get_ao_light_affect
cdef godot_method_bind *bind_spatialmaterial_get_ao_texture_channel
cdef godot_method_bind *bind_spatialmaterial_get_billboard_mode
cdef godot_method_bind *bind_spatialmaterial_get_blend_mode
cdef godot_method_bind *bind_spatialmaterial_get_clearcoat
cdef godot_method_bind *bind_spatialmaterial_get_clearcoat_gloss
cdef godot_method_bind *bind_spatialmaterial_get_cull_mode
cdef godot_method_bind *bind_spatialmaterial_get_depth_deep_parallax_flip_binormal
cdef godot_method_bind *bind_spatialmaterial_get_depth_deep_parallax_flip_tangent
cdef godot_method_bind *bind_spatialmaterial_get_depth_deep_parallax_max_layers
cdef godot_method_bind *bind_spatialmaterial_get_depth_deep_parallax_min_layers
cdef godot_method_bind *bind_spatialmaterial_get_depth_draw_mode
cdef godot_method_bind *bind_spatialmaterial_get_depth_scale
cdef godot_method_bind *bind_spatialmaterial_get_detail_blend_mode
cdef godot_method_bind *bind_spatialmaterial_get_detail_uv
cdef godot_method_bind *bind_spatialmaterial_get_diffuse_mode
cdef godot_method_bind *bind_spatialmaterial_get_distance_fade
cdef godot_method_bind *bind_spatialmaterial_get_distance_fade_max_distance
cdef godot_method_bind *bind_spatialmaterial_get_distance_fade_min_distance
cdef godot_method_bind *bind_spatialmaterial_get_emission
cdef godot_method_bind *bind_spatialmaterial_get_emission_energy
cdef godot_method_bind *bind_spatialmaterial_get_emission_operator
cdef godot_method_bind *bind_spatialmaterial_get_feature
cdef godot_method_bind *bind_spatialmaterial_get_flag
cdef godot_method_bind *bind_spatialmaterial_get_grow
cdef godot_method_bind *bind_spatialmaterial_get_line_width
cdef godot_method_bind *bind_spatialmaterial_get_metallic
cdef godot_method_bind *bind_spatialmaterial_get_metallic_texture_channel
cdef godot_method_bind *bind_spatialmaterial_get_normal_scale
cdef godot_method_bind *bind_spatialmaterial_get_particles_anim_h_frames
cdef godot_method_bind *bind_spatialmaterial_get_particles_anim_loop
cdef godot_method_bind *bind_spatialmaterial_get_particles_anim_v_frames
cdef godot_method_bind *bind_spatialmaterial_get_point_size
cdef godot_method_bind *bind_spatialmaterial_get_proximity_fade_distance
cdef godot_method_bind *bind_spatialmaterial_get_refraction
cdef godot_method_bind *bind_spatialmaterial_get_refraction_texture_channel
cdef godot_method_bind *bind_spatialmaterial_get_rim
cdef godot_method_bind *bind_spatialmaterial_get_rim_tint
cdef godot_method_bind *bind_spatialmaterial_get_roughness
cdef godot_method_bind *bind_spatialmaterial_get_roughness_texture_channel
cdef godot_method_bind *bind_spatialmaterial_get_specular
cdef godot_method_bind *bind_spatialmaterial_get_specular_mode
cdef godot_method_bind *bind_spatialmaterial_get_subsurface_scattering_strength
cdef godot_method_bind *bind_spatialmaterial_get_texture
cdef godot_method_bind *bind_spatialmaterial_get_transmission
cdef godot_method_bind *bind_spatialmaterial_get_uv1_offset
cdef godot_method_bind *bind_spatialmaterial_get_uv1_scale
cdef godot_method_bind *bind_spatialmaterial_get_uv1_triplanar_blend_sharpness
cdef godot_method_bind *bind_spatialmaterial_get_uv2_offset
cdef godot_method_bind *bind_spatialmaterial_get_uv2_scale
cdef godot_method_bind *bind_spatialmaterial_get_uv2_triplanar_blend_sharpness
cdef godot_method_bind *bind_spatialmaterial_is_depth_deep_parallax_enabled
cdef godot_method_bind *bind_spatialmaterial_is_grow_enabled
cdef godot_method_bind *bind_spatialmaterial_is_proximity_fade_enabled
cdef godot_method_bind *bind_spatialmaterial_set_albedo
cdef godot_method_bind *bind_spatialmaterial_set_alpha_scissor_threshold
cdef godot_method_bind *bind_spatialmaterial_set_anisotropy
cdef godot_method_bind *bind_spatialmaterial_set_ao_light_affect
cdef godot_method_bind *bind_spatialmaterial_set_ao_texture_channel
cdef godot_method_bind *bind_spatialmaterial_set_billboard_mode
cdef godot_method_bind *bind_spatialmaterial_set_blend_mode
cdef godot_method_bind *bind_spatialmaterial_set_clearcoat
cdef godot_method_bind *bind_spatialmaterial_set_clearcoat_gloss
cdef godot_method_bind *bind_spatialmaterial_set_cull_mode
cdef godot_method_bind *bind_spatialmaterial_set_depth_deep_parallax
cdef godot_method_bind *bind_spatialmaterial_set_depth_deep_parallax_flip_binormal
cdef godot_method_bind *bind_spatialmaterial_set_depth_deep_parallax_flip_tangent
cdef godot_method_bind *bind_spatialmaterial_set_depth_deep_parallax_max_layers
cdef godot_method_bind *bind_spatialmaterial_set_depth_deep_parallax_min_layers
cdef godot_method_bind *bind_spatialmaterial_set_depth_draw_mode
cdef godot_method_bind *bind_spatialmaterial_set_depth_scale
cdef godot_method_bind *bind_spatialmaterial_set_detail_blend_mode
cdef godot_method_bind *bind_spatialmaterial_set_detail_uv
cdef godot_method_bind *bind_spatialmaterial_set_diffuse_mode
cdef godot_method_bind *bind_spatialmaterial_set_distance_fade
cdef godot_method_bind *bind_spatialmaterial_set_distance_fade_max_distance
cdef godot_method_bind *bind_spatialmaterial_set_distance_fade_min_distance
cdef godot_method_bind *bind_spatialmaterial_set_emission
cdef godot_method_bind *bind_spatialmaterial_set_emission_energy
cdef godot_method_bind *bind_spatialmaterial_set_emission_operator
cdef godot_method_bind *bind_spatialmaterial_set_feature
cdef godot_method_bind *bind_spatialmaterial_set_flag
cdef godot_method_bind *bind_spatialmaterial_set_grow
cdef godot_method_bind *bind_spatialmaterial_set_grow_enabled
cdef godot_method_bind *bind_spatialmaterial_set_line_width
cdef godot_method_bind *bind_spatialmaterial_set_metallic
cdef godot_method_bind *bind_spatialmaterial_set_metallic_texture_channel
cdef godot_method_bind *bind_spatialmaterial_set_normal_scale
cdef godot_method_bind *bind_spatialmaterial_set_particles_anim_h_frames
cdef godot_method_bind *bind_spatialmaterial_set_particles_anim_loop
cdef godot_method_bind *bind_spatialmaterial_set_particles_anim_v_frames
cdef godot_method_bind *bind_spatialmaterial_set_point_size
cdef godot_method_bind *bind_spatialmaterial_set_proximity_fade
cdef godot_method_bind *bind_spatialmaterial_set_proximity_fade_distance
cdef godot_method_bind *bind_spatialmaterial_set_refraction
cdef godot_method_bind *bind_spatialmaterial_set_refraction_texture_channel
cdef godot_method_bind *bind_spatialmaterial_set_rim
cdef godot_method_bind *bind_spatialmaterial_set_rim_tint
cdef godot_method_bind *bind_spatialmaterial_set_roughness
cdef godot_method_bind *bind_spatialmaterial_set_roughness_texture_channel
cdef godot_method_bind *bind_spatialmaterial_set_specular
cdef godot_method_bind *bind_spatialmaterial_set_specular_mode
cdef godot_method_bind *bind_spatialmaterial_set_subsurface_scattering_strength
cdef godot_method_bind *bind_spatialmaterial_set_texture
cdef godot_method_bind *bind_spatialmaterial_set_transmission
cdef godot_method_bind *bind_spatialmaterial_set_uv1_offset
cdef godot_method_bind *bind_spatialmaterial_set_uv1_scale
cdef godot_method_bind *bind_spatialmaterial_set_uv1_triplanar_blend_sharpness
cdef godot_method_bind *bind_spatialmaterial_set_uv2_offset
cdef godot_method_bind *bind_spatialmaterial_set_uv2_scale
cdef godot_method_bind *bind_spatialmaterial_set_uv2_triplanar_blend_sharpness
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_spatialmaterial_get_albedo = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_albedo')
  bind_spatialmaterial_get_alpha_scissor_threshold = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_alpha_scissor_threshold')
  bind_spatialmaterial_get_anisotropy = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_anisotropy')
  bind_spatialmaterial_get_ao_light_affect = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_ao_light_affect')
  bind_spatialmaterial_get_ao_texture_channel = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_ao_texture_channel')
  bind_spatialmaterial_get_billboard_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_billboard_mode')
  bind_spatialmaterial_get_blend_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_blend_mode')
  bind_spatialmaterial_get_clearcoat = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_clearcoat')
  bind_spatialmaterial_get_clearcoat_gloss = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_clearcoat_gloss')
  bind_spatialmaterial_get_cull_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_cull_mode')
  bind_spatialmaterial_get_depth_deep_parallax_flip_binormal = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_depth_deep_parallax_flip_binormal')
  bind_spatialmaterial_get_depth_deep_parallax_flip_tangent = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_depth_deep_parallax_flip_tangent')
  bind_spatialmaterial_get_depth_deep_parallax_max_layers = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_depth_deep_parallax_max_layers')
  bind_spatialmaterial_get_depth_deep_parallax_min_layers = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_depth_deep_parallax_min_layers')
  bind_spatialmaterial_get_depth_draw_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_depth_draw_mode')
  bind_spatialmaterial_get_depth_scale = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_depth_scale')
  bind_spatialmaterial_get_detail_blend_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_detail_blend_mode')
  bind_spatialmaterial_get_detail_uv = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_detail_uv')
  bind_spatialmaterial_get_diffuse_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_diffuse_mode')
  bind_spatialmaterial_get_distance_fade = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_distance_fade')
  bind_spatialmaterial_get_distance_fade_max_distance = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_distance_fade_max_distance')
  bind_spatialmaterial_get_distance_fade_min_distance = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_distance_fade_min_distance')
  bind_spatialmaterial_get_emission = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_emission')
  bind_spatialmaterial_get_emission_energy = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_emission_energy')
  bind_spatialmaterial_get_emission_operator = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_emission_operator')
  bind_spatialmaterial_get_feature = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_feature')
  bind_spatialmaterial_get_flag = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_flag')
  bind_spatialmaterial_get_grow = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_grow')
  bind_spatialmaterial_get_line_width = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_line_width')
  bind_spatialmaterial_get_metallic = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_metallic')
  bind_spatialmaterial_get_metallic_texture_channel = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_metallic_texture_channel')
  bind_spatialmaterial_get_normal_scale = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_normal_scale')
  bind_spatialmaterial_get_particles_anim_h_frames = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_particles_anim_h_frames')
  bind_spatialmaterial_get_particles_anim_loop = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_particles_anim_loop')
  bind_spatialmaterial_get_particles_anim_v_frames = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_particles_anim_v_frames')
  bind_spatialmaterial_get_point_size = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_point_size')
  bind_spatialmaterial_get_proximity_fade_distance = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_proximity_fade_distance')
  bind_spatialmaterial_get_refraction = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_refraction')
  bind_spatialmaterial_get_refraction_texture_channel = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_refraction_texture_channel')
  bind_spatialmaterial_get_rim = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_rim')
  bind_spatialmaterial_get_rim_tint = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_rim_tint')
  bind_spatialmaterial_get_roughness = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_roughness')
  bind_spatialmaterial_get_roughness_texture_channel = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_roughness_texture_channel')
  bind_spatialmaterial_get_specular = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_specular')
  bind_spatialmaterial_get_specular_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_specular_mode')
  bind_spatialmaterial_get_subsurface_scattering_strength = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_subsurface_scattering_strength')
  bind_spatialmaterial_get_texture = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_texture')
  bind_spatialmaterial_get_transmission = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_transmission')
  bind_spatialmaterial_get_uv1_offset = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_uv1_offset')
  bind_spatialmaterial_get_uv1_scale = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_uv1_scale')
  bind_spatialmaterial_get_uv1_triplanar_blend_sharpness = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_uv1_triplanar_blend_sharpness')
  bind_spatialmaterial_get_uv2_offset = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_uv2_offset')
  bind_spatialmaterial_get_uv2_scale = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_uv2_scale')
  bind_spatialmaterial_get_uv2_triplanar_blend_sharpness = api_core.godot_method_bind_get_method('SpatialMaterial', 'get_uv2_triplanar_blend_sharpness')
  bind_spatialmaterial_is_depth_deep_parallax_enabled = api_core.godot_method_bind_get_method('SpatialMaterial', 'is_depth_deep_parallax_enabled')
  bind_spatialmaterial_is_grow_enabled = api_core.godot_method_bind_get_method('SpatialMaterial', 'is_grow_enabled')
  bind_spatialmaterial_is_proximity_fade_enabled = api_core.godot_method_bind_get_method('SpatialMaterial', 'is_proximity_fade_enabled')
  bind_spatialmaterial_set_albedo = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_albedo')
  bind_spatialmaterial_set_alpha_scissor_threshold = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_alpha_scissor_threshold')
  bind_spatialmaterial_set_anisotropy = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_anisotropy')
  bind_spatialmaterial_set_ao_light_affect = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_ao_light_affect')
  bind_spatialmaterial_set_ao_texture_channel = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_ao_texture_channel')
  bind_spatialmaterial_set_billboard_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_billboard_mode')
  bind_spatialmaterial_set_blend_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_blend_mode')
  bind_spatialmaterial_set_clearcoat = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_clearcoat')
  bind_spatialmaterial_set_clearcoat_gloss = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_clearcoat_gloss')
  bind_spatialmaterial_set_cull_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_cull_mode')
  bind_spatialmaterial_set_depth_deep_parallax = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_depth_deep_parallax')
  bind_spatialmaterial_set_depth_deep_parallax_flip_binormal = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_depth_deep_parallax_flip_binormal')
  bind_spatialmaterial_set_depth_deep_parallax_flip_tangent = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_depth_deep_parallax_flip_tangent')
  bind_spatialmaterial_set_depth_deep_parallax_max_layers = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_depth_deep_parallax_max_layers')
  bind_spatialmaterial_set_depth_deep_parallax_min_layers = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_depth_deep_parallax_min_layers')
  bind_spatialmaterial_set_depth_draw_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_depth_draw_mode')
  bind_spatialmaterial_set_depth_scale = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_depth_scale')
  bind_spatialmaterial_set_detail_blend_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_detail_blend_mode')
  bind_spatialmaterial_set_detail_uv = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_detail_uv')
  bind_spatialmaterial_set_diffuse_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_diffuse_mode')
  bind_spatialmaterial_set_distance_fade = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_distance_fade')
  bind_spatialmaterial_set_distance_fade_max_distance = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_distance_fade_max_distance')
  bind_spatialmaterial_set_distance_fade_min_distance = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_distance_fade_min_distance')
  bind_spatialmaterial_set_emission = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_emission')
  bind_spatialmaterial_set_emission_energy = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_emission_energy')
  bind_spatialmaterial_set_emission_operator = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_emission_operator')
  bind_spatialmaterial_set_feature = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_feature')
  bind_spatialmaterial_set_flag = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_flag')
  bind_spatialmaterial_set_grow = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_grow')
  bind_spatialmaterial_set_grow_enabled = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_grow_enabled')
  bind_spatialmaterial_set_line_width = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_line_width')
  bind_spatialmaterial_set_metallic = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_metallic')
  bind_spatialmaterial_set_metallic_texture_channel = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_metallic_texture_channel')
  bind_spatialmaterial_set_normal_scale = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_normal_scale')
  bind_spatialmaterial_set_particles_anim_h_frames = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_particles_anim_h_frames')
  bind_spatialmaterial_set_particles_anim_loop = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_particles_anim_loop')
  bind_spatialmaterial_set_particles_anim_v_frames = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_particles_anim_v_frames')
  bind_spatialmaterial_set_point_size = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_point_size')
  bind_spatialmaterial_set_proximity_fade = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_proximity_fade')
  bind_spatialmaterial_set_proximity_fade_distance = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_proximity_fade_distance')
  bind_spatialmaterial_set_refraction = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_refraction')
  bind_spatialmaterial_set_refraction_texture_channel = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_refraction_texture_channel')
  bind_spatialmaterial_set_rim = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_rim')
  bind_spatialmaterial_set_rim_tint = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_rim_tint')
  bind_spatialmaterial_set_roughness = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_roughness')
  bind_spatialmaterial_set_roughness_texture_channel = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_roughness_texture_channel')
  bind_spatialmaterial_set_specular = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_specular')
  bind_spatialmaterial_set_specular_mode = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_specular_mode')
  bind_spatialmaterial_set_subsurface_scattering_strength = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_subsurface_scattering_strength')
  bind_spatialmaterial_set_texture = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_texture')
  bind_spatialmaterial_set_transmission = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_transmission')
  bind_spatialmaterial_set_uv1_offset = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_uv1_offset')
  bind_spatialmaterial_set_uv1_scale = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_uv1_scale')
  bind_spatialmaterial_set_uv1_triplanar_blend_sharpness = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_uv1_triplanar_blend_sharpness')
  bind_spatialmaterial_set_uv2_offset = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_uv2_offset')
  bind_spatialmaterial_set_uv2_scale = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_uv2_scale')
  bind_spatialmaterial_set_uv2_triplanar_blend_sharpness = api_core.godot_method_bind_get_method('SpatialMaterial', 'set_uv2_triplanar_blend_sharpness')

############################Generated class###################################
cdef class SpatialMaterial(Material):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SpatialMaterial")())
##################################Generated Properties#########################################
  @property
  def albedo_color(self): 
    return self.get_albedo_color()
  @albedo_color.setter 
  def albedo_color(self,value): 
    self.set_albedo_color(value)
  @property
  def albedo_texture(self): 
    return self.get_albedo_texture()
  @albedo_texture.setter 
  def albedo_texture(self,value): 
    self.set_albedo_texture(value)
  @property
  def anisotropy(self): 
    return self.get_anisotropy()
  @anisotropy.setter 
  def anisotropy(self,value): 
    self.set_anisotropy(value)
  @property
  def anisotropy_enabled(self): 
    return self.get_anisotropy_enabled()
  @anisotropy_enabled.setter 
  def anisotropy_enabled(self,value): 
    self.set_anisotropy_enabled(value)
  @property
  def anisotropy_flowmap(self): 
    return self.get_anisotropy_flowmap()
  @anisotropy_flowmap.setter 
  def anisotropy_flowmap(self,value): 
    self.set_anisotropy_flowmap(value)
  @property
  def ao_enabled(self): 
    return self.get_ao_enabled()
  @ao_enabled.setter 
  def ao_enabled(self,value): 
    self.set_ao_enabled(value)
  @property
  def ao_light_affect(self): 
    return self.get_ao_light_affect()
  @ao_light_affect.setter 
  def ao_light_affect(self,value): 
    self.set_ao_light_affect(value)
  @property
  def ao_on_uv2(self): 
    return self.get_ao_on_uv2()
  @ao_on_uv2.setter 
  def ao_on_uv2(self,value): 
    self.set_ao_on_uv2(value)
  @property
  def ao_texture(self): 
    return self.get_ao_texture()
  @ao_texture.setter 
  def ao_texture(self,value): 
    self.set_ao_texture(value)
  @property
  def ao_texture_channel(self): 
    return self.get_ao_texture_channel()
  @ao_texture_channel.setter 
  def ao_texture_channel(self,value): 
    self.set_ao_texture_channel(value)
  @property
  def clearcoat(self): 
    return self.get_clearcoat()
  @clearcoat.setter 
  def clearcoat(self,value): 
    self.set_clearcoat(value)
  @property
  def clearcoat_enabled(self): 
    return self.get_clearcoat_enabled()
  @clearcoat_enabled.setter 
  def clearcoat_enabled(self,value): 
    self.set_clearcoat_enabled(value)
  @property
  def clearcoat_gloss(self): 
    return self.get_clearcoat_gloss()
  @clearcoat_gloss.setter 
  def clearcoat_gloss(self,value): 
    self.set_clearcoat_gloss(value)
  @property
  def clearcoat_texture(self): 
    return self.get_clearcoat_texture()
  @clearcoat_texture.setter 
  def clearcoat_texture(self,value): 
    self.set_clearcoat_texture(value)
  @property
  def depth_deep_parallax(self): 
    return self.get_depth_deep_parallax()
  @depth_deep_parallax.setter 
  def depth_deep_parallax(self,value): 
    self.set_depth_deep_parallax(value)
  @property
  def depth_enabled(self): 
    return self.get_depth_enabled()
  @depth_enabled.setter 
  def depth_enabled(self,value): 
    self.set_depth_enabled(value)
  @property
  def depth_flip_binormal(self): 
    return self.get_depth_flip_binormal()
  @depth_flip_binormal.setter 
  def depth_flip_binormal(self,value): 
    self.set_depth_flip_binormal(value)
  @property
  def depth_flip_tangent(self): 
    return self.get_depth_flip_tangent()
  @depth_flip_tangent.setter 
  def depth_flip_tangent(self,value): 
    self.set_depth_flip_tangent(value)
  @property
  def depth_max_layers(self): 
    return self.get_depth_max_layers()
  @depth_max_layers.setter 
  def depth_max_layers(self,value): 
    self.set_depth_max_layers(value)
  @property
  def depth_min_layers(self): 
    return self.get_depth_min_layers()
  @depth_min_layers.setter 
  def depth_min_layers(self,value): 
    self.set_depth_min_layers(value)
  @property
  def depth_scale(self): 
    return self.get_depth_scale()
  @depth_scale.setter 
  def depth_scale(self,value): 
    self.set_depth_scale(value)
  @property
  def depth_texture(self): 
    return self.get_depth_texture()
  @depth_texture.setter 
  def depth_texture(self,value): 
    self.set_depth_texture(value)
  @property
  def detail_albedo(self): 
    return self.get_detail_albedo()
  @detail_albedo.setter 
  def detail_albedo(self,value): 
    self.set_detail_albedo(value)
  @property
  def detail_blend_mode(self): 
    return self.get_detail_blend_mode()
  @detail_blend_mode.setter 
  def detail_blend_mode(self,value): 
    self.set_detail_blend_mode(value)
  @property
  def detail_enabled(self): 
    return self.get_detail_enabled()
  @detail_enabled.setter 
  def detail_enabled(self,value): 
    self.set_detail_enabled(value)
  @property
  def detail_mask(self): 
    return self.get_detail_mask()
  @detail_mask.setter 
  def detail_mask(self,value): 
    self.set_detail_mask(value)
  @property
  def detail_normal(self): 
    return self.get_detail_normal()
  @detail_normal.setter 
  def detail_normal(self,value): 
    self.set_detail_normal(value)
  @property
  def detail_uv_layer(self): 
    return self.get_detail_uv_layer()
  @detail_uv_layer.setter 
  def detail_uv_layer(self,value): 
    self.set_detail_uv_layer(value)
  @property
  def distance_fade_max_distance(self): 
    return self.get_distance_fade_max_distance()
  @distance_fade_max_distance.setter 
  def distance_fade_max_distance(self,value): 
    self.set_distance_fade_max_distance(value)
  @property
  def distance_fade_min_distance(self): 
    return self.get_distance_fade_min_distance()
  @distance_fade_min_distance.setter 
  def distance_fade_min_distance(self,value): 
    self.set_distance_fade_min_distance(value)
  @property
  def distance_fade_mode(self): 
    return self.get_distance_fade_mode()
  @distance_fade_mode.setter 
  def distance_fade_mode(self,value): 
    self.set_distance_fade_mode(value)
  @property
  def emission(self): 
    return self.get_emission()
  @emission.setter 
  def emission(self,value): 
    self.set_emission(value)
  @property
  def emission_enabled(self): 
    return self.get_emission_enabled()
  @emission_enabled.setter 
  def emission_enabled(self,value): 
    self.set_emission_enabled(value)
  @property
  def emission_energy(self): 
    return self.get_emission_energy()
  @emission_energy.setter 
  def emission_energy(self,value): 
    self.set_emission_energy(value)
  @property
  def emission_on_uv2(self): 
    return self.get_emission_on_uv2()
  @emission_on_uv2.setter 
  def emission_on_uv2(self,value): 
    self.set_emission_on_uv2(value)
  @property
  def emission_operator(self): 
    return self.get_emission_operator()
  @emission_operator.setter 
  def emission_operator(self,value): 
    self.set_emission_operator(value)
  @property
  def emission_texture(self): 
    return self.get_emission_texture()
  @emission_texture.setter 
  def emission_texture(self,value): 
    self.set_emission_texture(value)
  @property
  def flags_albedo_tex_force_srgb(self): 
    return self.get_flags_albedo_tex_force_srgb()
  @flags_albedo_tex_force_srgb.setter 
  def flags_albedo_tex_force_srgb(self,value): 
    self.set_flags_albedo_tex_force_srgb(value)
  @property
  def flags_disable_ambient_light(self): 
    return self.get_flags_disable_ambient_light()
  @flags_disable_ambient_light.setter 
  def flags_disable_ambient_light(self,value): 
    self.set_flags_disable_ambient_light(value)
  @property
  def flags_do_not_receive_shadows(self): 
    return self.get_flags_do_not_receive_shadows()
  @flags_do_not_receive_shadows.setter 
  def flags_do_not_receive_shadows(self,value): 
    self.set_flags_do_not_receive_shadows(value)
  @property
  def flags_ensure_correct_normals(self): 
    return self.get_flags_ensure_correct_normals()
  @flags_ensure_correct_normals.setter 
  def flags_ensure_correct_normals(self,value): 
    self.set_flags_ensure_correct_normals(value)
  @property
  def flags_fixed_size(self): 
    return self.get_flags_fixed_size()
  @flags_fixed_size.setter 
  def flags_fixed_size(self,value): 
    self.set_flags_fixed_size(value)
  @property
  def flags_no_depth_test(self): 
    return self.get_flags_no_depth_test()
  @flags_no_depth_test.setter 
  def flags_no_depth_test(self,value): 
    self.set_flags_no_depth_test(value)
  @property
  def flags_transparent(self): 
    return self.get_flags_transparent()
  @flags_transparent.setter 
  def flags_transparent(self,value): 
    self.set_flags_transparent(value)
  @property
  def flags_unshaded(self): 
    return self.get_flags_unshaded()
  @flags_unshaded.setter 
  def flags_unshaded(self,value): 
    self.set_flags_unshaded(value)
  @property
  def flags_use_point_size(self): 
    return self.get_flags_use_point_size()
  @flags_use_point_size.setter 
  def flags_use_point_size(self,value): 
    self.set_flags_use_point_size(value)
  @property
  def flags_use_shadow_to_opacity(self): 
    return self.get_flags_use_shadow_to_opacity()
  @flags_use_shadow_to_opacity.setter 
  def flags_use_shadow_to_opacity(self,value): 
    self.set_flags_use_shadow_to_opacity(value)
  @property
  def flags_vertex_lighting(self): 
    return self.get_flags_vertex_lighting()
  @flags_vertex_lighting.setter 
  def flags_vertex_lighting(self,value): 
    self.set_flags_vertex_lighting(value)
  @property
  def flags_world_triplanar(self): 
    return self.get_flags_world_triplanar()
  @flags_world_triplanar.setter 
  def flags_world_triplanar(self,value): 
    self.set_flags_world_triplanar(value)
  @property
  def metallic(self): 
    return self.get_metallic()
  @metallic.setter 
  def metallic(self,value): 
    self.set_metallic(value)
  @property
  def metallic_specular(self): 
    return self.get_metallic_specular()
  @metallic_specular.setter 
  def metallic_specular(self,value): 
    self.set_metallic_specular(value)
  @property
  def metallic_texture(self): 
    return self.get_metallic_texture()
  @metallic_texture.setter 
  def metallic_texture(self,value): 
    self.set_metallic_texture(value)
  @property
  def metallic_texture_channel(self): 
    return self.get_metallic_texture_channel()
  @metallic_texture_channel.setter 
  def metallic_texture_channel(self,value): 
    self.set_metallic_texture_channel(value)
  @property
  def normal_enabled(self): 
    return self.get_normal_enabled()
  @normal_enabled.setter 
  def normal_enabled(self,value): 
    self.set_normal_enabled(value)
  @property
  def normal_scale(self): 
    return self.get_normal_scale()
  @normal_scale.setter 
  def normal_scale(self,value): 
    self.set_normal_scale(value)
  @property
  def normal_texture(self): 
    return self.get_normal_texture()
  @normal_texture.setter 
  def normal_texture(self,value): 
    self.set_normal_texture(value)
  @property
  def params_alpha_scissor_threshold(self): 
    return self.get_params_alpha_scissor_threshold()
  @params_alpha_scissor_threshold.setter 
  def params_alpha_scissor_threshold(self,value): 
    self.set_params_alpha_scissor_threshold(value)
  @property
  def params_billboard_keep_scale(self): 
    return self.get_params_billboard_keep_scale()
  @params_billboard_keep_scale.setter 
  def params_billboard_keep_scale(self,value): 
    self.set_params_billboard_keep_scale(value)
  @property
  def params_billboard_mode(self): 
    return self.get_params_billboard_mode()
  @params_billboard_mode.setter 
  def params_billboard_mode(self,value): 
    self.set_params_billboard_mode(value)
  @property
  def params_blend_mode(self): 
    return self.get_params_blend_mode()
  @params_blend_mode.setter 
  def params_blend_mode(self,value): 
    self.set_params_blend_mode(value)
  @property
  def params_cull_mode(self): 
    return self.get_params_cull_mode()
  @params_cull_mode.setter 
  def params_cull_mode(self,value): 
    self.set_params_cull_mode(value)
  @property
  def params_depth_draw_mode(self): 
    return self.get_params_depth_draw_mode()
  @params_depth_draw_mode.setter 
  def params_depth_draw_mode(self,value): 
    self.set_params_depth_draw_mode(value)
  @property
  def params_diffuse_mode(self): 
    return self.get_params_diffuse_mode()
  @params_diffuse_mode.setter 
  def params_diffuse_mode(self,value): 
    self.set_params_diffuse_mode(value)
  @property
  def params_grow(self): 
    return self.get_params_grow()
  @params_grow.setter 
  def params_grow(self,value): 
    self.set_params_grow(value)
  @property
  def params_grow_amount(self): 
    return self.get_params_grow_amount()
  @params_grow_amount.setter 
  def params_grow_amount(self,value): 
    self.set_params_grow_amount(value)
  @property
  def params_line_width(self): 
    return self.get_params_line_width()
  @params_line_width.setter 
  def params_line_width(self,value): 
    self.set_params_line_width(value)
  @property
  def params_point_size(self): 
    return self.get_params_point_size()
  @params_point_size.setter 
  def params_point_size(self,value): 
    self.set_params_point_size(value)
  @property
  def params_specular_mode(self): 
    return self.get_params_specular_mode()
  @params_specular_mode.setter 
  def params_specular_mode(self,value): 
    self.set_params_specular_mode(value)
  @property
  def params_use_alpha_scissor(self): 
    return self.get_params_use_alpha_scissor()
  @params_use_alpha_scissor.setter 
  def params_use_alpha_scissor(self,value): 
    self.set_params_use_alpha_scissor(value)
  @property
  def particles_anim_h_frames(self): 
    return self.get_particles_anim_h_frames()
  @particles_anim_h_frames.setter 
  def particles_anim_h_frames(self,value): 
    self.set_particles_anim_h_frames(value)
  @property
  def particles_anim_loop(self): 
    return self.get_particles_anim_loop()
  @particles_anim_loop.setter 
  def particles_anim_loop(self,value): 
    self.set_particles_anim_loop(value)
  @property
  def particles_anim_v_frames(self): 
    return self.get_particles_anim_v_frames()
  @particles_anim_v_frames.setter 
  def particles_anim_v_frames(self,value): 
    self.set_particles_anim_v_frames(value)
  @property
  def proximity_fade_distance(self): 
    return self.get_proximity_fade_distance()
  @proximity_fade_distance.setter 
  def proximity_fade_distance(self,value): 
    self.set_proximity_fade_distance(value)
  @property
  def proximity_fade_enable(self): 
    return self.get_proximity_fade_enable()
  @proximity_fade_enable.setter 
  def proximity_fade_enable(self,value): 
    self.set_proximity_fade_enable(value)
  @property
  def refraction_enabled(self): 
    return self.get_refraction_enabled()
  @refraction_enabled.setter 
  def refraction_enabled(self,value): 
    self.set_refraction_enabled(value)
  @property
  def refraction_scale(self): 
    return self.get_refraction_scale()
  @refraction_scale.setter 
  def refraction_scale(self,value): 
    self.set_refraction_scale(value)
  @property
  def refraction_texture(self): 
    return self.get_refraction_texture()
  @refraction_texture.setter 
  def refraction_texture(self,value): 
    self.set_refraction_texture(value)
  @property
  def refraction_texture_channel(self): 
    return self.get_refraction_texture_channel()
  @refraction_texture_channel.setter 
  def refraction_texture_channel(self,value): 
    self.set_refraction_texture_channel(value)
  @property
  def rim(self): 
    return self.get_rim()
  @rim.setter 
  def rim(self,value): 
    self.set_rim(value)
  @property
  def rim_enabled(self): 
    return self.get_rim_enabled()
  @rim_enabled.setter 
  def rim_enabled(self,value): 
    self.set_rim_enabled(value)
  @property
  def rim_texture(self): 
    return self.get_rim_texture()
  @rim_texture.setter 
  def rim_texture(self,value): 
    self.set_rim_texture(value)
  @property
  def rim_tint(self): 
    return self.get_rim_tint()
  @rim_tint.setter 
  def rim_tint(self,value): 
    self.set_rim_tint(value)
  @property
  def roughness(self): 
    return self.get_roughness()
  @roughness.setter 
  def roughness(self,value): 
    self.set_roughness(value)
  @property
  def roughness_texture(self): 
    return self.get_roughness_texture()
  @roughness_texture.setter 
  def roughness_texture(self,value): 
    self.set_roughness_texture(value)
  @property
  def roughness_texture_channel(self): 
    return self.get_roughness_texture_channel()
  @roughness_texture_channel.setter 
  def roughness_texture_channel(self,value): 
    self.set_roughness_texture_channel(value)
  @property
  def subsurf_scatter_enabled(self): 
    return self.get_subsurf_scatter_enabled()
  @subsurf_scatter_enabled.setter 
  def subsurf_scatter_enabled(self,value): 
    self.set_subsurf_scatter_enabled(value)
  @property
  def subsurf_scatter_strength(self): 
    return self.get_subsurf_scatter_strength()
  @subsurf_scatter_strength.setter 
  def subsurf_scatter_strength(self,value): 
    self.set_subsurf_scatter_strength(value)
  @property
  def subsurf_scatter_texture(self): 
    return self.get_subsurf_scatter_texture()
  @subsurf_scatter_texture.setter 
  def subsurf_scatter_texture(self,value): 
    self.set_subsurf_scatter_texture(value)
  @property
  def transmission(self): 
    return self.get_transmission()
  @transmission.setter 
  def transmission(self,value): 
    self.set_transmission(value)
  @property
  def transmission_enabled(self): 
    return self.get_transmission_enabled()
  @transmission_enabled.setter 
  def transmission_enabled(self,value): 
    self.set_transmission_enabled(value)
  @property
  def transmission_texture(self): 
    return self.get_transmission_texture()
  @transmission_texture.setter 
  def transmission_texture(self,value): 
    self.set_transmission_texture(value)
  @property
  def uv1_offset(self): 
    return self.get_uv1_offset()
  @uv1_offset.setter 
  def uv1_offset(self,value): 
    self.set_uv1_offset(value)
  @property
  def uv1_scale(self): 
    return self.get_uv1_scale()
  @uv1_scale.setter 
  def uv1_scale(self,value): 
    self.set_uv1_scale(value)
  @property
  def uv1_triplanar(self): 
    return self.get_uv1_triplanar()
  @uv1_triplanar.setter 
  def uv1_triplanar(self,value): 
    self.set_uv1_triplanar(value)
  @property
  def uv1_triplanar_sharpness(self): 
    return self.get_uv1_triplanar_sharpness()
  @uv1_triplanar_sharpness.setter 
  def uv1_triplanar_sharpness(self,value): 
    self.set_uv1_triplanar_sharpness(value)
  @property
  def uv2_offset(self): 
    return self.get_uv2_offset()
  @uv2_offset.setter 
  def uv2_offset(self,value): 
    self.set_uv2_offset(value)
  @property
  def uv2_scale(self): 
    return self.get_uv2_scale()
  @uv2_scale.setter 
  def uv2_scale(self,value): 
    self.set_uv2_scale(value)
  @property
  def uv2_triplanar(self): 
    return self.get_uv2_triplanar()
  @uv2_triplanar.setter 
  def uv2_triplanar(self,value): 
    self.set_uv2_triplanar(value)
  @property
  def uv2_triplanar_sharpness(self): 
    return self.get_uv2_triplanar_sharpness()
  @uv2_triplanar_sharpness.setter 
  def uv2_triplanar_sharpness(self,value): 
    self.set_uv2_triplanar_sharpness(value)
  @property
  def vertex_color_is_srgb(self): 
    return self.get_vertex_color_is_srgb()
  @vertex_color_is_srgb.setter 
  def vertex_color_is_srgb(self,value): 
    self.set_vertex_color_is_srgb(value)
  @property
  def vertex_color_use_as_albedo(self): 
    return self.get_vertex_color_use_as_albedo()
  @vertex_color_use_as_albedo.setter 
  def vertex_color_use_as_albedo(self,value): 
    self.set_vertex_color_use_as_albedo(value)

##################################Generated Methods#########################################
  def  get_albedo(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_albedo,self.godot_owner,[NULL,],&ret)
  def  get_alpha_scissor_threshold(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_alpha_scissor_threshold,self.godot_owner,[NULL,],&ret)
  def  get_anisotropy(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_anisotropy,self.godot_owner,[NULL,],&ret)
  def  get_ao_light_affect(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_ao_light_affect,self.godot_owner,[NULL,],&ret)
  def  get_ao_texture_channel(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::TextureChannel ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_ao_texture_channel,self.godot_owner,[NULL,],&ret)
  def  get_billboard_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::BillboardMode ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_billboard_mode,self.godot_owner,[NULL,],&ret)
  def  get_blend_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::BlendMode ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_blend_mode,self.godot_owner,[NULL,],&ret)
  def  get_clearcoat(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_clearcoat,self.godot_owner,[NULL,],&ret)
  def  get_clearcoat_gloss(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_clearcoat_gloss,self.godot_owner,[NULL,],&ret)
  def  get_cull_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::CullMode ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_cull_mode,self.godot_owner,[NULL,],&ret)
  def  get_depth_deep_parallax_flip_binormal(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_depth_deep_parallax_flip_binormal,self.godot_owner,[NULL,],&ret)
  def  get_depth_deep_parallax_flip_tangent(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_depth_deep_parallax_flip_tangent,self.godot_owner,[NULL,],&ret)
  def  get_depth_deep_parallax_max_layers(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_depth_deep_parallax_max_layers,self.godot_owner,[NULL,],&ret)
  def  get_depth_deep_parallax_min_layers(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_depth_deep_parallax_min_layers,self.godot_owner,[NULL,],&ret)
  def  get_depth_draw_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::DepthDrawMode ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_depth_draw_mode,self.godot_owner,[NULL,],&ret)
  def  get_depth_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_depth_scale,self.godot_owner,[NULL,],&ret)
  def  get_detail_blend_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::BlendMode ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_detail_blend_mode,self.godot_owner,[NULL,],&ret)
  def  get_detail_uv(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::DetailUV ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_detail_uv,self.godot_owner,[NULL,],&ret)
  def  get_diffuse_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::DiffuseMode ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_diffuse_mode,self.godot_owner,[NULL,],&ret)
  def  get_distance_fade(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::DistanceFadeMode ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_distance_fade,self.godot_owner,[NULL,],&ret)
  def  get_distance_fade_max_distance(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_distance_fade_max_distance,self.godot_owner,[NULL,],&ret)
  def  get_distance_fade_min_distance(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_distance_fade_min_distance,self.godot_owner,[NULL,],&ret)
  def  get_emission(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_emission,self.godot_owner,[NULL,],&ret)
  def  get_emission_energy(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_emission_energy,self.godot_owner,[NULL,],&ret)
  def  get_emission_operator(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::EmissionOperator ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_emission_operator,self.godot_owner,[NULL,],&ret)
  def  get_feature(self, feature):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_feature,self.godot_owner,[NULL,],&ret)
  def  get_flag(self, flag):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_flag,self.godot_owner,[NULL,],&ret)
  def  get_grow(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_grow,self.godot_owner,[NULL,],&ret)
  def  get_line_width(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_line_width,self.godot_owner,[NULL,],&ret)
  def  get_metallic(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_metallic,self.godot_owner,[NULL,],&ret)
  def  get_metallic_texture_channel(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::TextureChannel ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_metallic_texture_channel,self.godot_owner,[NULL,],&ret)
  def  get_normal_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_normal_scale,self.godot_owner,[NULL,],&ret)
  def  get_particles_anim_h_frames(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_particles_anim_h_frames,self.godot_owner,[NULL,],&ret)
  def  get_particles_anim_loop(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_particles_anim_loop,self.godot_owner,[NULL,],&ret)
  def  get_particles_anim_v_frames(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_particles_anim_v_frames,self.godot_owner,[NULL,],&ret)
  def  get_point_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_point_size,self.godot_owner,[NULL,],&ret)
  def  get_proximity_fade_distance(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_proximity_fade_distance,self.godot_owner,[NULL,],&ret)
  def  get_refraction(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_refraction,self.godot_owner,[NULL,],&ret)
  def  get_refraction_texture_channel(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::TextureChannel ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_refraction_texture_channel,self.godot_owner,[NULL,],&ret)
  def  get_rim(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_rim,self.godot_owner,[NULL,],&ret)
  def  get_rim_tint(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_rim_tint,self.godot_owner,[NULL,],&ret)
  def  get_roughness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_roughness,self.godot_owner,[NULL,],&ret)
  def  get_roughness_texture_channel(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::TextureChannel ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_roughness_texture_channel,self.godot_owner,[NULL,],&ret)
  def  get_specular(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_specular,self.godot_owner,[NULL,],&ret)
  def  get_specular_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::SpecularMode ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_specular_mode,self.godot_owner,[NULL,],&ret)
  def  get_subsurface_scattering_strength(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_subsurface_scattering_strength,self.godot_owner,[NULL,],&ret)
  def  get_texture(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_texture,self.godot_owner,[NULL,],&ret)
  def  get_transmission(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_transmission,self.godot_owner,[NULL,],&ret)
  def  get_uv1_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_uv1_offset,self.godot_owner,[NULL,],&ret)
  def  get_uv1_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_uv1_scale,self.godot_owner,[NULL,],&ret)
  def  get_uv1_triplanar_blend_sharpness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_uv1_triplanar_blend_sharpness,self.godot_owner,[NULL,],&ret)
  def  get_uv2_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_uv2_offset,self.godot_owner,[NULL,],&ret)
  def  get_uv2_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_uv2_scale,self.godot_owner,[NULL,],&ret)
  def  get_uv2_triplanar_blend_sharpness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_get_uv2_triplanar_blend_sharpness,self.godot_owner,[NULL,],&ret)
  def  is_depth_deep_parallax_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_is_depth_deep_parallax_enabled,self.godot_owner,[NULL,],&ret)
  def  is_grow_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_is_grow_enabled,self.godot_owner,[NULL,],&ret)
  def  is_proximity_fade_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_is_proximity_fade_enabled,self.godot_owner,[NULL,],&ret)
  def  set_albedo(self, albedo):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_albedo,self.godot_owner,[NULL,],NULL)
  def  set_alpha_scissor_threshold(self, threshold):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_alpha_scissor_threshold,self.godot_owner,[NULL,],NULL)
  def  set_anisotropy(self, anisotropy):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_anisotropy,self.godot_owner,[NULL,],NULL)
  def  set_ao_light_affect(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_ao_light_affect,self.godot_owner,[NULL,],NULL)
  def  set_ao_texture_channel(self, channel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_ao_texture_channel,self.godot_owner,[NULL,],NULL)
  def  set_billboard_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_billboard_mode,self.godot_owner,[NULL,],NULL)
  def  set_blend_mode(self, blend_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_blend_mode,self.godot_owner,[NULL,],NULL)
  def  set_clearcoat(self, clearcoat):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_clearcoat,self.godot_owner,[NULL,],NULL)
  def  set_clearcoat_gloss(self, clearcoat_gloss):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_clearcoat_gloss,self.godot_owner,[NULL,],NULL)
  def  set_cull_mode(self, cull_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_cull_mode,self.godot_owner,[NULL,],NULL)
  def  set_depth_deep_parallax(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_depth_deep_parallax,self.godot_owner,[NULL,],NULL)
  def  set_depth_deep_parallax_flip_binormal(self, flip):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_depth_deep_parallax_flip_binormal,self.godot_owner,[NULL,],NULL)
  def  set_depth_deep_parallax_flip_tangent(self, flip):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_depth_deep_parallax_flip_tangent,self.godot_owner,[NULL,],NULL)
  def  set_depth_deep_parallax_max_layers(self, layer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_depth_deep_parallax_max_layers,self.godot_owner,[NULL,],NULL)
  def  set_depth_deep_parallax_min_layers(self, layer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_depth_deep_parallax_min_layers,self.godot_owner,[NULL,],NULL)
  def  set_depth_draw_mode(self, depth_draw_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_depth_draw_mode,self.godot_owner,[NULL,],NULL)
  def  set_depth_scale(self, depth_scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_depth_scale,self.godot_owner,[NULL,],NULL)
  def  set_detail_blend_mode(self, detail_blend_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_detail_blend_mode,self.godot_owner,[NULL,],NULL)
  def  set_detail_uv(self, detail_uv):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_detail_uv,self.godot_owner,[NULL,],NULL)
  def  set_diffuse_mode(self, diffuse_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_diffuse_mode,self.godot_owner,[NULL,],NULL)
  def  set_distance_fade(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_distance_fade,self.godot_owner,[NULL,],NULL)
  def  set_distance_fade_max_distance(self, distance):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_distance_fade_max_distance,self.godot_owner,[NULL,],NULL)
  def  set_distance_fade_min_distance(self, distance):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_distance_fade_min_distance,self.godot_owner,[NULL,],NULL)
  def  set_emission(self, emission):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_emission,self.godot_owner,[NULL,],NULL)
  def  set_emission_energy(self, emission_energy):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_emission_energy,self.godot_owner,[NULL,],NULL)
  def  set_emission_operator(self, operator):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_emission_operator,self.godot_owner,[NULL,],NULL)
  def  set_feature(self, featureenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_feature,self.godot_owner,[NULL,],NULL)
  def  set_flag(self, flagenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_flag,self.godot_owner,[NULL,],NULL)
  def  set_grow(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_grow,self.godot_owner,[NULL,],NULL)
  def  set_grow_enabled(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_grow_enabled,self.godot_owner,[NULL,],NULL)
  def  set_line_width(self, line_width):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_line_width,self.godot_owner,[NULL,],NULL)
  def  set_metallic(self, metallic):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_metallic,self.godot_owner,[NULL,],NULL)
  def  set_metallic_texture_channel(self, channel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_metallic_texture_channel,self.godot_owner,[NULL,],NULL)
  def  set_normal_scale(self, normal_scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_normal_scale,self.godot_owner,[NULL,],NULL)
  def  set_particles_anim_h_frames(self, frames):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_particles_anim_h_frames,self.godot_owner,[NULL,],NULL)
  def  set_particles_anim_loop(self, loop):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_particles_anim_loop,self.godot_owner,[NULL,],NULL)
  def  set_particles_anim_v_frames(self, frames):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_particles_anim_v_frames,self.godot_owner,[NULL,],NULL)
  def  set_point_size(self, point_size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_point_size,self.godot_owner,[NULL,],NULL)
  def  set_proximity_fade(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_proximity_fade,self.godot_owner,[NULL,],NULL)
  def  set_proximity_fade_distance(self, distance):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_proximity_fade_distance,self.godot_owner,[NULL,],NULL)
  def  set_refraction(self, refraction):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_refraction,self.godot_owner,[NULL,],NULL)
  def  set_refraction_texture_channel(self, channel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_refraction_texture_channel,self.godot_owner,[NULL,],NULL)
  def  set_rim(self, rim):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_rim,self.godot_owner,[NULL,],NULL)
  def  set_rim_tint(self, rim_tint):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_rim_tint,self.godot_owner,[NULL,],NULL)
  def  set_roughness(self, roughness):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_roughness,self.godot_owner,[NULL,],NULL)
  def  set_roughness_texture_channel(self, channel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_roughness_texture_channel,self.godot_owner,[NULL,],NULL)
  def  set_specular(self, specular):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_specular,self.godot_owner,[NULL,],NULL)
  def  set_specular_mode(self, specular_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_specular_mode,self.godot_owner,[NULL,],NULL)
  def  set_subsurface_scattering_strength(self, strength):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_subsurface_scattering_strength,self.godot_owner,[NULL,],NULL)
  def  set_texture(self, paramtexture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_texture,self.godot_owner,[NULL,],NULL)
  def  set_transmission(self, transmission):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_transmission,self.godot_owner,[NULL,],NULL)
  def  set_uv1_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_uv1_offset,self.godot_owner,[NULL,],NULL)
  def  set_uv1_scale(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_uv1_scale,self.godot_owner,[NULL,],NULL)
  def  set_uv1_triplanar_blend_sharpness(self, sharpness):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_uv1_triplanar_blend_sharpness,self.godot_owner,[NULL,],NULL)
  def  set_uv2_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_uv2_offset,self.godot_owner,[NULL,],NULL)
  def  set_uv2_scale(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_uv2_scale,self.godot_owner,[NULL,],NULL)
  def  set_uv2_triplanar_blend_sharpness(self, sharpness):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialmaterial_set_uv2_triplanar_blend_sharpness,self.godot_owner,[NULL,],NULL)
