# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *
cdef public class VariantTypeWrapper4(object)[object VariantWrapper, type VariantWrapperType]:
    """This class holds the c pointer of the godot_owner. The godot_owner is used when calling api methods,
    to identify the object"""
    pass