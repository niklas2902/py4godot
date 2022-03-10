from py4godot.core.basis.Basis cimport *
from py4godot.core.vector3.Vector3 cimport *
from py4godot.core.plane.Plane cimport *
from py4godot.core.aabb.AABB cimport *
from py4godot.core.string.String cimport *
from py4godot.core.transform.transform_binding cimport *

cdef api set_api_core_transform(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core

cdef class Transform:

    def __init__(self,Basis basis, Vector3 origin):
        api_core.godot_transform_new(&self._native, &basis._native, &origin._native)
        self.update_event = UpdateEvent()

    @staticmethod
    def new_with_axis_origin(Vector3 x_axis, Vector3 y_axis, Vector3 z_axis, Vector3 origin):
        cdef Transform transform = Transform.__new__(Transform)
        transform.update_event = UpdateEvent()
        api_core.godot_transform_new_with_axis_origin(&transform._native, &x_axis._native, &y_axis._native, &z_axis._native, &origin._native)
        return transform

    def get_basis(self):
        return Basis. new_static(api_core.godot_transform_get_basis(&self._native))

    def set_basis(self, Basis v):
        api_core.godot_transform_set_basis(&self._native, &v._native)
        self.update_event.notify()

    def get_origin(self):
        return Vector3. new_static(api_core.godot_transform_get_origin(&self._native))

    def set_origin(Transform self, Vector3 v):
        api_core.godot_transform_set_origin(&self._native, &v._native)
        self.update_event.notify()

    def __str__(self):
        return str(String.new_static(api_core.godot_transform_as_string(&self._native)))

    def inverse(self):
        return Transform. new_static(api_core.godot_transform_inverse(&self._native))

    def affine_inverse(self):
        return Transform. new_static(api_core.godot_transform_affine_inverse(&self._native))

    def orthonormalized(self):
        return Transform. new_static(api_core.godot_transform_orthonormalized(&self._native))

    def rotated(self, Vector3 axis, godot_real phi):
        return Transform. new_static(api_core.godot_transform_rotated(&self._native, &axis._native, phi))

    def scaled(self, Vector3 scale):
        return Transform. new_static(api_core.godot_transform_scaled(&self._native, &scale._native))

    def looking_at(self, Vector3 target, Vector3 up):
        return Transform. new_static(api_core.godot_transform_looking_at(&self._native, &target._native, &up._native))

    def xform_plane(self, Plane v):
        return Plane. new_static(api_core.godot_transform_xform_plane(&self._native, &v._native))

    def xform_inv_plane(self, Plane v):
        return Plane. new_static(api_core.godot_transform_xform_inv_plane(&self._native, &v._native))

    def new_identity(self):
        api_core.godot_transform_new_identity(&self._native)
        self.update_event.notify()

    def __eq__(self, Transform other):
        return api_core.godot_transform_operator_equal(&self._native, &other._native)

    def mult(self, Transform b):
        return Transform. new_static(api_core.godot_transform_operator_multiply(&self._native, &b._native))

    def __mul__(self, Transform b):
        return self.mult(b)

    def xform_vector3(self, Vector3 v):
        return Vector3. new_static(api_core.godot_transform_xform_vector3(&self._native, &v._native))

    def xform_inv_vector3(self, Vector3 v):
        return Vector3. new_static(api_core.godot_transform_xform_inv_vector3(&self._native, &v._native))

    def xform_aabb(self, AABB v):
        return AABB. new_static(api_core.godot_transform_xform_aabb(&self._native, &v._native))

    def xform_inv_aabb(self, AABB v):
        return AABB. new_static(api_core.godot_transform_xform_inv_aabb(&self._native, &v._native))
