from py4godot.core.vector3.Vector3 cimport *
from py4godot.core.vector2.Vector2 cimport *
from py4godot.core.basis.Basis cimport *
from py4godot.core.aabb.AABB cimport *
from py4godot.core.string.String cimport *
from py4godot.core.rect2.Rect2 cimport *
from py4godot.core.quat.Quat cimport *
from py4godot.core.color.Color cimport *
from py4godot.core.node_path.NodePath cimport *
from py4godot.core.transform.Transform cimport *
from py4godot.core.transform.Transform2D cimport *
from py4godot.core.plane.Plane cimport *
from py4godot.core.pool_array.PoolArrays cimport *
from py4godot.core.array.Array cimport *
from py4godot.core.dictionary.Dictionary cimport *
from py4godot.core.rid.RID cimport *
from py4godot.utils.Wrapper cimport *
from py4godot.utils.core_holder cimport get_core
from py4godot.core.variant.variant_binding cimport *

api_core = get_core()

cdef dict_get_methods = {0:Variant.as_nil, 1:Variant.as_bool,2:Variant.as_int, 3:Variant.as_real,4:Variant.as_string, 5:Variant.as_vector2,
 6:Variant.as_rect2, 7:Variant.as_vector3,8:Variant.as_transform2d, 9:Variant.as_plane, 10:Variant.as_quat,11:Variant.as_aabb, 12:Variant.as_basis,
  13:Variant.as_transform, 14:Variant.as_color, 15:Variant.as_node_path, 16:Variant.as_rid, 17:Variant.as_godot_object, 18:Variant.as_dictionary}


