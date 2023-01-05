from py4godot.classes.ResourceFormatSaver.ResourceFormatSaver cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.enums.enums4 cimport *
from py4godot_core_holder.core_holder cimport *

from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.classes.Script.Script cimport *

cdef void register_class_py_format_saver() with gil

cdef class PyResourceFormatSaver(ResourceFormatSaver):
  cdef list extensions

  cdef void _init_values(self) # self-defined
  cdef void _save(self, Resource resource, String path, int flags, GDNativeTypePtr res)
  cdef void _recognize(self, Resource resource, GDNativeTypePtr res)
  cdef void _get_recognized_extensions(self, Resource resource, GDNativeTypePtr res)
  cdef void _recognize_path(self, Resource resource, String path, GDNativeTypePtr res)