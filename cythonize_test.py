import datetime
from datetime import time
from multiprocessing.pool import Pool
import glob

from Cython.Build import cythonize


def _cythonize(filename: str):
    cythonize(filename, language_level=3, language="c++")


if __name__ == "__main__":
    _time = datetime.datetime.now()
    # classes = glob.glob("py4godot/classes/*/*.pyx")
    # with Pool(4) as pool:
    #    pool.map(_cythonize, classes)

    cythonize("py4godot/test_bridge.pyx", language_level=3, language="c++")
    cythonize("py4godot/core/variant4/Variant4.pyx", language_level=3, language="c++")
    cythonize("py4godot/core/variant4/type_helpers.pyx", language_level=3, language="c++")
    cythonize("py4godot/core/variant4/cast_helpers.pyx", language_level=3, language="c++")
    cythonize("py4godot/classes/generated4_core.pyx", language_level=3, language="c++")
    cythonize("py4godot/classes/constants.pyx", language_level=3, language="c++")
    # cythonize("py4godot/classes/Node3D/Node3D.pyx", language_level=3, language="c++")

    cythonize("py4godot/classes/*/*.pyx", language_level=3, language="c++", nthreads=6)
    # cythonize("py4godot/script_language/*.pyx", language_level=3)
    # cythonize("py4godot/script_extension/*.pyx", language_level=3)
    # cythonize("py4godot/format_saver/*.pyx", language_level=3)
    # cythonize("py4godot/format_loader/*.pyx", language_level=3)
    cythonize("py4godot/script_instance/*.pyx", language_level=3, language="c++")
    cythonize("py4godot/script_extension/script_extension_helpers.pyx", language_level=3, language="c++")
    # cythonize("py4godot/instance_data/*.pyx", language_level=3)
    cythonize("py4godot/enums/enums4.pyx", language_level=3)
    cythonize("py4godot/classes/utils.pyx", language_level=3, language="c++")
    cythonize("py4godot/utils/utils.pyx", language_level=3, language="c++")
    cythonize("py4godot/utils/instance_utils.pyx", language_level=3, language="c++")
    cythonize("py4godot/utils/print_tools.pyx", language_level=3, language="c++")
    cythonize("py4godot/instance_data/InstanceData.pyx", language_level=3, language="c++")
    # cythonize("py4godot/events/*.pyx", language_level=3)
    cythonize("py4godot/pluginscript_api/hints/*.pyx", language_level=3, language="c++")
    cythonize("py4godot/pluginscript_api/utils/helpers.pyx", language_level=3, language="c++")
    # cythonize("py4godot/pluginscript_api/utils/*.pyx", language_level=3, language="c++")
    cythonize("py4godot/godot_bindings/binding4_godot4.pyx", language_level=3, language="c++")
    # cythonize("py4godot/pluginscript_api/api4.pyx", language_level=3)
    cythonize("py4godot/pluginscript_api/utils/annotations.pyx", language_level=3, language="c++")
    cythonize("py4godot/pluginscript_api/utils/SignalDescription.pyx", language_level=3, language="c++")
    cythonize("py4godot/pluginscript_api/utils/PropertyDescription.pyx", language_level=3, language="c++")
    cythonize("py4godot/pluginscript_api/utils/SignalArg.pyx", language_level=3, language="c++")
    print("took:", (datetime.datetime.now() - _time).total_seconds() / 60.)
