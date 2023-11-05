
from py4godot.classes.Node.Node cimport *
cimport py4godot.classes.Viewport.Viewport as py4godot_viewport
cimport py4godot.classes.SceneTree.SceneTree as py4godot_scenetree
cimport py4godot.classes.Window.Window as py4godot_window



  def get_viewport(Node node):

    cdef py4godot_viewport.Viewport _ret = py4godot_viewport.Viewport.__new__(py4godot_viewport.Viewport)
    _ret.Viewport_internal_class = node.Node_internal_class.get_viewport()
    _ret.set_gdowner(_ret.Viewport_internal_class.get_godot_owner())

    return _ret



  def get_window(Node node):



    cdef py4godot_window.Window _ret = py4godot_window.Window.__new__(py4godot_window.Window)
    _ret.Window_internal_class = node.Node_internal_class.get_window()
    _ret.set_gdowner(_ret.Window_internal_class.get_godot_owner())

    return _ret


  def get_tree(Node node):



    cdef py4godot_scenetree.SceneTree _ret = py4godot_scenetree.SceneTree.__new__(py4godot_scenetree.SceneTree)
    _ret.SceneTree_internal_class = node.Node_internal_class.get_tree()
    _ret.set_gdowner(_ret.SceneTree_internal_class.get_godot_owner())

    return _ret
