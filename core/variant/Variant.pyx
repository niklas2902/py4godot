from core.vector3.Vector3 cimport *
from core.vector2.Vector2 cimport *
from core.basis.Basis cimport *
from core.aabb.AABB cimport *
from core.string.String cimport *
from core.rect2.Rect2 cimport *
from core.quat.Quat cimport *
from core.color.Color cimport *
from core.node_path.NodePath cimport *
from core.transform.Transform cimport *
from core.transform.Transform2D cimport *
from core.plane.Plane cimport *
from core.pool_array.PoolArrays cimport *
from core.array.Array cimport *
from core.dictionary.Dictionary cimport *
from core.rid.RID cimport *
from core.variant.variant_binding cimport *


cdef api set_api_core_variant(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core


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
            elif(type(variant)==Vector2):
                self.new_vector2(variant)
            elif(type(variant)==AABB):
                self.new_aabb(variant)
            elif(type(variant)==String):
                self.new_string(variant)
            elif(type(variant)==Rect2):
                self.new_rect2(variant)
            elif(type(variant)==Quat):
                self.new_quat(variant)
            elif(type(variant)==Color):
                self.new_color(variant)
            elif(type(variant)==NodePath):
                self.new_node_path(variant)
            elif(type(variant)==type(True)):
                self.new_bool(variant)
            elif type(variant) == Dictionary:
                self.new_dict(variant)
            else:
                print("no Variant created:",variant,"|", type(variant))
        else:
            self.new_nil()

    def get_type(self):
        return api_core.godot_variant_get_type(&self._native)

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


    def new(self, variant):
        """
        if(type(variant) is godot_bool):
            api_core.godot_variant_new_bool(&self._native, variant)
        elif (variant is uint64_t):
            api_core.godot_variant_new_uint(&self._native, variant)
        elif (variant is int64_t):
            api_core.godot_variant_new_int(&self._native, variant)
        elif (variant is double):
            api_core.godot_variant_new_real(&self._native, variant)
        elif (variant is godot_string):
            api_core.godot_variant_new_string(&self._native, variant)
        elif (variant is godot_vector2):
            api_core.godot_variant_new_vector2(&self._native, variant)
        elif (variant is godot_rect2):
            api_core.godot_variant_new_rect2(&self._native, variant)
        elif (variant is godot_vector3):
            api_core.godot_variant_new_vector3(&self._native, variant)
        elif (variant is godot_transform2d):
            api_core.godot_variant_new_transform2d(&self._native, variant)
        elif (variant is godot_plane):
            api_core.godot_variant_new_plane(&self._native, variant)
        elif (variant is godot_quat):
            api_core.godot_variant_new_quat(&self._native, variant)
        elif (variant is godot_aabb):
            api_core.godot_variant_new_aabb(&self._native, variant)
        elif (variant is godot_basis):
            api_core.godot_variant_new_godot_basis(&self._native, variant)
        elif (variant is godot_transform):
            api_core.godot_variant_new_transform(&self._native, variant)
        elif (variant is godot_color):
            api_core.godot_variant_new_color(&self._native, variant)
        elif (variant is godot_node_path):
            api_core.godot_variant_new_node_path(&self._native, variant)
        elif (variant is godot_rid):
            api_core.godot_variant_new_rid(&self._native, variant)
        elif (variant is godot_object):
            api_core.godot_variant_new_object(&self._native, variant)
        elif (variant is godot_dictionary):
            api_core.godot_variant_new_dictionary(&self._native, variant)
        elif (variant is godot_array):
            api_core.godot_variant_new_array(&self._native, variant)
        elif (variant is godot_pool_byte_array):
            api_core.godot_variant_new_pool_byte_array(&self._native, variant)
        elif (variant is godot_pool_string_array):
            api_core.godot_variant_new_pool_string_array(&self._native, variant)
        elif (variant is godot_pool_vector2_array):
            api_core.godot_variant_new_pool_vector2_array(&self._native, variant)
        elif (variant is godot_pool_vector3_array):
            api_core.godot_variant_new_pool_vector3_array(&self._native, variant)
        elif (variant is godot_pool_color_array):
            api_core.godot_variant_new_pool_color_array(&self._native, variant)
        """

    def as_bool(self):
        return api_core.godot_variant_as_bool(&self._native)
    def as_uint(self):
        return api_core.godot_variant_as_uint(&self._native)
    def as_int(self):
        return api_core.godot_variant_as_int(&self._native)
    def as_real(self):
        return api_core.godot_variant_as_real(&self._native)
    def as_string(self):
        return api_core.godot_variant_as_string(&self._native)
    def as_vector2(self):
        return Vector2(api_core.godot_variant_as_vector2(&self._native))
    def as_rect2(self):
        return Rect2(api_core.godot_variant_as_rect2(&self._native))
    def as_vector3(self):
        return Vector3(api_core.godot_variant_as_vector3(&self._native))
    def as_transform2d(self):
        return Transform2D(api_core.godot_variant_as_transform2d(&self._native))
    def as_plane(self):
        return Plane(api_core.godot_variant_as_plane(&self._native))
    def as_quat(self):
        return Quat(api_core.godot_variant_as_quat(&self._native))
    def as_aabb(self):
        return AABB(api_core.godot_variant_as_aabb(&self._native))
    def as_basis(self):
        return Basis(api_core.godot_variant_as_basis(&self._native))
    def as_transform(self):
        return Transform(api_core.godot_variant_as_transform(&self._native))
    def as_color(self):
        return Color(api_core.godot_variant_as_color(&self._native))
    def as_node_path(self):
        return NodePath(api_core.godot_variant_as_node_path(&self._native))
    def as_rid(self):
        return RID(api_core.godot_variant_as_rid(&self._native))
    def as_object(self):
        api_core.godot_variant_as_object(&self._native)
    def as_dictionary(self):
        return Dictionary(api_core.godot_variant_as_dictionary(&self._native))
    def as_array(self):
        return Array(api_core.godot_variant_as_array(&self._native))
    def as_pool_byte_array(self):
        return PoolByteArray(api_core.godot_variant_as_pool_byte_array(&self._native))
    def as_pool_int_array(self):
        return PoolIntArray(api_core.godot_variant_as_pool_int_array(&self._native))
    def as_pool_real_array(self):
        return PoolRealArray(api_core.godot_variant_as_pool_real_array(&self._native))
    def as_pool_string_array(self):
        return PoolStringArray(api_core.godot_variant_as_pool_string_array(&self._native))
    def as_pool_vector2_array(self):
        return PoolVector2Array(api_core.godot_variant_as_pool_vector2_array(&self._native))
    def as_pool_vector3_array(self):
        return PoolVector3Array(api_core.godot_variant_as_pool_vector3_array(&self._native))
    def __eq__(self, Variant other):
        return api_core.godot_variant_operator_equal(&self._native, &other._native)
    def __lt__(self, Variant other):
        return api_core.godot_variant_operator_less(&self._native, &other._native)
    def hash_compare(self, Variant other):
        return api_core.godot_variant_hash_compare(&self._native, &other._native)
    def booleanize(self):
        return api_core.godot_variant_booleanize(&self._native)
    def destroy(self):
        api_core.godot_variant_destroy(&self._native)


