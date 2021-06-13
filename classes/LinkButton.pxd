
from enum import *
from godot_api.binding_external cimport *
cimport classes.BaseButton
cdef class LinkButton(classes.BaseButton.BaseButton):
    pass
ctypedef enum LinkButton_UnderlineMode :UNDERLINE_MODE_ALWAYS, UNDERLINE_MODE_ON_HOVER, UNDERLINE_MODE_NEVER, 
