from py4godot.godot_bindings.binding_external cimport *
from py4godot.enums.enums cimport *
from py4godot.pluginscript_api.description_classes.hints.BaseHint cimport *
cdef class CustomHint(BaseHint):
    def __init__(self, hint, hint_string):
        self.hint = hint
        self.hint_string = hint_string
    def get_string(self):
        return self.hint_string
