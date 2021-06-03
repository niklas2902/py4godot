
from enum import *
from godot_api.binding_external cimport *
cimport classes.Object
cdef class TreeItem(classes.Object.Object):
    pass
ctypedef enum TreeCellMode :CELL_MODE_STRING, CELL_MODE_CHECK, CELL_MODE_RANGE, CELL_MODE_ICON, CELL_MODE_CUSTOM, 
ctypedef enum TextAlign :ALIGN_LEFT, ALIGN_CENTER, ALIGN_RIGHT, 
