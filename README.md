# py4godot
*Python scripting for Godot*. This GDExtension plugin allows you to use Python like GDScript, accessing the Godot engine's features and benefiting from Python's vast ecosystem.

Inspiration for this project was taken from: https://github.com/touilleMan/godot-python.

This project is currently in an early phase of development. Consider this more as a demo and don't use this for bigger projects. At the moment only Windows 64 bit and Linux 64 bit are supported.

You can check out the api documenthation here: [Api Documentation](https://github.com/niklas2902/py4godot/wiki/API-Documentation)
## Install
Download the .zip from Releases, extract it and copy the folder into the addons folder on the root of your project.
## Prerequesits
You need a Python 3 version of at least 3.11 with pip installed.

## How to build

### Windows

#### Init submodules
inititalize submodules
```console
$ git submodule init
$ git submodule update
```
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
$ python generate.py
```

Now we use Cython to generate the C++ files for our Python classes. 
Please note that this takes a while (4 hours for me). So feel free to make yourself a coffee and spend a little time with your family.
You can tweak the file a bit by changing the parameters `NTHREADS` and `BATCH_SIZE`
depending on your RAM and CPU capabilities.
```console
$ python cythonize_files.py
```

if you want faster building, you can build a minimized version. This doesn't include all the classes, but should be enoug for most development and simple projects. For this just call `generate.py`and `cythonize_files.py` with the following options:
```console
$ python generate.py -dev_build=True
$ python cythonize_files.py -mode="dev"
```

#### Compile project
Now, we just need to compile the project. The result of the compilation can be found on build/py4godot
```console
$ python build.py --target_platform=windows64 --compiler=msvc 
```

### Linux
Building for linux was testet on Ubuntu 20.04.4 LTS
#### Init submodules
inititalize submodules
```console
$ git submodule init
$ git submodule update
```
#### Setting up a virtual environment (optional)
The following code should be executed after cloning the repo
```console
$ python3 -m venv venv  # creating the folder with the virtual environment
$ source venv/bin/activate  # starting the virtual environment
$ pip install -r requirements.txt  # load dependencies from the text file requirements.txt
```
If you are on Python 3.12, you unfortunately have to use this workarount:
```console
$ pip install setuptools #Weirdly cython on linux depends on distutils. But python3.12 doesn't provide this anymore. So we have to use this workaround
$ python copy_distutils.py
```
### Generating files
We want to generate the files, we will later use for the cython compilation like this:
```console
$ python generate.py
```

Now we use Cython to generate the C++ files for our Python classes. 
Please note that this takes a while (4 hours for me). So feel free to make yourself a coffee and spend a little time with your family.
You can tweak the file a bit by changing the parameters `NTHREADS` and `BATCH_SIZE`
depending on your RAM and CPU capabilities.
```console
$ python cythonize_files.py
```
if you want faster building, you can build a minimized version. This doesn't include all the classes, but should be enoug for most development and simple projects. For this just call `generate.py`and `cythonize_files.py` with the following options:
```console
$ python generate.py -dev_build=True
$ python cythonize_files.py -mode="dev"
```

#### Compile project
Now, we just need to compile the project. The result of the compilation can be found on build/py4godot
```console
$ python build.py --target_platform=linux64 --compiler=gcc 
```
## Example Code
Here you can see a basic example of how this project can be used. 
Please note, that the classname you define under `@gdclass` must match the filename
```python 
# file: node3d.py
from py4godot.methods import private
from py4godot.signals import signal, SignalArg
from py4godot.classes import gdclass
from py4godot.classes.core import Vector3
from py4godot.constants.constants import VECTOR3_UP
from py4godot.classes.Node3D.Node3D import Node3D

@gdclass
class node3d(Node3D):

	# define properties like this
	test_int: int = 5
	test_float: float = 5.2
	test_bool: bool = True
	test_vector: Vector3 = Vector3.new3(1,2,3)

	# define signals like this
	test_signal = signal([SignalArg("test_arg", int)])


	def _ready(self) -> None:
		pass
		# put initialization code here

	def _process(self, delta:float) -> None:
		pass
		# put dynamic code here

	# Hide the method in the godot editor
	@private
	def test_method(self):
		pass
```


