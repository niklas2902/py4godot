import sys,os
import inspect
from py4godot.utils.print_tools import *

"""annotations used to define all the godot members"""
"""methods = []
gd_class = None
gd_tool_class = None
properties = []
signals = []"""

class TransferObject():
    def __init__(self, gd_class):
        self.gd_class = gd_class

def exec_class(source_string):
    global  gd_class
    methods = []
    gd_class = None
    gd_tool_class = None
    properties = []
    signals = []
    print_warning("before exec_source_string:", source_string)
    cdef str string = source_string
    try:
        exec(string)
    except Exception as e:
        print_warning("An Exception happened:", e)
    print_warning("After exec")
    return TransferObject(gd_class)


def gdclass(cls):
        global gd_class
        if(gd_class == None):
            gd_class = cls
        else:
            raise Exception("More than one class was marked as gd_class or gd_tool_class in one file")
        return cls

def gdtool(cls):
        global gd_tool_class

        if(gd_tool_class == None):
            gd_tool_class = cls
        else:
            raise Exception("More than one class was marked as gd_class or gd_tool_class in one file")
        return cls