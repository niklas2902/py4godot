from py4godot.core.vector2.Vector2 cimport *
from py4godot.core.string.String cimport String
from py4godot.utils.core_holder cimport get_core
from py4godot.core.rect2.rect2_binding cimport *

api_core = get_core()

cdef class Rect2:

    def __init__(self,godot_real x, godot_real y, godot_real width, godot_real height):
        api_core.godot_rect2_new(&self._native,x,y,width,height)
        self.update_event = UpdateEvent()

    @staticmethod
    def new_with_position_and_size(Vector2 pos, Vector2 size):
        cdef Rect2 r = Rect2.__new__(Rect2)
        api_core.godot_rect2_new_with_position_and_size(&r._native, &pos._native, &size._native)
        r.update_event = UpdateEvent()
        return r

    def __str__(self):
        return str(String.new_static(api_core.godot_rect2_as_string(&self._native)))

    def get_area(self):
        return api_core.godot_rect2_get_area(&self._native)

    def intersects(self, Rect2 b):
        return api_core.godot_rect2_intersects(&self._native, &b._native)

    def encloses(self, Rect2 b):
        return api_core.godot_rect2_encloses(&self._native, &b._native)

    def has_no_area(self):
        return api_core.godot_rect2_has_no_area(&self._native)

    def clip(self, Rect2 b):
        return Rect2. new_static(api_core.godot_rect2_clip(&self._native, &b._native))

    def merge(self, Rect2 b):
        return Rect2. new_static(api_core.godot_rect2_merge(&self._native, &b._native))

    def has_point(self, Vector2 point):
        return api_core.godot_rect2_has_point(&self._native, &point._native)

    def grow(self, godot_real by):
        return Rect2. new_static(api_core.godot_rect2_grow(&self._native, by))

    def expand(self, Vector2 to):
        return Rect2. new_static(api_core.godot_rect2_expand(&self._native, &to._native))

    def __eq__(self, Rect2 b):
        return api_core.godot_rect2_operator_equal(&self._native, &b._native)

    def get_position(self):
        return Vector2. new_static(api_core.godot_rect2_get_position(&self._native))

    def get_size(self):
        return Vector2. new_static(api_core.godot_rect2_get_size(&self._native))

    def set_position(self, Vector2 pos):
        api_core.godot_rect2_set_position(&self._native, &pos._native)
        self.update_event.notify()

    def set_size(self, Vector2 size):
        api_core.godot_rect2_set_size(&self._native, &size._native)
        self.update_event.notify()