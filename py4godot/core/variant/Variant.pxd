from py4godot.core.dictionary.Dictionary cimport *
from py4godot.core.variant.variant_binding cimport *

cdef class Variant:
    cdef godot_variant _native

    cdef inline void set_native(self, godot_variant _native):
        self._native = _native

    @staticmethod
    cdef inline Variant new_static(godot_variant _native):
        cdef Variant v = Variant.__new__(Variant)
        v.set_native(_native)
        return v

    @staticmethod
    cdef inline as_nil(self)
    @staticmethod
    cdef inline  as_bool(self)
    @staticmethod
    cdef inline  as_uint(self)
    @staticmethod
    cdef inline int as_int(self)
    @staticmethod
    cdef inline  as_real(self)
    @staticmethod
    cdef inline  as_string(self)
    @staticmethod
    cdef inline  as_vector2(self)
    @staticmethod
    cdef inline  as_rect2(self)
    @staticmethod
    cdef inline  as_vector3(self)
    @staticmethod
    cdef inline  as_transform2d(self)
    @staticmethod
    cdef inline  as_plane(self)
    @staticmethod
    cdef inline  as_quat(self)
    @staticmethod
    cdef inline  as_aabb(self)
    @staticmethod
    cdef inline  as_basis(self)
    @staticmethod
    cdef inline  as_transform(self)
    @staticmethod
    cdef inline  as_color(self)
    @staticmethod
    cdef inline  as_node_path(self)
    @staticmethod
    cdef inline  as_rid(self)
    @staticmethod
    cdef inline  as_object(self)
    @staticmethod
    cdef inline Dictionary as_dictionary(self)
    @staticmethod
    cdef inline  as_array(self)
    @staticmethod
    cdef inline  as_pool_byte_array(self)
    @staticmethod
    cdef inline  as_pool_int_array(self)
    @staticmethod
    cdef inline  as_pool_real_array(self)
    @staticmethod
    cdef inline  as_pool_string_array(self)
    @staticmethod
    cdef inline  as_pool_vector2_array(self)
    @staticmethod
    cdef inline  as_pool_vector3_array(self)

ctypedef enum Variant_Type:
    NIL,
    # atomic types
    BOOL,
    INT,
    REAL,
    STRING,

    # math types

    VECTOR2, # 5
    RECT2,
    VECTOR3,
    TRANSFORM2D,
    PLANE,
    QUAT, # 10
    RECT3, #sorry naming convention fail :( not like it's used often
    BASIS,
    TRANSFORM,

    # misc types
    COLOR,
    NODE_PATH, # 15
    _RID,
    OBJECT,
    DICTIONARY,
    ARRAY,

    # arrays
    POOL_BYTE_ARRAY, # 20
    POOL_INT_ARRAY,
    POOL_REAL_ARRAY,
    POOL_STRING_ARRAY,
    POOL_VECTOR2_ARRAY,
    POOL_VECTOR3_ARRAY, # 25
    POOL_COLOR_ARRAY,

    VARIANT_MAX



ctypedef enum Variant_Operator :

    #comparation
    OP_EQUAL,
    OP_NOT_EQUAL,
    OP_LESS,
    OP_LESS_EQUAL,
    OP_GREATER,
    OP_GREATER_EQUAL,

    #mathematic
    OP_ADD,
    OP_SUBSTRACT,
    OP_MULTIPLY,
    OP_DIVIDE,
    OP_NEGATE,
    OP_POSITIVE,
    OP_MODULE,
    OP_STRING_CONCAT,

    #bitwise
    OP_SHIFT_LEFT,
    OP_SHIFT_RIGHT,
    OP_BIT_AND,
    OP_BIT_OR,
    OP_BIT_XOR,
    OP_BIT_NEGATE,

    #logic
    OP_AND,
    OP_OR,
    OP_XOR,
    OP_NOT,

    #containment
    OP_IN,
    OP_MAX