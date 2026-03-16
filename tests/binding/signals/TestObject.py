import asyncio

from py4godot.classes import gdclass
from py4godot.classes.Node3D import Node3D
from py4godot.pluginscript_api.utils.annotations import gdmethod
from py4godot.signals import signal, SignalArg, get_event_loop


@gdclass
class TestObject(Node3D):
	custom_signal_no_args = signal()
	custom_signal_with_args = signal([SignalArg("test_arg", int)])
	custom_signal_godot_object = signal([SignalArg("test_arg", int)])
	def __init__(self) -> None:
		super().__init__()
		self.is_visible_called = False
		self.custom_signal_no_arg_called = False
		self.custom_signal_with_args_value = 0
		self.custom_signal_wait_emit_called = False
		self.is_visible_wait_emit_called = False
	@gdmethod
	def _ready(self) -> None:
		self.visibility_changed.connect(self.visible_changed)
		self.custom_signal_no_args.connect(self.custom_signal_no_arg_function)
		self.custom_signal_with_args.connect(self.custom_signal_with_arg_function)

	def visible_changed(self) -> None:
		print("visible changed")
		self.is_visible_called = not self.is_visible_called
	def custom_signal_no_arg_function(self) -> None:
		self.custom_signal_no_arg_called = not self.custom_signal_no_arg_called

	def custom_signal_with_arg_function(self, value:int) -> None:
		self.custom_signal_with_args_value = value

	def disconnect_custom_signal_with_arg(self) -> None:
		self.custom_signal_with_args.disconnect(self.custom_signal_with_arg_function)

	def disconnect_custom_signal(self) -> None:
		self.custom_signal_no_args.disconnect(self.custom_signal_no_arg_function)
	def disconnect_visibility(self) -> None:
		self.visibility_changed.disconnect(self.visible_changed)

	def emit_godot_object_signal(self)->None:
		self.custom_signal_godot_object.emit(1)
		self.custom_signal_wait_emit_called = True

	async def wait_emit_execute(self):
		self.custom_signal_wait_emit_called = False
		await self.custom_signal_godot_object.wait_emit()
		self.custom_signal_wait_emit_called = True
		await self.visibility_changed.wait_emit()
		self.is_visible_wait_emit_called = True
	def check_wait_emit(self):
		future = asyncio.run_coroutine_threadsafe(self.wait_emit_execute(),get_event_loop())

		def log_exception(fut):
			try:
				fut.result()
			except Exception as e:
				print("Coroutine raised:", repr(e))

		future.add_done_callback(log_exception)
