import argparse
import os
import shutil
import subprocess
import sys
import time
import traceback
from shutil import copytree

from Cython.Build import cythonize

from build_tools import download_get_pip
from meson_scripts import copy_tools, download_python, generate_init_files, \
    locations, platform_check, generate_godot, \
    download_godot
from meson_scripts.fix_path_macos import fix_macos_paths

# generate_bindings_pyi.build()
# generate_bindings.build()

def cythonize_files():
    return
    module = cythonize('py4godot_core_holder/*.pyx', language_level=3)
    module = cythonize('py4godot/core/*/*.pyx', language_level=3)
    module += cythonize("py4godot/classes/*.pyx", language_level=3)
    module += cythonize("py4godot/classes/utils.pyx", language_level=3)
    module += cythonize("py4godot/utils/*.pyx", language_level=3)
    module += cythonize("py4godot/pluginscript_api/*.pyx", language_level=3)
    module += cythonize("py4godot/pluginscript_api/*/*.pyx", language_level=3)
    module += cythonize("py4godot/pluginscript_api/*/*/*.pyx", language_level=3)
    module += cythonize("py4godot/gdnative_api/*.pyx", language_level=3)
    module += cythonize("py4godot/enums/*.pyx", language_level=3)
    module += cythonize("py4godot/events/*.pyx", language_level=3)


def generate_files():
    pass
    # res = subprocess.Popen(f"python generate_classes.py", shell=True)
    # res.wait()
    # if res.returncode != 0:
    #    raise Exception("generation failed")
    # res = subprocess.Popen(f"python generate_classes_cpp.py", shell=True)
    # res.wait()
    # if res.returncode != 0:
    #    raise Exception("generation failed")
    # res = subprocess.Popen(f"python generate_classes_hpp.py", shell=True)
    # res.wait()
    # if res.returncode != 0:
    #    raise Exception("generation failed")
    # TODO: enable again
    # res = subprocess.Popen(f"python generate_enums.py", shell=True)
    # res.wait()
    # res = subprocess.Popen(f"python generate_enums_cpp.py", shell=True)
    # res.wait()
    # if res.returncode != 0:
    #    raise Exception("generation failed")
    #res = subprocess.Popen(f"python generate_classes_pyi.py", shell=True)
    #res.wait()
    #if res.returncode != 0:
    #   raise Exception("generation failed")
    # res = subprocess.Popen(f"python cythonize_files.py", shell=True)
    # res.wait()
    # if res.returncode != 0:
    #    raise Exception("generation failed")


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

def get_debug_release_cross_compile_file(compiler, buildtype):
    if "msvc" in compiler:
        if "release" in buildtype:
            return "--cross-file platforms/release_debug/msvc_release.cross"
        else:
            return "--cross-file platforms/release_debug/msvc_debug.cross"
    elif "gcc" in compiler or "g++" in compiler:
        if "release" in buildtype:
            return "--cross-file platforms/release_debug/g++_release.cross"
        else:
            return "--cross-file platforms/release_debug/g++_debug.cross"
    elif "clang" in compiler:
        if "release" in buildtype:
            return "--cross-file platforms/release_debug/clang_release.cross"
        else:
            return "--cross-file platforms/release_debug/clang_debug.cross"


def get_compiler():
    compiler_res = subprocess.run("vcvarsall", shell=True, stdout=subprocess.DEVNULL,
                                  stderr=subprocess.STDOUT)
    if compiler_res.returncode == 0:
        return "msvc"

    compiler_res = subprocess.run("gcc --version", shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.STDOUT)
    if compiler_res.returncode == 0:
        return "gcc"

    raise Exception("No compiler found")


generate_files()

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
my_parser.add_argument("-create_plugin", help="Should this create a plugin", default="True")
my_parser.add_argument("-buildtype", help="Should this be a debug build or release build, options are release or debugoptimized", default="release")
my_parser.add_argument("-auto_install", help="Should the build automatically install pip and dependencies", default="False")

