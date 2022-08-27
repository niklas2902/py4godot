from py4godot.enums.enums import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *
from py4godot.pluginscript_api.hints import *

DEFAULT_VEL=5
@gdclass
class TestObj(Spatial):
	register_signal("test") #declaring the signals which could later be used
	def __init__(self):
		super().__init__()
		self.signal_emitted = False
	# expose godot-specific methods.
	@gdmethod
	def _ready(self):
		self.velocity = DEFAULT_VEL
	
	@gdmethod
	def test_signal(self):
		self.emit_signal("test", "hallo")
	
	# creating a property which can be edited in the editor. Hint and hint_string are optional 
	@gdproperty(int, DEFAULT_VEL,hint=RangeHint(1,100,5))
	def vel(self):
		return self.velocity
	@vel.setter
	def vel(self, value):
		self.velocity = value
	
	def test(self, test):
		print("hallo:",test )
		print("test_emitted")
		self.signal_emitted = True

