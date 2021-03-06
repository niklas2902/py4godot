from core.array.array_binding cimport *
from core.Variant import *
cdef class Array:

    def __init__(self, godot_aabb _native = None):
        if (_native != None):
            self._native = _native
        else:
            api_core.godot_array_new(&self._native)

    def set(self, int index, godot_variant* value):
        api_core.godot_array_set(&self._native, index, value)

    def get(self, int index):
        return Variant(api_core.godot_array_get(&self._native, index))

    def __getitem__(self, int index):
        return Variant(api_core.godot_array_operator_index(&self._native, index))

    def append(self, Variant value):
        api_core.godot_array_append(&self._native, &value._native)

    def clear(self):
        api_core.godot_array_clear(&self._native)

    def count(self, Variant value):
        return api_core.godot_array_count(&self._native, &value._native)

    def empty(self):
        return api_core.godot_array_empty(&self._native)

    def erase(self, Variant value):
        api_core.godot_array_erase(&self._native, &value._native)

    def front(self):
        return Array(api_core.godot_array_front(&self._native))

    def back(self):
        return Array(api_core.godot_array_back(&self._native))

    def find(self, Variant what, int from):
        return api_core.godot_array_find(&self._native, &what._native, from)

    def find_last(self, Variant what):
        return api_core.godot_array_find_last(&self._native, &what._native)

    def has(self, Variant value):
        return api_core.godot_array_has(&self._native, &value._native)

    def hash(self):
        return api_core.godot_array_hash(&self._native)

    def insert(self, int pos, Variant value):
        return api_core.godot_array_insert(&self._native, pos, &value._native)

    def invert(self):
        return api_core.godot_array_invert(&self._native)

    def pop_back(self):
        return Array(api_core.godot_array_pop_back(&self._native))

    def pop_front(self):
        return Array(api_core.godot_array_pop_front(&self._native))

    def push_back(self, Variant value):
        api_core.godot_array_push_back(&self._native, &value._native)

    def push_front(self, Variant value):
        api_core.godot_array_push_front(&self._native, &value._native)

    def remove(self, int index):
        api_core.godot_array_remove(&self._native, index)

    def resize(self, int size):
        api_core.godot_array_resize(&self._native, size)

    def rfind(self, Variant what, int from):
        return api_core.godot_array_rfind(&self._native, &what._native, from)

    def size(self):
        return api_core.godot_array_size(&self._native)

    def sort(self):
        api_core.godot_array_sort(&self._native)

    def sort_custom(self, godot_object * p_obj, godot_string * func):
        api_core.godot_array_sort_custom(&self._native, p_obj, func)

    def bsearch(self, Variant value, godot_bool before):
        return api_core.godot_array_bsearch(&self._native, value._native, vefore)

    def  bsearch_custom(self, Variant value, godot_object* p_obj, godot_string * p_func, godot_bool p_before)
        return api_core.godot_array_bsearch_custom(&self._native, value._native, obj, func, before);

    def destory(self):
        return api_core.godot_array_destroy(&self._native)