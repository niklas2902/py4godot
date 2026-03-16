from py4godot.classes import gdclass
from py4godot.classes.Node3D import Node3D


@gdclass
class singleton(Node3D):

	def test_method(self):
		return True