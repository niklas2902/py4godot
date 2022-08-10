import argparse
import os
import subprocess
import time
from Cython.Build import cythonize
import generate_bindings,generate_bindings_pyi

from meson_scripts import copy_tools, download_python, generate_init_files, \
    locations, platform_check, generate_godot, \
    download_godot
generate_bindings_pyi.build()
generate_bindings.build()

def cythonize_files():
    module = cythonize('py4godot_core_holder/*.pyx', language_level=3)
    module = cythonize('py4godot/core/*/*.pyx', language_level=3)
    module += cythonize("py4godot/classes/*.pyx", language_level=3)
    module += cythonize("py4godot/utils/*.pyx", language_level=3)
    module += cythonize("py4godot/pluginscript_api/*.pyx", language_level=3)
    module += cythonize("py4godot/pluginscript_api/*/*.pyx", language_level=3)
    module += cythonize("py4godot/pluginscript_api/*/*/*.pyx", language_level=3)
    module += cythonize("py4godot/gdnative_api/*.pyx", language_level=3)
    module += cythonize("py4godot/enums/*.pyx", language_level=3)
    module += cythonize("py4godot/events/*.pyx", language_level=3)


def compile_python_ver_file(platform):
    """compile python file, to find the matching python version"""
    python_dir = locations.get_python_dir(platform)
    godot_dir = locations.get_godot_dir(platform)
    with open("platforms/binary_dirs/python_ver_temp.cross", "r") as python_temp:
        file_string = python_temp.read()
        # Replacing things like in a template
        file_string = file_string.replace("{python_ver}", python_dir)
        file_string = file_string.replace("{godot}", godot_dir)
        with open("platforms/binary_dirs/python_ver_compile.cross", "w") as python_compile:
            python_compile.write(file_string)


def get_compiler():
    compiler_res = subprocess.run("vcvarsall", shell=True, stdout=subprocess.DEVNULL,
                                  stderr=subprocess.STDOUT)
    if compiler_res.returncode == 0:
        return "msvc"

    compiler_res = subprocess.run("gcc --version", shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.STDOUT)
    if compiler_res.returncode == 0:
        return "gcc"

    raise Exception("No compiler found")


current_platform = platform_check.get_platform()

command_separator = "&"
if "linux" in current_platform:
    command_separator = ";"

my_parser = argparse.ArgumentParser(fromfile_prefix_chars='@')
my_parser.add_argument('--compiler',
                       help='specify the compiler, you want to use to compile')
my_parser.add_argument('--target_platform',
                       help='specify the platform, you want to go build for')
my_parser.add_argument("-run_tests", help="should tests be run", default="False")
my_parser.add_argument("-download_godot", help="should tests be run", default="False")
# Execute parse_args()
args = my_parser.parse_args()

# Determining if tests should be run
should_run_tests = args.run_tests.lower() == "true"
# Determining if godot binary should be downloaded
should_download_godot = args.download_godot.lower() == "true"

build_dir = f"build_meson/{args.target_platform}"

start = time.time()
if args.compiler is None:
    print("Checking for compilers")
    args.compiler = get_compiler()
    print(f"Got compiler:{args.compiler}")

cythonize_files()

# loading the needed python files for the target platform
download_python.download_file(args.target_platform, allow_copy=True)

# downlaod needed python files for the current platform
download_python.download_file(current_platform, allow_copy=False)

compile_python_ver_file(current_platform)

# initializing for msvc if wanted as compiler (todo:should be improved sometime)
msvc_init = f"vcvarsall.bat {'x86_amd64'} {command_separator} cl {command_separator} " if "msvc" in args.compiler else ""

res = subprocess.Popen(msvc_init +
                       f"meson {build_dir} --cross-file platforms/{args.target_platform}.cross "
                       f"--cross-file platforms/compilers/{args.compiler}_compiler.native "
                       f"--cross-file platforms/binary_dirs/python_ver_compile.cross "
                       f"--buildtype=release {'--wipe' if os.path.isdir(build_dir) else ''}"
                       f"{command_separator} ninja -C build_meson/{args.target_platform}",
                       shell=True)

res.wait()
copy_tools.run(args.target_platform)
copy_tools.copy_main(args.target_platform)
copy_tools.copy_stub_files(args.target_platform)
generate_godot.generate_lib(args.target_platform)
generate_godot.generate_gdignore()
generate_init_files.create_init_file(args.target_platform)

print("=================================Build finished==================================")
print("Build took:", time.time() - start, "seconds")

if should_download_godot:
    print("=================================Start download==================================")
    download_godot.run(current_platform)
    print("=================================Fnish download==================================")

# running tests
if should_run_tests:
    print("=================================Start tests==================================")
    start = time.time()
    copy_tools.copy_tests(args.target_platform)
    res = subprocess.Popen(
        f"ninja -C build_meson/{args.target_platform} test", shell=True)
    res.wait()
    streamdata = res.communicate()[0]
    rc = res.returncode
    print("=================================Build finished==================================")
    print("Running tests took:", time.time() - start, "seconds")

    if rc != 0:
        raise Exception("Tests failed")
