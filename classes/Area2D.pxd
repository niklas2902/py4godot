
from enum import *
from godot_api.binding_external cimport *
cimport classes.CollisionObject2D
cdef class Area2D(classes.CollisionObject2D.CollisionObject2D):
    pass
ctypedef enum SpaceOverride :SPACE_OVERRIDE_DISABLED, SPACE_OVERRIDE_COMBINE, SPACE_OVERRIDE_COMBINE_REPLACE, SPACE_OVERRIDE_REPLACE, SPACE_OVERRIDE_REPLACE_COMBINE, 
