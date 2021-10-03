from pluginscript_api.utils.annotations import  *
from enums.enums import *
from classes.generated import *
from core import *
print(PropertyHint)
print(PropertyHint.GODOT_PROPERTY_HINT_RANGE.value)

DEFAULT_VEL = 5
DEFAULT_POS = Vector3(1,2,3)
@gdclass
class Ball(Spatial):

	@gdproperty(int, DEFAULT_VEL, hint=PropertyHint.GODOT_PROPERTY_HINT_RANGE.value, hint_string="1,100,5,slider")
	def vel(self):
		return self._vel

	@vel.setter
	def vel(self, value):
		print("set_value", value)
		self._vel = value

	@gdproperty(Vector3, DEFAULT_POS)
	def pos(self):
		return self._pos

	@pos.setter
	def pos(self, value):
		print("set_pos", value)
		self._pos = value

	@gdmethod
	def _ready(self):
		print("_ready:")
		print(self.vel)
		if(self.vel == None):
			self.vel = DEFAULT_VEL
		
		if(self.pos == None):
			print("set_pos")
			self.pos = DEFAULT_POS		
		print(self.vel)

	@gdmethod
	def _process(self, delta):
		#print("delta:", delta)
		transform = self.get_transform()
		transform.set_origin(self.pos)
		self.set_transform(transform)
		
