
from enum import *
from godot_api.binding_external cimport *
cimport classes.ConfirmationDialog
cdef class FileDialog(classes.ConfirmationDialog.ConfirmationDialog):
    pass
ctypedef enum Mode :MODE_OPEN_FILE, MODE_OPEN_FILES, MODE_OPEN_DIR, MODE_OPEN_ANY, MODE_SAVE_FILE, 
ctypedef enum Access :ACCESS_RESOURCES, ACCESS_USERDATA, ACCESS_FILESYSTEM, 
