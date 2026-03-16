import os
import sys

if os.path.isfile("py4godot/classes/cache"):
    print("Cache exists")
    sys.exit(0)
else:
    print("Cache does not exist")
    sys.exit(1)