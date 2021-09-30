from pluginscript_api.utils.annotations import  *
from utils.Wrapper import *
from enums.enums import *
from classes.generated import *
from core import *
print(PropertyHint)
print(PropertyHint.GODOT_PROPERTY_HINT_RANGE.value)

DEFAULT_VEL = 5
@gdclass
class Ball(Spatial):

	@gdproperty(int, DEFAULT_VEL, hint=PropertyHint.GODOT_PROPERTY_HINT_RANGE.value, hint_string="1,100,5,slider")
	def vel(self):
		return self._vel

	@vel.setter
	def vel(self, value):
		print("set_value", value)
		self._vel = value

	@gdmethod
	def _ready(self):
		print("_ready:")
		print(self.vel)
		if(self.vel == None):
			self.vel = DEFAULT_VEL
		print(self.vel)

	@gdmethod
	def _process(self, delta):
		#print("delta:", delta)
		transform = self.get_transform()
		transform.set_origin(Vector3(5,0,2))
		self.set_transform(transform)
		
