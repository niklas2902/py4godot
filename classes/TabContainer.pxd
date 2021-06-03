
from enum import *
from godot_api.binding_external cimport *
cimport classes.Container
cdef class TabContainer(classes.Container.Container):
    pass
ctypedef enum TabAlign :ALIGN_LEFT, ALIGN_CENTER, ALIGN_RIGHT, 
