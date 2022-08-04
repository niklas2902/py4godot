from py4godot.godot_bindings.binding_external cimport *
from py4godot.enums.enums cimport *
from py4godot.pluginscript_api.hints.BaseHint cimport *
cdef class FileHint(BaseHint):
    def __init__(self, *allowed_file_types, is_global = False):
        self.files = allowed_file_types
        if not is_global:
            self.hint = GODOT_PROPERTY_HINT_FILE
        else:
            self.hint = GODOT_PROPERTY_HINT_GLOBAL_FILE
    def get_string(self):
        string = ""
        for file in self.files:
            string +=file +","
        return string[:-1]
