from py4godot.classes import gdclass
from py4godot.classes.Image import Image
from py4godot.classes.Node3D import Node3D
from py4godot.classes.core import Array, Vector3
import gc

END_TIME = 20
START_TIME = 10
@gdclass
class TestObject(Node3D):
	def _ready(self) -> None:
		self.current_time = 0


	def _process(self, delta:'float'   ) -> None:
		self.current_time += delta
		if self.current_time >= START_TIME and self.current_time <= END_TIME:
			# Testing refcounted structures
			image = Image.load_from_file("res://icon_color.png")
			data = image.get_data()
			memoryview = data.get_memory_view()

			# Testing arrays
			my_array = Array.new0()
			my_array.push_back(1)
			my_array.push_back(2)
			my_array.push_back("hello")
			my_array.push_back(Vector3.new0())
			my_array.push_back(data)
		
		gc.collect() #making sure, that everything is cleaned up for being able to get data
