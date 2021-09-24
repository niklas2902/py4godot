from pluginscript_api.utils.annotations import  *
from utils.Wrapper import *
from enums.enums import *
from classes.generated import *
from core import *
print(PropertyHint)
print(PropertyHint.GODOT_PROPERTY_HINT_RANGE.value)

@gdclass
class Ball(Spatial):

	@gdproperty(int, 5, hint=PropertyHint.GODOT_PROPERTY_HINT_RANGE.value, hint_string="1,100,5,slider")
	def vel(self):
		return 1

	@vel.setter
	def vel(self, value):
		print("set_value", value)


	@gdmethod
	def _process(self, delta):
		print(delta)
		print(self.get_transform())
		transform = self.get_transform()
		transform.set_origin(Vector3(4,0,0))
		self.set_transform(transform)
		
