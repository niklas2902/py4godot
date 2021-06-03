
from enum import *
from godot_api.binding_external cimport *
cimport classes.Control
cdef class TextEdit(classes.Control.Control):
    pass
ctypedef enum SearchFlags :SEARCH_MATCH_CASE, SEARCH_WHOLE_WORDS, SEARCH_BACKWARDS, 
ctypedef enum SearchResult :SEARCH_RESULT_COLUMN, SEARCH_RESULT_LINE, 
ctypedef enum MenuItems :MENU_CUT, MENU_COPY, MENU_PASTE, MENU_CLEAR, MENU_SELECT_ALL, MENU_UNDO, MENU_REDO, MENU_MAX, 
