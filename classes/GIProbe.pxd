
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualInstance
cdef class GIProbe(classes.VisualInstance.VisualInstance):
    pass
ctypedef enum Subdiv :SUBDIV_64, SUBDIV_128, SUBDIV_256, SUBDIV_512, SUBDIV_MAX, 
