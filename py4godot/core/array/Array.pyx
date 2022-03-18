from py4godot.core.variant.Variant cimport *
from py4godot.core.array.array_binding cimport *

cdef api set_api_core_array(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core


cdef class Array:

    def __init__(self):
        api_core.godot_array_new(&self._native)
        self.update_event = UpdateEvent()

    def set(self, godot_int index, value):
        api_core.godot_array_set(&self._native, index, &Variant(value)._native)

    def get(self, godot_int index):
        return Variant. new_static(api_core.godot_array_get(&self._native, index)).get_converted_value()

    def append(self, value):
        api_core.godot_array_append(&self._native, &Variant(value)._native)

    def clear(self):
        api_core.godot_array_clear(&self._native)

    def count(self, value):
        return api_core.godot_array_count(&self._native, &Variant(value)._native)

    def empty(self):
        return api_core.godot_array_empty(&self._native)

    def erase(self, value):
        api_core.godot_array_erase(&self._native, &Variant(value)._native)

    def front(self):
        return Variant. new_static(api_core.godot_array_front(&self._native)).get_converted_value()

    def back(self):
        return Variant. new_static(api_core.godot_array_back(&self._native)).get_converted_value()

    def find(self, what, godot_int from_):
        return api_core.godot_array_find(&self._native, &Variant(what)._native, from_)

    def find_last(self, what):
        return api_core.godot_array_find_last(&self._native, &Variant(what)._native)

    def has(self, value):
        return api_core.godot_array_has(&self._native, &Variant(value)._native)

    def hash(self):
        return api_core.godot_array_hash(&self._native)

    def insert(self, godot_int pos, value):
        return api_core.godot_array_insert(&self._native, pos, &Variant(value)._native)

    def invert(self):
        return api_core.godot_array_invert(&self._native)

    def pop_back(self):
        return Variant. new_static(api_core.godot_array_pop_back(&self._native)).get_converted_value()

    def pop_front(self):
        return Variant. new_static(api_core.godot_array_pop_front(&self._native)).get_converted_value()

    def push_back(self, value):
        api_core.godot_array_push_back(&self._native, &Variant(value)._native)

    def push_front(self, value):
        api_core.godot_array_push_front(&self._native, &Variant(value)._native)

    def remove(self, godot_int index):
        api_core.godot_array_remove(&self._native, index)

    def resize(self, godot_int size):
        api_core.godot_array_resize(&self._native, size)

    def rfind(self, what, godot_int from_):
        return api_core.godot_array_rfind(&self._native, &Variant(what)._native, from_)

    def size(self):
        return api_core.godot_array_size(&self._native)

    def sort(self):
        api_core.godot_array_sort(&self._native)

    def __getitem__(self, godot_int index):
        return Variant. new_static(api_core.godot_array_get(&self._native, index)).get_converted_value()

    def __setitem__(self, godot_int index, value):
        self.set(index, value).get_converted_value()

    #TODO: is there any possibility to implement this?
    """
    def sort_custom(self, godot_object * p_obj, godot_string * func):
        api_core.godot_array_sort_custom(&self._native, p_obj, func)
    """
    def bsearch(self, Variant value, godot_bool before):
        return api_core.godot_array_bsearch(&self._native, &value._native, before)
    """
    def  bsearch_custom(self, Variant value, godot_object* p_obj, godot_string * p_func, godot_bool p_before):
        return api_core.godot_array_bsearch_custom(&self._native, &value._native, p_obj, p_func, p_before);
    """
    def destory(self):
        return api_core.godot_array_destroy(&self._native)

    def get_native(self):
        return self._native