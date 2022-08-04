from py4godot.godot_bindings.binding_external cimport *
from py4godot.pluginscript_api.hints.BaseHint cimport *

cdef class FileHint(BaseHint):
    cdef files