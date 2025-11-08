extends Node3D

var current_time = 0
const FIRST_SNAPSHOT = 5
const SECOND_SNAPSHOT = 25

var first_object_count = 0
var first_static_memory = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	current_time += delta
	if current_time > FIRST_SNAPSHOT:
		first_static_memory = Performance.get_monitor(Performance.MEMORY_STATIC)
		first_object_count = Performance.get_monitor(Performance.OBJECT_COUNT)
	
	if current_time > SECOND_SNAPSHOT:
		var second_static_memory = Performance.get_monitor(Performance.MEMORY_STATIC)
		var second_object_count = Performance.get_monitor(Performance.OBJECT_COUNT)
		
		if (second_static_memory > first_static_memory):
			print("Memory leak")
			get_tree().quit(1)
		
		if (second_object_count > first_object_count):
			print("Object_count_too high")
			get_tree().quit(1)
		print("everything worked fine")
		get_tree().quit(0)
