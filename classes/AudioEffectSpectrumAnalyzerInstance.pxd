
from enum import *
from godot_api.binding_external cimport *
cimport classes.AudioEffectInstance
cdef class AudioEffectSpectrumAnalyzerInstance(classes.AudioEffectInstance.AudioEffectInstance):
    pass
ctypedef enum AudioEffectSpectrumAnalyzerInstance_MagnitudeMode :MAGNITUDE_AVERAGE, MAGNITUDE_MAX, 
