# py4godot
Trying to create a plugin for the godot engine based on this project: https://github.com/touilleMan/godot-python.

This project is currently in an early phase of development. Consider this more as a demo and don't use this for bigger projects.
## Prerequesits
You need a Python 3 version of at least 3.6 with pip installed.

## How to build

### Windows

#### Setting up a virtual environment (optional)
As this project depends on some modules which are downloaded by pip, if you don't want to mess with your packages, you should set up a virtual enviroment.
The following should be executed after cloning the repo
```console
python -m venv virtual_python #creating the folder with the virtual environemnt
.\virtual_python\Scripts\activate #starting the virtual enviromnent 
```
#### Compile project
```console
pip install -r requirements.txt #load dependencies from the textfile requirements.txt
python build.py --target_platform=windows64 --compiler=clang 
```

###Linux
Building for linux was testet on Ubuntu 20.04.4 LTS
#### Setting up a virtual environment (
The following should be executed after cloning the repo
```console
python3 -m venv virtual_python #creating the folder with the virtual environemnt
.\virtual_python\Scripts\activate #starting the virtual enviromnent 
```
#### Compile project
```console
pip3 install -r requirements.txt #load dependencies from the textfile requirements.txt
python3 build.py --target_platform=linux64 --compiler=clang 
```

## Example Code
Here you can see a basic example of how this project can be used
```python
from py4godot import *

DEFAULT_VEL = 5
@gdclass
class TestRunner(Spatial):
	register_signal("test") #declaring the signals which could later be used
		
	@gdmethod
	def _ready(self):
		self.velocity = DEFAULT_VEL
		self.emit_signal(String("test"), "hallo")
		
	
	@gdproperty(int, DEFAULT_VEL, hint=PropertyHint.GODOT_PROPERTY_HINT_RANGE.value,
	 hint_string="1,100,5,slider")
	def vel(self):
		return self.velocity
	@vel.setter
	def vel(self, value):
		self.velocity = value
	
	@gdmethod
	def _process(self, delta):
		input = Input.instance()
	
	def test(self, test):
		print("hallo:",test )
		print("test_emitted")

```


