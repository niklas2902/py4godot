
from enum import *
from godot_api.binding_external cimport *
cimport classes.AudioEffect
cdef class AudioEffectFilter(classes.AudioEffect.AudioEffect):
    pass
ctypedef enum FilterDB :FILTER_6DB, FILTER_12DB, FILTER_18DB, FILTER_24DB, 
