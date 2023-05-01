#TODO: Integrate this properly

import json
import os.path
IGNORED_CLASSES = {"Array", "Nil", "bool", "int", "float"}

template_pyx = ""
template_pxd = ""

res_pyx = """
from py4godot.utils.Wrapper4 cimport *
from py4godot.utils.VariantTypeWrapper4 cimport *
from py4godot.utils.utils cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.enums.enums4 cimport *
from py4godot_core_holder.core_holder cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *

from py4godot.classes.Object.Object cimport *
from py4godot.classes.generated4_core cimport *

cdef GDExtensionInterface* gdnative_interface = get_interface()
"""
res_pxd = """
from py4godot.utils.Wrapper4 cimport *
from py4godot.utils.VariantTypeWrapper4 cimport *
from py4godot.utils.Wrapper4 cimport *"""

if __name__ == "__main__":
    with open ("Array_template","r") as array_template:
        template_pyx = array_template.read()
    with open('py4godot/gdextension-api/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES and not "packed" in class_["name"].lower() else None for class_ in
                       obj["builtin_classes"]])
        classes.remove(None)
        for class_ in classes:
            res_pyx += template_pyx.replace("{name}", class_)
            res_pxd += f"""
cdef class {class_}Array(VariantTypeWrapper4):
  @staticmethod
  cdef {class_}Array new_static(GDExtensionTypePtr owner)"""
with open("py4godot/classes/typed_arrays.pyx", "w") as f:
    f.write(res_pyx)

with open("py4godot/classes/typed_arrays.pxd", "w") as f:
    f.write(res_pxd)