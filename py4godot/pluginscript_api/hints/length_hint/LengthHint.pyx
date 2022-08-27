from py4godot.godot_bindings.binding_external cimport *
from py4godot.enums.enums cimport *
from py4godot.pluginscript_api.hints.BaseHint cimport *
cdef class LengthHint(BaseHint):
    def __init__(self, length):
        self.length = length
        self.hint = GODOT_PROPERTY_HINT_LENGTH
    def get_string(self):
        return str(self.length)
