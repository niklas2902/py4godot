
from py4godot.methods import private
from py4godot.signals import signal, SignalArg
from py4godot.classes import gdclass
from py4godot.classes.core import Vector3, Array
from py4godot.classes.Node3D import Node3D

@gdclass
class failing(Node3D):

    # define properties like this
    test_int: int = 5
    test_float: float = 5.2
    test_bool: bool = True
    test_vector: Vector3 = Vector3.new3(1,2,3)

    # define signals like this
    test_signal = signal([SignalArg("test_arg", int)])


    def _ready(self) -> None:
        my_arr:Array[int] = Array[int].new0()
        my_arr.append("hello")
        my_vector:Vector3 = Vector3.new3(1,2,3)
        res = my_vector + Vector3.new3(1,2,3)
        print(res)
    def _process(self, delta:float) -> None:
        pass
        # put dynamic code here

    # Hide the method in the godot editor
    @private
    def test_method(self):
        pass
