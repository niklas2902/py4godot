import_string = """
from core.vector3.Vector3 import *
from core.vector2.Vector2 import *
from core.variant.Variant import *
from core.transform.Transform import *
from core.transform.Transform2D import *
from core.string_name.StringName import *
from core.string.String import *
from core.rid.RID import *
from core.rect2.Rect2 import *
from core.quat.Quat import *
from core.plane.Plane import *
from core.node_path.NodePath import *
from core.dictionary.Dictionary import *
from core.color.Color import *
from core.basis.Basis import *
from core.array.Array import *
from core.aabb.AABB import *
"""
build_folder = "build/addons"
core_folder = "core"
def create_init_file(platform):
    """generate the __init__ file needed for the core module"""
    with open(f"{build_folder}/{platform}/{core_folder}/__init__.py", "w") as init_file:
        init_file.write(import_string)