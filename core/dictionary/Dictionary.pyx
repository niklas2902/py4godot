from core.dictionary.dictionary_binding cimport *

cdef class Dictionary:

    def __init__(self, godot_dictionary _native = None):
        if (_native != None):
            self._native = _native
        else:
            api_core.godot_dictionary_new(&self._native)

    def new_copy(self, Dictionary src):
        api_core.godot_dictionary_new_copy(&self._native, &src._native)

    def destroy(self):
        api_core.destroy(&self._native)

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
        return api_core.godot_dictionary(&self._native)

    def keys(self):
        return Array(api_core.godot_dictionary_keys(&self._native))

    def values(self):
        return Array(api_core.godot_dictionary_values(&self._native))

    def get(self):
        return Variant(api_core.godot_dictionary_get(&self._native))

    def set(self, Variant key, Variant value):
        api_core.godot_dictionary_set(&self._native, &key._native, &value._native)

    def next(self, Variant key):
        return api_core.godot_dictionary_next(&self._native, &key._native)

    def __eq__(self, Dictionary other):
        return api_core.godot_dictionary_equal(&self._native, &other._native)

    def json(self):
        return api_core.godot_dictionary_to_json(&self._native)

