from py4godot.classes.core import *


class ConstantVector3(Vector3):
    """
    A specialized Vector3 class for representing constant immutable vectors.

    This class extends Vector3 and provides read-only properties for the x, y, and z
    components, preventing accidental modification of predefined constant vectors.
    """

    @property
    def x(self) -> float:
        """
        The x component of the vector.

        Returns:
            float: The x coordinate value.
        """
        pass

    @property
    def y(self) -> float:
        """
        The y component of the vector.

        Returns:
            float: The y coordinate value.
        """
        pass

    @property
    def z(self) -> float:
        """
        The z component of the vector.

        Returns:
            float: The z coordinate value.
        """
        pass


class ConstantVector2(Vector2):
    """
    A specialized Vector2 class for representing constant immutable vectors.

    This class extends Vector2 and provides read-only properties for the x and y
    components, preventing accidental modification of predefined constant vectors.
    """

    @property
    def x(self) -> float:
        """
        The x component of the vector.

        Returns:
            float: The x coordinate value.
        """
        pass

    @property
    def y(self) -> float:
        """
        The y component of the vector.

        Returns:
            float: The y coordinate value.
        """
        pass


# Vector3 constants - directional
VECTOR3_FORWARD: ConstantVector3 = ConstantVector3.new3(0, 0, 1)
VECTOR3_RIGHT: ConstantVector3 = ConstantVector3.new3(1, 0, 0)
VECTOR3_UP: ConstantVector3 = ConstantVector3.new3(0, 1, 0)

VECTOR3_BACK: ConstantVector3 = ConstantVector3.new3(0, 0, -1)
VECTOR3_LEFT: ConstantVector3 = ConstantVector3.new3(-1, 0, 0)
VECTOR3_DOWN: ConstantVector3 = ConstantVector3.new3(0, -1, 0)

# Vector3 constants - basis vectors
VECTOR3_X_AXIS: ConstantVector3 = ConstantVector3.new3(1, 0, 0)
VECTOR3_Y_AXIS: ConstantVector3 = ConstantVector3.new3(0, 1, 0)
VECTOR3_Z_AXIS: ConstantVector3 = ConstantVector3.new3(0, 0, 1)

# Vector2 constants - directional
VECTOR2_RIGHT: ConstantVector2 = ConstantVector2.new2(1, 0)
VECTOR2_UP: ConstantVector2 = ConstantVector2.new2(0, 1)

VECTOR2_LEFT: ConstantVector2 = ConstantVector2.new2(-1, 0)
VECTOR2_DOWN: ConstantVector2 = ConstantVector2.new2(0, -1)

# Vector2 constants - basis vectors
VECTOR2_X_AXIS: ConstantVector2 = ConstantVector2.new2(1, 0)
VECTOR2_Y_AXIS: ConstantVector2 = ConstantVector2.new2(0, 1)

# Vector2 additional useful constants
VECTOR2_ONE: ConstantVector2 = ConstantVector2.new2(1, 1)
VECTOR2_ZERO: ConstantVector2 = ConstantVector2.new2(0, 0)