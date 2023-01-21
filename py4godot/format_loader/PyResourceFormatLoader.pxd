from py4godot.classes.ResourceFormatLoader.ResourceFormatLoader cimport *
from py4godot.classes.ScriptLanguageExtension.ScriptLanguageExtension cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.enums.enums4 cimport *
from py4godot_core_holder.core_holder cimport *

from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.classes.Script.Script cimport *

cdef void register_class_py_format_loader() with gil

cdef class PyResourceFormatLoader(ResourceFormatLoader):
  cdef char* script_name
  cdef list extensions
  cdef ScriptLanguageExtension language
  cdef String py

  cdef void _init_values(self) # self-defined
  cdef void set_language(self, ScriptLanguageExtension language) # self-defined
  cdef _get_recognized_extensions(self, GDNativeTypePtr res)
  cdef _recognize_path(self, String path, StringName type, GDNativeTypePtr res)
  cdef _handles_type(self, StringName type, GDNativeTypePtr res)
  cdef _get_resource_type(self, String path, GDNativeTypePtr res)
  cdef _get_resource_uid(self, String path, GDNativeTypePtr res)
  cdef _get_dependencies(self, String path, bool add_types, GDNativeTypePtr res)
  cdef _rename_dependencies(self, String path, Dictionary renames, GDNativeTypePtr res)
  cdef _exists(self, String path, GDNativeTypePtr res)
  cdef _get_classes_used(self, String path, GDNativeTypePtr res)
  cdef _load(self, String path, String original_path, bool use_sub_threads, int cache_mode, GDNativeTypePtr res)