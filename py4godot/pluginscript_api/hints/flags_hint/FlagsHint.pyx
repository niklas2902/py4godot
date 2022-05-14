from py4godot.godot_bindings.binding_external cimport *
from py4godot.enums.enums cimport *
from py4godot.pluginscript_api.hints.BaseHint cimport *
cdef class EnumHint(BaseHint):
    def __init__(self, *flags):
        self.flags = flags
        self.hint = GODOT_PROPERTY_HINT_FLAGS
    def get_string(self):
        string = ""
        for enum in self.flags:
            string +=enum +","
        return string[:-1]
