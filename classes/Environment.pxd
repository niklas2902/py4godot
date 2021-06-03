
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class Environment(classes.Resource.Resource):
    pass
ctypedef enum SSAOBlur :SSAO_BLUR_DISABLED, SSAO_BLUR_1x1, SSAO_BLUR_2x2, SSAO_BLUR_3x3, 
ctypedef enum ToneMapper :TONE_MAPPER_LINEAR, TONE_MAPPER_REINHARDT, TONE_MAPPER_FILMIC, TONE_MAPPER_ACES, 
ctypedef enum GlowBlendMode :GLOW_BLEND_MODE_ADDITIVE, GLOW_BLEND_MODE_SCREEN, GLOW_BLEND_MODE_SOFTLIGHT, GLOW_BLEND_MODE_REPLACE, 
ctypedef enum BGMode :BG_CLEAR_COLOR, BG_COLOR, BG_SKY, BG_COLOR_SKY, BG_CANVAS, BG_KEEP, BG_CAMERA_FEED, BG_MAX, 
ctypedef enum SSAOQuality :SSAO_QUALITY_LOW, SSAO_QUALITY_MEDIUM, SSAO_QUALITY_HIGH, 
ctypedef enum DOFBlurQuality :DOF_BLUR_QUALITY_LOW, DOF_BLUR_QUALITY_MEDIUM, DOF_BLUR_QUALITY_HIGH, 
