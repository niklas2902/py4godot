from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.utils.utils cimport *
from py4godot.utils.print_tools import *

cdef object convert_val(object val)
cdef GDExtensionVariantType get_variant_type(object type_)