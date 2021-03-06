from core.rid.rid_binding cimport *

cdef class RID:

    def __init__(self, godot_rid _native):
        if (_native != None):
            self._native = _native
        else:
            pass
            #api_core.godot_rid_new(&self._native)

    def get_rid(self):
        cdef godot_rid* ptr= &self._native
        return api_core.godot_rid_get_id(ptr)

    def new_with_resource(self, RID from_):
        pass
        #return api_core.godot_rid_new_with_resource(&self._native, &from_._native)

    def  __eq__(self, RID other):
        pass
        #return api_core.godot_rid_operator_equal(&self._native, &other._native)

    def __lt__(self, RID other):
        pass
        #return api_core.godot_rid_operator_less(&self._native, &other._native)

