
from enum import *
from godot_api.binding_external cimport *
cimport classes.Container
cdef class SplitContainer(classes.Container.Container):
    pass
ctypedef enum SplitContainer_DraggerVisibility :DRAGGER_VISIBLE, DRAGGER_HIDDEN, DRAGGER_HIDDEN_COLLAPSED, 
