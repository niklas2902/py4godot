@tool
extends EditorPlugin

var export_plugin

func _enter_tree():
	export_plugin = preload("res://addons/py4godot/export_py4godot.gd").new()
	add_export_plugin(export_plugin)

func _exit_tree():
	remove_export_plugin(export_plugin)
	export_plugin = null
