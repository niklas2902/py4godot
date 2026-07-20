from py4godot.classes.EditorPlugin import EditorPlugin
from py4godot.pluginscript_api.utils.annotations import gdtool

@gdtool
class MyEditorPlugin(EditorPlugin):
	def _ready(self):
		tree = self.get_tree()
		tree.quit(0)
