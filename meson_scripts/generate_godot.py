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

platforms_dict = {"windows64": "Windows.64", "windows32": "Windows.32", "linux64": "X11.64"}
def generate_gdignore(target_platform):
    with open(f"build/final/{target_platform}/cpython-3.12.4-{target_platform}/.gdignore", "w") as gdignore_file:
        pass
