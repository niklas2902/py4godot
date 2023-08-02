
cdef class EventHolder:
    cdef dict events_dict
    cdef bint activated
    #cdef add_event(self, object update_event, int addr)

    #cdef notify_event(self, int addr)

cdef EventHolder get_event_holder()