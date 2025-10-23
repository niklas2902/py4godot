extends Node3D
var val = -1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%TestObject.custom_signal_godot_object.connect(Callable(self, "change_val"))


func change_val(_val:int)->void:
	val = _val
