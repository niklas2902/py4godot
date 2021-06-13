
from enum import *
from godot_api.binding_external cimport *
cimport classes.AudioEffect
cdef class AudioEffectPitchShift(classes.AudioEffect.AudioEffect):
    pass
ctypedef enum AudioEffectPitchShift_FFT_Size :FFT_SIZE_256, FFT_SIZE_512, FFT_SIZE_1024, FFT_SIZE_2048, FFT_SIZE_4096, FFT_SIZE_MAX, 