# Execute parse_args()
args = my_parser.parse_args()

# Determining if tests should be run
should_run_tests = args.run_tests.lower() == "true"
# Determining if godot binary should be downloaded
should_download_godot = args.download_godot.lower() == "true"
build_dir = f"build/{args.target_platform}"

build_type = args.buildtype.lower().strip()

start = time.time()
if args.compiler is None:
    print("Checking for compilers")
    args.compiler = get_compiler()
    print(f"Got compiler:{args.compiler}")

# cythonize_files()

copy_tools.clear_build()
# loading the needed python files for the target platform
download_python.download_file(args.target_platform, allow_copy=True)

# downlaod needed python files for the current platform
download_python.download_file(current_platform, allow_copy=False)

compile_python_ver_file(current_platform)


def run_with_msvc_env(command, target_arch="arm64"):
    """Run a command with MSVC environment initialized"""
    if "msvc" not in args.compiler:
        # Not using MSVC, run command directly
        return subprocess.run(command, shell=True, check=True)

    # Try to find Visual Studio using multiple methods
    vcvarsall_path = None

    # Method 1: Use vswhere.exe (most reliable)
    vswhere_locations = [
        os.path.join(os.environ.get('ProgramFiles(x86)', ''), 'Microsoft Visual Studio', 'Installer', 'vswhere.exe'),
        os.path.join(os.environ.get('ProgramFiles', ''), 'Microsoft Visual Studio', 'Installer', 'vswhere.exe'),
    ]

    for vswhere_path in vswhere_locations:
        if os.path.exists(vswhere_path):
            try:
                vs_path = subprocess.check_output([vswhere_path, '-latest', '-property', 'installationPath'],
                                                  text=True).strip()
                vcvarsall_candidate = os.path.join(vs_path, "VC", "Auxiliary", "Build", "vcvarsall.bat")
                if os.path.exists(vcvarsall_candidate):
                    vcvarsall_path = vcvarsall_candidate
                    break
            except subprocess.CalledProcessError:
                continue

    # Method 2: Check environment variables
    if not vcvarsall_path:
        vs_vars = ['VS170COMNTOOLS', 'VS160COMNTOOLS', 'VS150COMNTOOLS', 'VS140COMNTOOLS']
        for var in vs_vars:
            if var in os.environ:
                # VS tools are in Common7/Tools, vcvarsall is in VC/Auxiliary/Build
                vs_root = os.path.dirname(os.path.dirname(os.environ[var]))
                vcvarsall_candidate = os.path.join(vs_root, "VC", "Auxiliary", "Build", "vcvarsall.bat")
                if os.path.exists(vcvarsall_candidate):
                    vcvarsall_path = vcvarsall_candidate
                    break

    # Method 3: Check common installation directories using environment variables
    if not vcvarsall_path:
        program_dirs = [
            os.environ.get('ProgramFiles', ''),
            os.environ.get('ProgramFiles(x86)', ''),
        ]

        vs_versions = ['2022', '2019', '2017']
        vs_editions = ['Enterprise', 'Professional', 'Community', 'BuildTools']

        for prog_dir in program_dirs:
            if not prog_dir:
                continue
            for version in vs_versions:
                for edition in vs_editions:
                    vcvarsall_candidate = os.path.join(
                        prog_dir, 'Microsoft Visual Studio', version, edition,
                        'VC', 'Auxiliary', 'Build', 'vcvarsall.bat'
                    )
                    if os.path.exists(vcvarsall_candidate):
                        vcvarsall_path = vcvarsall_candidate
                        break
                if vcvarsall_path:
                    break
            if vcvarsall_path:
                break

    # Method 4: Try PATH (last resort)
    if not vcvarsall_path:
        try:
            # Try to run vcvarsall directly - it might be in PATH
            subprocess.run(['vcvarsall.bat'], shell=True, check=True,
                           stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            vcvarsall_path = "vcvarsall.bat"
        except subprocess.CalledProcessError:
            raise RuntimeError("Could not find vcvarsall.bat. Please ensure Visual Studio is properly installed.")

    # Combine vcvarsall initialization with your command
    full_command = f'"{vcvarsall_path}" {target_arch} && {command}'

    return subprocess.run(full_command, shell=True, check=True)


# Main build logic
res = None
try:
    print("starting building:")
    if os.path.exists(build_dir):
        command = (
            f"meson setup {build_dir} "
            f"--cross-file platforms/{args.target_platform}.cross "
            f"--cross-file platforms/compilers/{args.compiler}_compiler.native "
            f"--cross-file platforms/binary_dirs/python_ver_compile.cross "
            f"{get_debug_release_cross_compile_file(args.compiler, build_type)} "
            f"{'-Dcpp_args=-DAUTO_INSTALL=1 ' if args.auto_install.lower() == 'true' else ''}"
            f"--buildtype={args.buildtype} "
        )

        print("command:\n", command)
        run_with_msvc_env(command)

        command = f"meson compile -C build/{args.target_platform}"
        print("command:\n", command)
        run_with_msvc_env(command)
    else:
        command = (
            f"meson setup {build_dir} "
            f"--cross-file platforms/{args.target_platform}.cross "
            f"--cross-file platforms/compilers/{args.compiler}_compiler.native "
            f"--cross-file platforms/binary_dirs/python_ver_compile.cross "
            f"{'-Dcpp_args=-DAUTO_INSTALL=1 ' if args.auto_install.lower() == 'true' else ''}"
            f"--buildtype={args.buildtype} "
            f"{get_debug_release_cross_compile_file(args.compiler, build_type)} "
        )

        print("command:\n", command)
        run_with_msvc_env(command)

        command = f"meson compile -C build/{args.target_platform}"
        print("command:\n", command)
        run_with_msvc_env(command)
    fix_macos_paths()
    copy_tools.run(args.target_platform)
    copy_tools.copy_main(args.target_platform)
    copy_tools.copy_mingw(args.compiler, args.target_platform)
    copy_tools.copy_stub_files(args.target_platform)
    copy_tools.copy_experimental(args.target_platform)
    generate_godot.generate_gdignore(args.target_platform)
    generate_init_files.create_init_file(args.target_platform)

    should_create_plugin =args.create_plugin
    #TODO: ignore unnecessary copy. Don't copy stuff to final
    if should_create_plugin.lower() == "true":
        if  os.path.exists("build/py4godot") and os.path.isdir("build/py4godot"):
            shutil.rmtree("build/py4godot")
        copytree(f"build/final/{args.target_platform}/cpython-3.12.4-{args.target_platform}", f"build/py4godot/cpython-3.12.4-{args.target_platform}")
        shutil.copy("build_resources/python.gdextension", "build/py4godot/python.gdextension")
        shutil.copy("build_resources/dependencies.txt", "build/py4godot/dependencies.txt")
        shutil.copy("build_resources/install_dependencies.py", "build/py4godot/install_dependencies.py")
        download_get_pip("build/py4godot")
        python_svg_dest = "build/py4godot/"+ "/Python.svg"
        if not os.path.exists(python_svg_dest):
            shutil.copy("build_resources/Python.svg", python_svg_dest)


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
        print("copy_tests")
        copy_tools.copy_tests(args.target_platform)
        print("run tests")
        res = subprocess.Popen(
            f"ninja -C build/{args.target_platform} test", shell=True)
        res.wait()
        streamdata = res.communicate()[0]
        rc = res.returncode
        print("=================================Build finished==================================")
        print("Running tests took:", time.time() - start, "seconds")

        if rc != 0:
            raise Exception("Tests failed")

except Exception as e:
    print("---------------------------------Build failed-----------------------------------")
    print(e)
    traceback.print_exc()
    sys.exit(1)