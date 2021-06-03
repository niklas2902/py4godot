
from enum import *
from godot_api.binding_external cimport *
cimport classes.Font
cdef class DynamicFont(classes.Font.Font):
    pass
ctypedef enum SpacingType :SPACING_TOP, SPACING_BOTTOM, SPACING_CHAR, SPACING_SPACE, 
