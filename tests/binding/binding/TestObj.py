from py4godot import *
import TestClass

DEFAULT_VEL=5
@gdclass
class TestObj(Spatial):
	register_signal("test") #declaring the signals which could later be used
	
	# expose godot-specific methods.
	@gdmethod
	def _ready(self):
		self.velocity = DEFAULT_VEL
		self.emit_signal(String("test"), "hallo")
		
	# creating a property which can be edited in the editor. Hint and hint_string are optional 
	@gdproperty(int, DEFAULT_VEL, hint=PropertyHint.GODOT_PROPERTY_HINT_RANGE.value,
	 hint_string="1,100,5,slider")
	def vel(self):
		return self.velocity
	@vel.setter
	def vel(self, value):
		self.velocity = value
	
	@gdmethod
	def _process(self, delta):
		input = Input.instance()
	
	def test(self, test):
		print("hallo:",test )
		print("test_emitted")

