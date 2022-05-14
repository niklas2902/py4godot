from py4godot.godot_bindings.binding_external cimport *
from py4godot.enums.enums cimport *
from py4godot.pluginscript_api.hints.BaseHint cimport *
cdef class EnumHint(BaseHint):
    def __init__(self, *enums):
        self.enums = enums
        self.hint = GODOT_PROPERTY_HINT_ENUM
    def get_string(self):
        string = ""
        for enum in self.enums:
            string +=enum +","
        return string[:-1]
