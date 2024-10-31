import os
import glob
import time

from Cython.Build import cythonize
from tqdm import tqdm

NTHREADS = 3  # Adjust based on your CPU
BATCH_SIZE = 3  # Adjust based on your system's capabilities

def cythonize_batch(filenames):
    start_time = time.time()
    cythonize(filenames, language_level=3, nthreads=NTHREADS, annotate=True, cache=True)
    end_time = time.time()
    print("Total time elapsed for batch: {:.2f}".format(end_time - start_time))

def main():
    file_patterns = [
        "py4godot/functions.pyx",
        "py4godot/signals.pyx",
        "py4godot/classes/Object/Object.pyx",
        "py4godot/classes/AESContext/AESContext.pyx",
        "py4godot/core/variant4/Variant4.pyx",
        "py4godot/core/variant4/type_helpers.pyx",
        "py4godot/core/variant4/cast_helpers.pyx",
        "py4godot/script_instance/*.pyx",
        "py4godot/script_extension/script_extension_helpers.pyx",
        "py4godot/constants.pyx",
        "py4godot/enums/enums.pyx",
        "py4godot/utils/utils.pyx",
        "py4godot/utils/instance_utils.pyx",
        "py4godot/utils/print_tools.pyx",
        "py4godot/instance_data/InstanceData.pyx",
        "py4godot/hints/*.pyx",
        "py4godot/pluginscript_api/utils/*.pyx",
        "py4godot/godot_bindings/binding4_godot4.pyx",
        "py4godot/classes/*.pyx"]

    files_to_cythonize = []
    for pattern in file_patterns:
        files_to_cythonize.extend(glob.glob(pattern, recursive=True))

    total_files = len(files_to_cythonize)

    for i in tqdm(range(0, total_files, BATCH_SIZE), desc="Total progress:", smoothing=0.8):
        batch = files_to_cythonize[i:i+BATCH_SIZE]
        cythonize_batch(batch)
        print("##############################")

    print(f"Compiled {total_files} files")

if __name__ == "__main__":
    main()