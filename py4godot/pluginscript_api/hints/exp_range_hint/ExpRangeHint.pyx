from py4godot.godot_bindings.binding_external cimport *
from py4godot.enums.enums cimport *
from py4godot.pluginscript_api.hints.BaseHint cimport *
cdef class ExpRangeHint(BaseHint):
    def __init__(self, start, stop, step):
        self.start = start
        self.stop = stop
        self.step = step
        self.hint = GODOT_PROPERTY_HINT_EXP_RANGE
    def get_string(self):
        return f"{self.start},{self.stop},{self.step}"
