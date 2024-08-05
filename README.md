# py4godot
The target of this project is to bring python to godot via gdextension.

Inspiration for this project was taken from: https://github.com/touilleMan/godot-python.

This project is currently in an early phase of development. Consider this more as a demo and don't use this for bigger projects.
## Prerequesits
You need a Python 3 version of at least 3.11 with pip installed.

## How to build

### Windows

#### Setting up a virtual environment (optional)
As this project depends on some modules which are downloaded by pip, if you don't want to mess with your packages, you should set up a virtual enviroment.
The following code should be executed after cloning the repo
```console
$ python -m venv virtual_python #creating the folder with the virtual environemnt
$ .\virtual_python\Scripts\activate #starting the virtual enviromnent 
$ pip install -r requirements.txt #load dependencies from the textfile requirements.txt

```
### Generating files
We want to generate the files, we will later use for the cython compilation like this:
```console
$ python generate_files.py
```

Now we use Cython to generate the C++ files for our Python classes. 
Please note that this takes a while (4 hours for me). So feel free to make yourself a coffee and spend a little time with your family.
You can tweak the file a bit by changing the parameters `NTHREADS` and `BATCH_SIZE`
depending on your RAM and CPU capabilities.
```console
$ python cythonize_files.py
```

#### Compile project
Now, we just need to compile the project. The result of the compilation can be found on build/final # TODO. build whole plugin for build.
```console
$ python build.py --target_platform=windows64 --compiler=msvc 
```

### Linux
Building for linux was testet on Ubuntu 20.04.4 LTS
#### Setting up a virtual environment (optional)
The following code should be executed after cloning the repo
```console
$ python3 -m venv virtual_python #creating the folder with the virtual environemnt
$ .\virtual_python\Scripts\activate #starting the virtual enviromnent 
$ pip install -r requirements.txt #load dependencies from the textfile requirements.txt
```
### Generating files
We want to generate the files, we will later use for the cython compilation like this:
```console
$ python generate_files.py
```

Now we use Cython to generate the C++ files for our Python classes. 
Please note that this takes a while (4 hours for me). So feel free to make yourself a coffee and spend a little time with your family.
You can tweak the file a bit by changing the parameters `NTHREADS` and `BATCH_SIZE`
depending on your RAM and CPU capabilities.
```console
$ python cythonize_files.py
```

#### Compile project
Now, we just need to compile the project. The result of the compilation can be found on build/final # TODO. build whole plugin for build.
```console
$ python build.py --target_platform=windows64 --compiler=clang 
```
## Example Code
Here you can see a basic example of how this project can be used. 
Please note, that the classname you define under `@gdclass` must match the filename
```python 
# file: node3d.py
from py4godot import prop, signal, gdclass, gdmethod
from py4godot.pluginscript_api.utils.SignalArg import *
from py4godot.constants.constants import VECTOR3_UP
from py4godot.classes.core import Vector3
from py4godot.classes.Node3D.Node3D import Node3D

@gdclass
class node3d(Node3D):

	# define properties like this
	test_int: int = gdproperty(int, 5)
	test_float: float = gdproperty(float, 5.2)
	test_bool: bool = gdproperty(bool, True)
	test_vector: Vector3 = gdproperty(Vector3, Vector3.new0())

	# define signals like this
	signal("test_signal", [SignalArg("test_arg", int)])


	def _ready(self) -> None:
		pass
		# put initialization code here

	def _process(self, delta:float) -> None:
		pass
		# put dynamic code here

	# Method visible in the godot editor, e.g. for connecting signals
	@gdmethod
	def test_method(self):
		pass
```


