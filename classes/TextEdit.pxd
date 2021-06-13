
from enum import *
from godot_api.binding_external cimport *
cimport classes.Control
cdef class TextEdit(classes.Control.Control):
    pass
ctypedef enum TextEdit_SearchFlags :SEARCH_MATCH_CASE, SEARCH_WHOLE_WORDS, SEARCH_BACKWARDS, 
ctypedef enum TextEdit_SearchResult :SEARCH_RESULT_COLUMN, SEARCH_RESULT_LINE, 
ctypedef enum TextEdit_MenuItems :MENU_CUT, MENU_COPY, MENU_PASTE, MENU_CLEAR, MENU_SELECT_ALL, MENU_UNDO, MENU_REDO, MENU_MAX, 
