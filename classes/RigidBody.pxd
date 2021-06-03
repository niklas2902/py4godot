
from enum import *
from godot_api.binding_external cimport *
cimport classes.PhysicsBody
cdef class RigidBody(classes.PhysicsBody.PhysicsBody):
    pass
ctypedef enum Mode :MODE_RIGID, MODE_STATIC, MODE_CHARACTER, MODE_KINEMATIC, 
