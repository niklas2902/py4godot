import os
import glob
import time
import gc
import subprocess
import sys
import multiprocessing as mp
from tqdm import tqdm

NTHREADS = 5  # Adjust based on your CPU
BATCH_SIZE = 5  # Adjust based on your system's capabilities


def cythonize_file(filename):
    """Cythonize a single file using a subprocess to isolate memory usage."""
    start_time = time.time()
    cmd = [
        sys.executable, "-m", "cython",
        "-a",  # annotate
        filename
    ]
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"Error cythonizing {filename}:")
        print(result.stderr)
        return False

    end_time = time.time()
    print(f"Compiled {filename} in {end_time - start_time:.2f} seconds")
    return True


def process_batch(batch_files):
    """Process a batch of files using a pool of workers."""
    successful = 0
    start_time = time.time()

    # Use a process pool to parallelize work while isolating memory
    with mp.Pool(processes=NTHREADS) as pool:
        results = list(pool.map(cythonize_file, batch_files))

    successful = sum(results)
    end_time = time.time()

    print(f"Batch completed: {successful}/{len(batch_files)} files in {end_time - start_time:.2f} seconds")
    print("##############################")

    # Force garbage collection after each batch
    gc.collect()

    return successful


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
    total_successful = 0

    print(f"Found {total_files} files to compile")

    for i in tqdm(range(0, total_files, BATCH_SIZE), desc="Total progress:", smoothing=0.8):
        batch = files_to_cythonize[i:i + BATCH_SIZE]
        successful = process_batch(batch)
        total_successful += successful

        # Explicit garbage collection again after each batch
        gc.collect()

    print(f"Compiled {total_successful}/{total_files} files successfully")


if __name__ == "__main__":
    main()