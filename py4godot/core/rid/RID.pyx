from py4godot.core.rid.rid_binding cimport *

cdef api set_api_core_rid(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core

cdef class RID:

    def __init__(self):
        api_core.godot_rid_new(&self._native)
        self.update_event = UpdateEvent()

    def get_rid(self):
        return api_core.godot_rid_get_id(&self._native)

    def  __eq__(self, RID other):
        return api_core.godot_rid_operator_equal(&self._native, &other._native)

    def __lt__(self, RID other):
        return api_core.godot_rid_operator_less(&self._native, &other._native)

