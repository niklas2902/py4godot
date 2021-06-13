
from enum import *
from godot_api.binding_external cimport *
cimport classes.Control
cdef class RichTextLabel(classes.Control.Control):
    pass
ctypedef enum RichTextLabel_Align :ALIGN_LEFT, ALIGN_CENTER, ALIGN_RIGHT, ALIGN_FILL, 
ctypedef enum RichTextLabel_ListType :LIST_NUMBERS, LIST_LETTERS, LIST_DOTS, 
ctypedef enum RichTextLabel_ItemType :ITEM_FRAME, ITEM_TEXT, ITEM_IMAGE, ITEM_NEWLINE, ITEM_FONT, ITEM_COLOR, ITEM_UNDERLINE, ITEM_STRIKETHROUGH, ITEM_ALIGN, ITEM_INDENT, ITEM_LIST, ITEM_TABLE, ITEM_FADE, ITEM_SHAKE, ITEM_WAVE, ITEM_TORNADO, ITEM_RAINBOW, ITEM_META, ITEM_CUSTOMFX, 
