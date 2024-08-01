const char* basic_template = R"(
from py4godot import prop, signal, gdmethod, gdclass, SignalArg
from py4godot.classes.core import Vector3
from py4godot.classes.{INHERITS}.{INHERITS} import {INHERITS}

@gdclass
class {CLASSNAME}({INHERITS}):
    prop("test_int", int, 5)
    prop("test_float", float, 5.2)
    prop("test_bool", bool, True)
    prop("test_vector", Vector3, Vector3.new0())

    signal("test_signal", [SignalArg("test_arg", int)])

    def _ready(self) -> None:
        pass
        # put initialization code here

    def _process(self, delta:float) -> None:
        pass
        # put dynamic code here
)";