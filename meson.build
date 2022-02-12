project('py4godot', 'c')

extra_args = []
message(meson.get_compiler('c').get_id())

if meson.get_compiler('c').get_id() == 'gcc'
    add_global_arguments('-DMS_WIN64', language : 'c')
endif

message(meson.current_source_dir())

py = import('python').find_installation('python3')
dep_py = py.dependency()

internal_inc = include_directories('py4godot/godot-headers', 'py4godot/core', 'py4godot/enums',
'py4godot/classes', 'py4godot/pluginscript_api', 'py4godot/godot_bindings')

glob = run_command('python', files(meson.current_source_dir()+'/meson_scripts/glob_tools.py'))
godot_program = find_program('godot')

sources = glob.stdout().strip().split('\n')
message(sources)

foreach source : sources
    shared_library(source, source+'.c',
    dependencies:[dep_py], include_directories:internal_inc,name_prefix:'',c_args:extra_args )
endforeach

test('test_vector3', godot_program, args : ['--path', 'tests/core/vector3'], workdir:meson.source_root(), timeout:3600)
test('test_vector2', godot_program, args : ['--path', 'tests/core/vector2'], workdir:meson.source_root(),  timeout:3600)
test('test_rect2', godot_program, args : ['--path', 'tests/core/rect2'], workdir:meson.source_root(), timeout:3600)

