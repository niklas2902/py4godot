lib_file_template = """[general]

load_once=false
singleton=true
reloadable=false
symbol_prefix="godot_"

[entry]
{entries}

[dependencies]
{dependencies}
"""

platforms_dict = {"windows64":"Windows.64", "windows32":"Windows.32", "linux64":"Linux.64"}
python_ver = "cpython-3.9.7"

def generate_lib(platform):
    dependencies = f"{platforms_dict[platform]}=[ ]"
    if "windows" in platform:
        entries = f'{platforms_dict[platform]}="res://addons/{platform}/{python_ver}-{platform}/python/install/main.pyd"'
    elif "linux" in platform:
        entries = f'{platforms_dict[platform]}="res://addons/{platform}/{python_ver}-{platform}/python/install/main.so"'
    with open("build/py4godot.gdnlib", "w") as lib_file:
        lib_file.write(lib_file_template.replace("{entries}", entries).replace("{dependencies}", dependencies))
def generate_gdignore():
    with open("build/addons/.gdignore", "w") as gdignore_file:
        pass