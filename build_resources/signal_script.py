
from py4godot.methods import private
from py4godot.signals import signal, SignalArg
from py4godot.classes import gdclass
from py4godot.classes.core import Vector3
from py4godot.classes.Object import Object

@gdclass
class signal_script(Object):
	
	def __init__(self):
		super().__init__()
		self.handled = False

	def handler(self):
		self.handled = True
