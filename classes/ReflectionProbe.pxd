
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualInstance
cdef class ReflectionProbe(classes.VisualInstance.VisualInstance):
    pass
ctypedef enum UpdateMode :UPDATE_ONCE, UPDATE_ALWAYS, 
