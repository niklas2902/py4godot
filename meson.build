project('py4godot', 'c')

cc = meson.get_compiler('c')
message('system:'+build_machine.system())
message('cpu_familiy:'+build_machine.cpu_family())
platform_format = ''
machine = build_machine.system()
if build_machine.cpu_family()=='x86_64'
    platform_format='64'
endif

message('platform:'+platform_format)
message('machine:'+machine)

extra_args = []
message(meson.get_compiler('c').get_id())

if meson.get_compiler('c').get_id() == 'gcc'
    add_global_arguments('-DMS_WIN64', language : 'c')
endif

message(meson.current_source_dir())

if build_machine.system() == 'windows'
    py = import('python').find_installation('python3')
    dep_py = py.dependency()
    internal_inc = include_directories('py4godot/godot-headers', 'py4godot/core', 'py4godot/enums',
    'py4godot/classes', 'py4godot/pluginscript_api', 'py4godot/godot_bindings',)
    glob = run_command('python', files(meson.current_source_dir()+'/meson_scripts/glob_tools.py'))
endif

if build_machine.system() == 'linux'
    lib_py = cc.find_library('python3.9', dirs:meson.current_source_dir()+'/python_files/cpython-3.9.7-'+machine+platform_format+'/python/install/lib')
    internal_inc = include_directories('py4godot/godot-headers', 'py4godot/core', 'py4godot/enums',
    'py4godot/classes', 'py4godot/pluginscript_api', 'py4godot/godot_bindings',
    'python_files/cpython-3.9.7-linux'+platform_format+'/python/install/include/python3.9')
    glob = run_command('python3', files(meson.current_source_dir()+'/meson_scripts/glob_tools.py'))
endif

godot_program = find_program('godot')
sources = glob.stdout().strip().split('\n')
message(sources)
if build_machine.system() == 'linux'
    foreach source : sources
        shared_library(source, source+'.c',
        dependencies:[lib_py], include_directories:internal_inc,name_prefix:'',c_args:extra_args )
    endforeach
endif

if build_machine.system() == 'windows'
    foreach source : sources
        shared_library(source, source+'.c',
        dependencies:[dep_py], include_directories:internal_inc,name_prefix:'',c_args:extra_args )
    endforeach
endif

test('test_vector3', godot_program, args : ['--path', 'tests/core/vector3', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_vector2', godot_program, args : ['--path', 'tests/core/vector2', '--no-window'], workdir:meson.source_root(),  timeout:60, is_parallel:false)
test('test_rect2', godot_program, args : ['--path', 'tests/core/rect2', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_aabb', godot_program, args : ['--path', 'tests/core/aabb', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_basis', godot_program, args : ['--path', 'tests/core/basis', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_array', godot_program, args : ['--path', 'tests/core/array', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_color', godot_program, args : ['--path', 'tests/core/color', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_dictionary', godot_program, args : ['--path', 'tests/core/dictionary', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_node_path', godot_program, args : ['--path', 'tests/core/node_path', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_rid', godot_program, args : ['--path', 'tests/core/rid', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_quat', godot_program, args : ['--path', 'tests/core/quat', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)
test('test_transform', godot_program, args : ['--path', 'tests/core/transform', '--no-window'], workdir:meson.source_root(), timeout:60, is_parallel:false)

