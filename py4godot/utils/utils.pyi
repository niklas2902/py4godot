from py4godot.classes.Node.Node import *
import py4godot.classes.Viewport.Viewport as py4godot_viewport
import py4godot.classes.SceneTree.SceneTree as py4godot_scenetree
import py4godot.classes.Window.Window as py4godot_window


def get_viewport(node: Node) -> py4godot_viewport.Viewport: pass


def get_window(node: Node) -> py4godot_window.Window: pass


def get_tree(node: Node) -> py4godot_scenetree.SceneTree: pass

def get_singleton(name:str) -> object: pass
