from py4godot.core.variant.Variant cimport *
from py4godot.core.array.Array cimport *
from py4godot.core.dictionary.dictionary_binding cimport *
from cython.operator cimport dereference
from libc.stdio cimport printf

cdef api set_api_core_dict(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core


cdef class Dictionary:

    def __init__(self):
        api_core.godot_dictionary_new(&self._native)
        self.update_event = UpdateEvent()

    @staticmethod
    def new_copy(Dictionary src):
        cdef Dictionary d = Dictionary.__new__(Dictionary)
        api_core.godot_dictionary_new_copy(&d._native, &src._native)
        d.update_event = UpdateEvent()
        return d

    def destroy(self):
        api_core.godot_dictionary_destroy(&self._native)

    def size(self):
        return api_core.godot_dictionary_size(&self._native)

    def empty(self):
        return api_core.godot_dictionary_empty(&self._native)

    def clear(self):
        api_core.godot_dictionary_clear(&self._native)

    def has(self, Variant key):
        return api_core.godot_dictionary_has(&self._native, &key._native)

    def has_all(self, Array keys):
        return api_core.godot_dictionary_has_all(&self._native, &keys._native)

    def erase(self, Variant key):
        return api_core.godot_dictionary_erase(&self._native, &key._native)

    def hash(self):
        return api_core.godot_dictionary_hash(&self._native)

    def keys(self):
        return Array. new_static(api_core.godot_dictionary_keys(&self._native))

    def values(self):
        return Array. new_static(api_core.godot_dictionary_values(&self._native))

    def get(self, Variant key):
        return Variant. new_static(api_core.godot_dictionary_get(&self._native, &key._native))

    def set(self, Variant key, Variant value):
        api_core.godot_dictionary_set(&self._native, &key._native, &value._native)

    def next_(self, Variant key):
        cdef godot_variant * variant
        variant = (api_core.godot_dictionary_next(&self._native, &key._native))
        if variant != NULL :
            return Variant.new_static(dereference(variant))
        return None

    def __setitem__(self, Variant key, Variant value):
        self.set(key, value)

    def __delitem(self, Variant key):
        self.erase(key)

    def __eq__(self, other):
        if(isinstance(other, Dictionary)):
            return api_core.godot_dictionary_operator_equal(&self._native, &(<Dictionary>other)._native)
        return False

    def json(self):
        return api_core.godot_dictionary_to_json(&self._native)

