from py4godot.classes.ResourceFormatLoader.ResourceFormatLoader cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.enums.enums4 cimport *
from py4godot_core_holder.core_holder cimport *

from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.classes.Script.Script cimport *

cdef void register_class_py_format_loader() with gil

cdef class PyResourceFormatLoader(ResourceFormatLoader):
  cdef char* script_name

  cdef void _init_values(self) # self-defined