from py4godot.godot_bindings.binding_external cimport *
from py4godot.enums.enums import *
from py4godot.pluginscript_api.hints.BaseHint cimport *
cdef class RangeHint(BaseHint):
    def __init__(self, start, stop, step = 1, is_slider=True):
        self.hint = PropertyHint.GODOT_PROPERTY_HINT_RANGE.value
        self.start = start
        self.stop = stop
        self.step = step
        self.is_slider = is_slider
    def get_string(self):
        return f"{self.start},{self.stop},{self.step}{',slider' if self.is_slider else ''}"
