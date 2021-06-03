
from enum import *
from godot_api.binding_external cimport *
cimport classes.AudioEffect
cdef class AudioEffectDistortion(classes.AudioEffect.AudioEffect):
    pass
ctypedef enum Mode :MODE_CLIP, MODE_ATAN, MODE_LOFI, MODE_OVERDRIVE, MODE_WAVESHAPE, 
