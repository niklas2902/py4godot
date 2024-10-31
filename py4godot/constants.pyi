from py4godot.classes.core import *


class ConstantVector3(Vector3):
    @property
    def x(self) -> float: pass

    @property
    def y(self) -> float: pass

    @property
    def z(self) -> float: pass


VECTOR3_FORWARD: ConstantVector3 = ConstantVector3.new3(0, 0, 1)
VECTOR3_RIGHT: ConstantVector3 = ConstantVector3.new3(1, 0, 0)
VECTOR3_UP: ConstantVector3 = ConstantVector3.new3(0, 1, 0)

VECTOR3_BACK: ConstantVector3 = ConstantVector3.new3(0, 0, -1)
VECTOR3_LEFT: ConstantVector3 = ConstantVector3.new3(-1, 0, 0)
VECTOR3_DOWN: ConstantVector3 = ConstantVector3.new3(0, -1, 0)

VECTOR3_X_AXIS: ConstantVector3 = ConstantVector3.new3(1, 0, 0)
VECTOR3_Y_AXIS: ConstantVector3 = ConstantVector3.new3(0, 1, 0)
VECTOR3_Z_AXIS: ConstantVector3 = ConstantVector3.new3(0, 0, 1)