cdef class Variant:

    def __init__(self, variant = None):
        """self.function_dict = {float:self.new_float,int:self.new_int, Vector3:self.new_vector3,Vector2:self.new_vector2,
                AABB:self.new_aabb, String:self.new_string, Rect2:self.new_rect2, Quat:self.new_quat,
                Color:self.new_color, NodePath:self.new_node_path, type(True):self.new_bool }"""

        if(type(variant) == type("")):
            variant = String(variant)
        if(variant != None):
            if(type(variant) == int):
                self.new_int(variant)
            elif(type(variant)==float):
                self.new_float(variant)
            elif(type(variant)==Vector3):
                self.new_vector3(variant)
            elif(variant is Vector3):
                self.new_vector3(Vector3(0,0,0))

            elif(type(variant)==Vector2):
                self.new_vector2(variant)
            elif(variant is Vector2):
                self.new_vector2(Vector2(0,0))

            elif(type(variant)==AABB):
                self.new_aabb(variant)
            elif(variant is AABB):
                self.new_aabb(AABB(Vector3(0,0,0),Vector3(0,0,0)))

            elif(type(variant)==String):
                self.new_string(variant)

            elif(variant is String):
                self.new_string(String(""))

            elif(type(variant)==Rect2):
                self.new_rect2(variant)
            elif(variant is Rect2):
                self.new_rect2(Rect2(0,0,0,0))

            elif(type(variant)==Basis):
                self.new_Basis(variant)
            elif(variant is Basis):
                self.new_basis(Basis())

            elif(type(variant)==Quat):
                self.new_quat(variant)
            elif(variant is Quat):
                self.new_quat(Quat(0,0,0,0))

            elif(type(variant)==Plane):
                self.new_plane(variant)
            elif(variant is Plane):
                self.new_plane(Plane(0,0,0,0))

            elif(type(variant)==Transform):
                self.new_transform(variant)
            elif(variant is Transform):
                self.new_transform(Transform(Basis(), Vector3()))

            elif(type(variant)==Transform2D):
                self.new_transform(variant)
            elif(variant is Transform2D):
                self.new_transform(Transform2D(0, Vector2()))

            elif(type(variant)==Color):
                self.new_color(variant)
            elif(variant is Color):
                self.new_color(Color(0,0,0))

            elif(type(variant)==NodePath):
                self.new_node_path(variant)
            elif(variant is NodePath):
                self.new_node_path(NodePath(String("")))


            elif(type(variant)==type(True)):
                self.new_bool(variant)

            elif type(variant) == Dictionary:
                self.new_dict(variant)
            elif variant is Dictionary:
                self.new_dict(Dictionary)

            elif type(variant) == Array:
                self.new_array(variant)
            elif variant is Array:
                self.new_array(Array())

            elif variant is int:
                self.new_int(0)
            elif isinstance(type(variant), Wrapper):
                self.new
            else:
                print("no Variant created:",variant,"|", type(variant))
                raise Exception("no Variant could be created")
        else:
            self.new_nil()


    def new_nil(self):
        api_core.godot_variant_new_nil(&self._native);

    def new_int(self, variant):
        api_core.godot_variant_new_int(&self._native, variant)

    def new_bool(self, variant):
         api_core.godot_variant_new_bool(&self._native, variant)

    def new_float(self, variant):
        api_core.godot_variant_new_real(&self._native, variant)

    def new_vector3(self, Vector3 variant):
        api_core.godot_variant_new_vector3(&self._native, &variant._native)

    def new_vector2(self, Vector2 variant):
        api_core.godot_variant_new_vector2(&self._native, &variant._native)

    def new_quat(self, Quat variant):
        api_core.godot_variant_new_quat(&self._native, &variant._native)

    def new_aabb(self, AABB variant):
        api_core.godot_variant_new_aabb(&self._native, &variant._native)

    def new_rect2(self, Rect2 variant):
        api_core.godot_variant_new_rect2(&self._native, &variant._native)

    def new_color(self, Color variant):
        api_core.godot_variant_new_color(&self._native, &variant._native)

    def new_node_path(self, NodePath variant):
        api_core.godot_variant_new_node_path(&self._native, &variant._native)

    def new_string(self, String variant):
        api_core.godot_variant_new_string(&self._native, &variant._native)

    def new_dict(self, Dictionary variant):
        api_core.godot_variant_new_dictionary(&self._native, &variant._native);

    def new_array(self, Array variant):
        api_core.godot_variant_new_array(&self._native, &variant._native)

    def new_godot_object(self, Wrapper variant):
        api_core.godot_variant_new_object(&self._native, (variant.get_godot_owner()))

    @staticmethod
    cdef as_nil(self):
        return None

    @staticmethod
    cdef as_bool(self):
        return api_core.godot_variant_as_bool(&self._native)
    @staticmethod
    cdef as_uint(self):
        return api_core.godot_variant_as_uint(&self._native)
    @staticmethod
    cdef int as_int(self):
        return api_core.godot_variant_as_int(&self._native)
    @staticmethod
    cdef as_real(self):
        return api_core.godot_variant_as_real(&self._native)
    @staticmethod
    cdef as_string(self):
        return str(String.new_static(api_core.godot_variant_as_string(&self._native)))
    @staticmethod
    cdef as_vector2(self):
        return Vector2.new_static(api_core.godot_variant_as_vector2(&self._native))
    @staticmethod
    cdef as_rect2(self):
        return Rect2.new_static(api_core.godot_variant_as_rect2(&self._native))
    @staticmethod
    cdef as_vector3(self):
        return Vector3.new_static(api_core.godot_variant_as_vector3(&self._native))
    @staticmethod
    cdef as_transform2d(self):
        return Transform2D.new_static(api_core.godot_variant_as_transform2d(&self._native))
    @staticmethod
    cdef as_plane(self):
        return Plane.new_static(api_core.godot_variant_as_plane(&self._native))
    @staticmethod
    cdef as_quat(self):
        return Quat.new_static(api_core.godot_variant_as_quat(&self._native))
    @staticmethod
    cdef as_aabb(self):
        return AABB.new_static(api_core.godot_variant_as_aabb(&self._native))
    @staticmethod
    cdef as_basis(self):
        return Basis.new_static(api_core.godot_variant_as_basis(&self._native))
    @staticmethod
    cdef as_transform(self):
        return Transform.new_static(api_core.godot_variant_as_transform(&self._native))
    @staticmethod
    cdef as_color(self):
        return Color.new_static(api_core.godot_variant_as_color(&self._native))
    @staticmethod
    cdef as_node_path(self):
        return NodePath.new_static(api_core.godot_variant_as_node_path(&self._native))
    @staticmethod
    cdef as_rid(self):
        return RID.new_static(api_core.godot_variant_as_rid(&self._native))
    @staticmethod
    cdef as_object(self):
        api_core.godot_variant_as_object(&self._native)
    @staticmethod
    cdef Dictionary as_dictionary(self):
        return Dictionary.new_static(api_core.godot_variant_as_dictionary(&self._native))
    @staticmethod
    cdef as_array(self):
        return Array.new_static(api_core.godot_variant_as_array(&self._native))
    @staticmethod
    cdef as_pool_byte_array(self):
        return PoolByteArray.new_static(api_core.godot_variant_as_pool_byte_array(&self._native))
    @staticmethod
    cdef as_pool_int_array(self):
        return PoolIntArray.new_static(api_core.godot_variant_as_pool_int_array(&self._native))
    @staticmethod
    cdef as_pool_real_array(self):
        return PoolRealArray.new_static(api_core.godot_variant_as_pool_real_array(&self._native))
    @staticmethod
    cdef as_pool_string_array(self):
        return PoolStringArray.new_static(api_core.godot_variant_as_pool_string_array(&self._native))
    @staticmethod
    cdef as_pool_vector2_array(self):
        return PoolVector2Array.new_static(api_core.godot_variant_as_pool_vector2_array(&self._native))
    @staticmethod
    cdef as_pool_vector3_array(self):
        return PoolVector3Array.new_static(api_core.godot_variant_as_pool_vector3_array(&self._native))
    @staticmethod
    cdef as_godot_object(self):
        cdef Wrapper wrapper = Wrapper()
        wrapper.set_godot_owner(api_core.godot_variant_as_object(&self._native))
        return wrapper
    def __eq__(self, Variant other):
        return api_core.godot_variant_operator_equal(&self._native, &other._native)
    def __lt__(self, Variant other):
        return api_core.godot_variant_operator_less(&self._native, &other._native)
    def hash_compare(self, Variant other):
        return api_core.godot_variant_hash_compare(&self._native, &other._native)
    def booleanize(self):
        return api_core.godot_variant_booleanize(&self._native)

    def get_converted_value(self):
        return dict_get_methods[self.get_type()](self)

    def get_type(self):
        return api_core.godot_variant_get_type(&self._native);


