from pluginscript_api.utils.annotations import  *
from enums.enums import *
print(PropertyHint)
print(PropertyHint.GODOT_PROPERTY_HINT_RANGE.value)

class prop(property):
	pass

@gdclass
class Ball:
	def __init__(self):
		pass
	@gdmethod
	def move(self):
		print("method")
		
	@gdmethod
	def jump(self):
		print("jump")

	@gdproperty(int,5,hint = PropertyHint.GODOT_PROPERTY_HINT_RANGE.value, hint_string="1,100,5,slider")
	def vel(self):
		return 1

	@vel.setter
	def vel(self, value):
		print("set_value")


	
