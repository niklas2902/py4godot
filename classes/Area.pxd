
from enum import *
from godot_api.binding_external cimport *
cimport classes.CollisionObject
cdef class Area(classes.CollisionObject.CollisionObject):
    pass
ctypedef enum SpaceOverride :SPACE_OVERRIDE_DISABLED, SPACE_OVERRIDE_COMBINE, SPACE_OVERRIDE_COMBINE_REPLACE, SPACE_OVERRIDE_REPLACE, SPACE_OVERRIDE_REPLACE_COMBINE, 
