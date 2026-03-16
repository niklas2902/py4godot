from py4godot.classes.Node import Node
import py4godot.classes.Viewport as py4godot_viewport
import py4godot.classes.SceneTree as py4godot_scenetree
import py4godot.classes.Window as py4godot_window

shouldCreateObject:bool = False
def get_viewport(node: Node) -> py4godot_viewport.Viewport: pass


def get_window(node: Node) -> py4godot_window.Window: pass


def get_tree(node: Node) -> py4godot_scenetree.SceneTree: pass

def get_singleton(name:str) -> object: pass
