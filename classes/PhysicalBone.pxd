
from enum import *
from godot_api.binding_external cimport *
cimport classes.PhysicsBody
cdef class PhysicalBone(classes.PhysicsBody.PhysicsBody):
    pass
ctypedef enum JointType :JOINT_TYPE_NONE, JOINT_TYPE_PIN, JOINT_TYPE_CONE, JOINT_TYPE_HINGE, JOINT_TYPE_SLIDER, JOINT_TYPE_6DOF, 
