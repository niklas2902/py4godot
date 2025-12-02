@tool
extends EditorExportPlugin

func _get_name(): return "Py4Godot Export Plugin"
func _supports_platform(platform): return true

func _export_begin(features, is_debug, path, flags):
	var project_path = ProjectSettings.globalize_path("res://")
	var export_base = path.get_base_dir()
	print("Exporting py4godot ...")
	print("starting copying /addons/py4godot ...")
	_copy_dir(project_path + "/addons/py4godot", export_base + "/addons/py4godot")
	print("Finished copying /addons/py4godot")
	print("Copying python files ...")
	print("export_base:", export_base)
	print("project_path:", project_path)
	_copy_py_files(project_path, export_base)
	print("Finished copying python files")

func _export_file(path, type, features):
	return null if path.ends_with(".py") or path.begins_with("addons/py4godot/") else null

func _copy_dir(src: String, dst: String):
	var dir = DirAccess.open(src)
	if not dir: return
	DirAccess.make_dir_recursive_absolute(dst)
	dir.list_dir_begin()
	var name = dir.get_next()
	while name:
		if name != "." and name != "..":
			var src_path = src + "/" + name
			var dst_path = dst + "/" + name
			if dir.current_is_dir():
				_copy_dir(src_path, dst_path)
			else:
				_copy_file(src_path, dst_path)
		name = dir.get_next()

func _copy_file(src: String, dst: String):
	DirAccess.make_dir_recursive_absolute(dst.get_base_dir())
	DirAccess.copy_absolute(src, dst)

func _copy_py_files(src_dir: String, dst_base: String):
	var dir = DirAccess.open(src_dir)
	if not dir: return
	dir.list_dir_begin()
	var name = dir.get_next()
	while name:
		if name != "." and name != "..":
			var full_src = src_dir + "/" + name
			if dir.current_is_dir():
				if not name.begins_with(".") and name != "addons":
					_copy_py_files(full_src, dst_base)
			elif name.ends_with(".py"):
				_copy_file(full_src,
				dst_base + "/" + full_src.replace( ProjectSettings.globalize_path("res://"), ""))

		name = dir.get_next()
