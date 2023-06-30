from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.events.events import *
import threading
from cpython cimport Py_INCREF, Py_DECREF, PyObject

lock = threading.Lock()
cdef class EventHolder:

    def __init__(self):
        self.events_dict = dict()
    cdef add_event(self, object update_event, int addr):
        self.events_dict[addr] = update_event

    def notify_event(self, addr):
        with lock:
            if(addr in self.events_dict.keys()):
                self.events_dict[addr]()

    def test_method(self, a, b):
        pass
event_holder = EventHolder()
cdef EventHolder get_event_holder():
    return event_holder
