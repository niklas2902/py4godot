from core.plane.Plane cimport Plane
from core.vector3.Vector3 cimport Vector3
from core.aabb.aabb_binding cimport *
from godot_bindings.types cimport *

cdef api set_api_core_aabb(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core

cdef class AABB:

    def __init__(self, Vector3 v, Vector3 v2):
        api_core.godot_aabb_new(&self._native, &v._native, &v2._native)

    def intersects(self, AABB other):
        return api_core.godot_aabb_intersects(&self._native, &other._native)

    def get_position(self):
        return Vector3. new_static(api_core.godot_aabb_get_position(&self._native))

    def set_position(self, Vector3 v):
        api_core.godot_aabb_set_position(&self._native, &v._native)

    def get_size(self):
        return Vector3. new_static(api_core.godot_aabb_get_size(&self._native))
    def set_size(self, Vector3 v):
        api_core.godot_aabb_set_size(&self._native,&v._native)

    def as_string(self):
        return api_core.godot_aabb_as_string(&self._native)

    def get_area(self):
        return api_core.godot_aabb_get_area(&self._native)
    def has_no_area(self):
        return api_core.godot_aabb_has_no_area(&self._native)

    def has_no_surface(self):
        return api_core.godot_aabb_has_no_surface(&self._native)

    def intersects(self, AABB other):
        return api_core.godot_aabb_intersects(&self._native, &other._native)

    def encloses(self,  AABB with_):
        return api_core.godot_aabb_encloses(&self._native, &with_._native)

    def merge(self, AABB with_):
        return AABB. new_static(api_core.godot_aabb_merge(&self._native, &with_._native))

    def intersection(self, AABB with_):
        return AABB. new_static(api_core.godot_aabb_intersection(&self._native, &with_._native))

    def intersects_plane(self, Plane plane):
        return api_core.godot_aabb_intersects_plane(&self._native, &plane._native)

    def intersects_segment(self, Vector3 from_, Vector3 to):
        return api_core.godot_aabb_intersects_segment(&self._native, &from_._native, &to._native)

    def has_point(self, Vector3 point):
        return api_core.godot_aabb_has_point(&self._native, &point._native)

    def get_support(self, Vector3 dir):
        return Vector3. new_static(api_core.godot_aabb_get_support(&self._native, &dir._native))

    def get_longest_axis(self):
        return Vector3. new_static(api_core.godot_aabb_get_longest_axis(&self._native))

    def get_longest_axis_index(self):
        return api_core.godot_aabb_get_longest_axis_index(&self._native)

    def get_longest_axis_size(self):
        return api_core.godot_aabb_get_longest_axis_size(&self._native)

    def get_shortest_axis(self):
        return Vector3. new_static(api_core.godot_aabb_get_shortest_axis(&self._native))

    def get_shortest_axis_index(self):
        return api_core.godot_aabb_get_shortest_axis_index(&self._native)

    def get_shortest_axis_size(self):
        return api_core.godot_aabb_get_shortest_axis_size(&self._native)

    def expand(self, Vector3 to_point):
        return api_core.godot_aabb_expand(&self._native, &to_point._native)

    def grow(self, godot_real by):
        return AABB. new_static(api_core.godot_aabb_grow(&self._native, by))

    def get_endpoint(self,  godot_int index):
        return Vector3. new_static(api_core.godot_aabb_get_endpoint(&self._native, index))

    def __eq__(self, AABB other):
        return api_core.godot_aabb_operator_equal(&self._native, &other._native)


