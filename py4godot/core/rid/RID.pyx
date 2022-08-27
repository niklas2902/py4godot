from py4godot_core_holder.core_holder cimport get_core
from py4godot.core.rid.rid_binding cimport *

api_core = get_core()

cdef class RID:

    def __init__(self):
        api_core.godot_rid_new(&self._native)
        self.update_event = UpdateEvent()

    def get_id(self):
        return api_core.godot_rid_get_id(&self._native)

    def  __eq__(self, RID other):
        return api_core.godot_rid_operator_equal(&self._native, &other._native)

    def __lt__(self, RID other):
        return api_core.godot_rid_operator_less(&self._native, &other._native)

