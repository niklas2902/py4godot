# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.pluginscript_api.utils.utils cimport *

cdef object convert_val(object val)
cdef GDExtensionVariantType get_variant_type(object type_)