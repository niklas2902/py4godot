project('tutorial', 'c')
add_global_arguments('-DMS_WIN64', language : 'c')

py = import('python').find_installation()
dep_py = py.dependency()
internal_inc = include_directories('godot_api', 'core', 'enums', 'classes', 'pluginscript_api')

message(meson.current_source_dir())
glob = run_command('python', files(meson.current_source_dir()+'/meson_scripts/glob_tools.py'))

sources = glob.stdout().strip().split('\n')
message(sources)

#foreach source : sources
#    shared_library(source, source+'.c',
#    dependencies:[dep_py], include_directories:internal_inc,name_prefix:'', )
#endforeach

copy = run_command('python', files(meson.current_source_dir()+'/meson_scripts/copy_tools.py'))
message(copy.stdout().strip().split('\n'))

