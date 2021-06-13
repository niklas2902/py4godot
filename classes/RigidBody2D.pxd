
from enum import *
from godot_api.binding_external cimport *
cimport classes.PhysicsBody2D
cdef class RigidBody2D(classes.PhysicsBody2D.PhysicsBody2D):
    pass
ctypedef enum RigidBody2D_Mode :MODE_RIGID, MODE_STATIC, MODE_CHARACTER, MODE_KINEMATIC, 
ctypedef enum RigidBody2D_CCDMode :CCD_MODE_DISABLED, CCD_MODE_CAST_RAY, CCD_MODE_CAST_SHAPE, 
