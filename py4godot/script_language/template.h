const char* basic_template = R"(
from py4godot import gdproperty, signal, gdmethod, gdclass, SignalArg
from py4godot.classes.core import Vector3
from py4godot.classes.{INHERITS}.{INHERITS} import {INHERITS}

@gdclass
class {CLASSNAME}({INHERITS}):

	# define properties like this
	test_int: int = gdproperty(int, 5)
	test_float: float = gdproperty(float, 5.2)
	test_bool: bool = gdproperty(bool, True)
	test_vector: Vector3 = gdproperty(Vector3, Vector3.new0())

	# define signals like this
	signal("test_signal", [SignalArg("test_arg", int)])


	def _ready(self) -> None:
		pass
		# put initialization code here

	def _process(self, delta:float) -> None:
		pass
		# put dynamic code here

	# Method visible in the godot editor, e.g. for connecting signals
	@gdmethod
	def test_method(self):
		pass
)";