from py4godot.core.vector3.Vector3 cimport *
from py4godot.core.string.String cimport *
from py4godot.core.quat.Quat cimport *
from py4godot_core_holder.core_holder cimport get_core
from py4godot.core.basis.basis_binding cimport *

api_core = get_core()

cdef class Basis:

    def __init__(self):
        api_core.godot_basis_new(&self._native)
        self.update_event = UpdateEvent()


    @staticmethod
    def new_with_rows(Vector3 x_axis, Vector3 y_axis, Vector3 z_axis):
        cdef Basis b = Basis.__new__(Basis)
        api_core.godot_basis_new_with_rows(&b._native, &x_axis._native, &y_axis._native, &z_axis._native)
        b.update_event = UpdateEvent()
        return b

    @staticmethod
    def new_with_axis_and_angle(Vector3 axis, godot_real p_phi):
        cdef Basis b = Basis.__new__(Basis)
        api_core.godot_basis_new_with_axis_and_angle(&b._native, &axis._native, p_phi)
        b.update_event = UpdateEvent()
        return b

    @staticmethod
    def new_with_euler(Basis dest, Vector3 euler):
        api_core.godot_basis_new_with_euler(&dest._native, &euler._native)
        dest.update_event = UpdateEvent()
        return dest

    @staticmethod
    def new_with_euler_quat(Basis r_dest, Quat euler):
        api_core.godot_basis_new_with_euler_quat(&r_dest._native, &euler._native)
        return r_dest

    def as_string(self):
        return str(String.new_static(api_core.godot_basis_as_string(&self._native)))

    def inverse(self):
        return Basis. new_static(api_core.godot_basis_inverse(&self._native))

    def transposed(self):
        return Basis. new_static(api_core.godot_basis_transposed(&self._native))

    def orthonormalized(self):
        return Basis. new_static(api_core.godot_basis_orthonormalized(&self._native))

    def determinant(self):
        return api_core.godot_basis_determinant(&self._native)

    def rotated(self, Vector3 axis, godot_real phi):
        return Basis. new_static(api_core.godot_basis_rotated(&self._native, &axis._native, phi))

    def scaled(self, Vector3 scale):
        return Basis.new_static(api_core.godot_basis_scaled(&self._native, &scale._native))

    def get_scale(self):
        return Vector3. new_static(api_core.godot_basis_get_scale(&self._native))

    def get_euler(self):
        return Vector3. new_static(api_core.godot_basis_get_euler(&self._native))

    def tdotx(self, Vector3 with_):
        return api_core.godot_basis_tdotx(&self._native, &with_._native)

    def tdoty(self, Vector3 with_):
        return api_core.godot_basis_tdoty(&self._native, &with_._native)

    def tdotz(self, Vector3 with_):
        return api_core.godot_basis_tdotz(&self._native, &with_._native)

    def xform(self, Vector3 v):
        return Vector3. new_static(api_core.godot_basis_xform(&self._native, &v._native))

    def xform_inv(self, Vector3 v):
        return Vector3. new_static(api_core.godot_basis_xform_inv(&self._native, &v._native))

    def get_orthogonal_index(self):
        return api_core.godot_basis_get_orthogonal_index(&self._native)

    def get_elements(self, Vector3 elements):
        api_core.godot_basis_get_elements(&self._native, &elements._native)

    def get_axis(self, godot_int axis):
        return Vector3. new_static(api_core.godot_basis_get_axis(&self._native, axis))

    def set_axis(self, godot_int axis, Vector3 value):
        api_core.godot_basis_set_axis(&self._native, axis, &value._native)
        self.update_event.notify()

    def get_row(self, godot_int row):
        return Vector3. new_static(api_core.godot_basis_get_row(&self._native, row))

    def set_row(self, godot_int row, Vector3 value):
        api_core.godot_basis_set_row(&self._native, row, &value._native)
        self.update_event.notify()

    def __eq__(self, Basis other):
        return api_core.godot_basis_operator_equal(&self._native, &other._native)

    def add(self, Basis other):
        return Basis. new_static(api_core.godot_basis_operator_add(&self._native, &other._native))

    def __add__(self, Basis other):
        return self.add(other)

    def sub(self, Basis other):
        return Basis. new_static(api_core.godot_basis_operator_subtract(&self._native, &other._native))

    def __sub__(self, Basis other):
        return self.sub(other)

    def __mul__(self, other):
        if(isinstance(other,Basis)):
            return self.multiply_vector(other)
        elif (isinstance(other,float) or isinstance(other,int)):
            return self.multiply_scalar(other)
        #TODO: Exception not supported
        raise Exception(f"multiplication for type {type(other)} not supported")

    def multiply_vector(self, Basis other):
        return Basis. new_static(api_core.godot_basis_operator_multiply_vector(&self._native, &other._native))

    def multiply_scalar(self, godot_real value):
        return Basis. new_static(api_core.godot_basis_operator_multiply_scalar(&self._native, value))

    def __str__(self):
        return self.as_string()