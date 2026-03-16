# This is for github workflows
# As each time, we install cython, when using the cached version, it gets a new timestamp, we reset the timestamp
import glob
import os
import time

files = glob.glob("C:/hostedtoolcache/windows/Python/3.11.3/x64/Lib/site-packages/Cython/Includes/libcpp/*.pxd")
class_pxd_files = glob.glob("py4godot/classes/**/*.pxd", recursive=True)
class_pyx_fiels = glob.glob("py4godot/classes/**/*.pyx", recursive=True)
files += class_pxd_files + class_pyx_fiels
# Desired modification time (in the format: Year, Month, Day, Hour, Minute, Second)
desired_time = (2023, 1, 15, 12, 30, 0)

# Convert the desired time to a Unix timestamp
timestamp = time.mktime(desired_time + (0, 0, -1))  # Adding dummy values for timezone and DST correction

for file in files:
    # Set the access and modification times to the desired time
    os.utime(file, (timestamp, timestamp))

    print(f"Modification date of {file} updated.")