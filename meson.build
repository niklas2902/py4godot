project('py4godot', 'c')

cc = meson.get_compiler('c')
#message(current_platform)
message('system:'+build_machine.system())
message(build_machine.cpu_family())
platform_format = ''
machine = build_machine.system()
if build_machine.cpu_family()=='x86_64'
    message('strip')
    platform_format='64'
endif

message('platform:'+platform_format)
message('machine:'+machine)

lib_py = cc.find_library('python3.9', dirs:meson.current_source_dir()+'/python_files/cpython-3.9.7-'+machine+platform_format+'/python/install/lib')
pkg = import('pkgconfig')
extra_args = []
message(meson.get_compiler('c').get_id())

if meson.get_compiler('c').get_id() == 'gcc'
    add_global_arguments('-DMS_WIN64', language : 'c')
endif

message(meson.current_source_dir())

py = import('python').find_installation('python3')
#dep_py = dependency('python3')
import('pkgconfig')

internal_inc = include_directories('py4godot/godot-headers', 'py4godot/core', 'py4godot/enums',
'py4godot/classes', 'py4godot/pluginscript_api', 'py4godot/godot_bindings', 'python_files/cpython-3.9.7-linux64/python/install/include/python3.9')

glob = run_command('python3', files(meson.current_source_dir()+'/meson_scripts/glob_tools.py'))
godot_program = find_program('godot')

sources = glob.stdout().strip().split('\n')
message(sources)

foreach source : sources
    shared_library(source, source+'.c',
    dependencies:[lib_py], include_directories:internal_inc,name_prefix:'',c_args:extra_args )
endforeach

test('test_vector3', godot_program, args : ['--path', 'tests/core/vector3', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_vector2', godot_program, args : ['--path', 'tests/core/vector2', '--no-window'], workdir:meson.source_root(),  timeout:60, is_parallel:false)
test('test_rect2', godot_program, args : ['--path', 'tests/core/rect2', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_aabb', godot_program, args : ['--path', 'tests/core/aabb', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_basis', godot_program, args : ['--path', 'tests/core/basis', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)

