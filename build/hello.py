from pluginscript_api.utils.annotations import  *
from utils.Wrapper import *
from enums.enums import *
print(PropertyHint)
print(PropertyHint.GODOT_PROPERTY_HINT_RANGE.value)

@gdclass
class Ball(Wrapper):

	@gdproperty(int, 5, hint=PropertyHint.GODOT_PROPERTY_HINT_RANGE.value, hint_string="1,100,5,slider")
	def vel(self):
		return 1

	@vel.setter
	def vel(self, value):
		print("set_value", value)

	@gdproperty(bool, False)
	def grounded(self):
		return False

	@grounded.setter
	def grounded(self, value):
		print("set_grounded")

	def __init__(self):
		super().__init__()
		self.velocity = 0


	@gdmethod
	def move(self):
		print("method")
		
	@gdmethod
	def jump(self):
		print("jump")

		
