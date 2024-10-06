# distutils: language=c++
from py4godot.classes.core cimport *
from py4godot.classes.Object cimport *
cimport py4godot.classes.cpp_bridge as bridge
from cpython cimport Py_INCREF, Py_DECREF, PyObject

from py4godot.signals cimport GDSignal
from py4godot.utils.utils cimport *
from py4godot.utils.print_tools import *
from libcpp cimport bool

cdef api shared_ptr[bridge.String] type_helper_pystring_to_gdstring(str string):
    cdef String gd_string = py_c_string_to_string(string.encode("utf-8"))
    #Py_INCREF(val)
    return gd_string.String_internal_class_ptr

cdef api object type_helper_create_vector3(shared_ptr[bridge.Vector3]& bridge_vector):
    cdef Vector3 val = Vector3()
    val.Vector3_internal_class_ptr = bridge_vector
    #Py_INCREF(val)
    return val

cdef api object type_helper_create_string(shared_ptr[bridge.String]& bridge_string):
    cdef String val = String()
    val.String_internal_class_ptr = bridge_string
    ##Py_INCREF(val)
    return val


cdef api object type_helper_create_object(shared_ptr[bridge.Object]& bridge_object):
    cdef Object val = Object()
    val.Object_internal_class_ptr = bridge_object
    ##Py_INCREF(val)
    return val


cdef api object type_helper_create_py_string(shared_ptr[bridge.String]& bridge_string):
    cdef String gen_string = String()
    gen_string.String_internal_class_ptr = bridge_string
    cdef unicode val = gd_string_to_py_string(gen_string)
    #Py_INCREF(val)
    return val

cdef api object type_helper_create_rect2i(shared_ptr[bridge.Rect2i]& bridge_val):
    cdef Rect2i val = Rect2i()
    val.Rect2i_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_callable(shared_ptr[bridge.Callable]& bridge_val):
    cdef Callable val = Callable()
    val.Callable_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_nodepath(shared_ptr[bridge.NodePath]& bridge_val):
    cdef NodePath val = NodePath()
    val.NodePath_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedvector3array(shared_ptr[bridge.PackedVector3Array]& bridge_val):
    cdef PackedVector3Array val = PackedVector3Array()
    val.PackedVector3Array_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_dictionary(shared_ptr[bridge.Dictionary]& bridge_val):
    cdef Dictionary val = Dictionary()
    val.Dictionary_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_projection(shared_ptr[bridge.Projection]& bridge_val):
    cdef Projection val = Projection()
    val.Projection_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_rid(shared_ptr[bridge.RID]& bridge_val):
    cdef RID val = RID()
    val.RID_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_vector2i(shared_ptr[bridge.Vector2i]& bridge_val):
    cdef Vector2i val = Vector2i()
    val.Vector2i_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_transform2d(shared_ptr[bridge.Transform2D]& bridge_val):
    cdef Transform2D val = Transform2D()
    val.Transform2D_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_aabb(shared_ptr[bridge.AABB]& bridge_val):
    cdef AABB val = AABB()
    val.AABB_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_vector3i(shared_ptr[bridge.Vector3i]& bridge_val):
    cdef Vector3i val = Vector3i()
    val.Vector3i_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedint64array(shared_ptr[bridge.PackedInt64Array]& bridge_val):
    cdef PackedInt64Array val = PackedInt64Array()
    val.PackedInt64Array_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedint32array(shared_ptr[bridge.PackedInt32Array]& bridge_val):
    cdef PackedInt32Array val = PackedInt32Array()
    val.PackedInt32Array_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedfloat32array(shared_ptr[bridge.PackedFloat32Array]& bridge_val):
    cdef PackedFloat32Array val = PackedFloat32Array()
    val.PackedFloat32Array_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedbytearray(shared_ptr[bridge.PackedByteArray]& bridge_val):
    cdef PackedByteArray val = PackedByteArray()
    val.PackedByteArray_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_vector4(shared_ptr[bridge.Vector4]& bridge_val):
    cdef Vector4 val = Vector4()
    val.Vector4_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_rect2(shared_ptr[bridge.Rect2]& bridge_val):
    cdef Rect2 val = Rect2()
    val.Rect2_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_vector2(shared_ptr[bridge.Vector2]& bridge_val):
    cdef Vector2 val = Vector2()
    val.Vector2_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_transform3d(shared_ptr[bridge.Transform3D]& bridge_val):
    cdef Transform3D val = Transform3D()
    val.Transform3D_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedcolorarray(shared_ptr[bridge.PackedColorArray]& bridge_val):
    cdef PackedColorArray val = PackedColorArray()
    val.PackedColorArray_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_signal(shared_ptr[bridge.Signal]& bridge_val):
    cdef GDSignal val = GDSignal()
    val.Signal_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedvector2array(shared_ptr[bridge.PackedVector2Array]& bridge_val):
    cdef PackedVector2Array val = PackedVector2Array()
    val.PackedVector2Array_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_plane(shared_ptr[bridge.Plane]& bridge_val):
    cdef Plane val = Plane()
    val.Plane_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedfloat64array(shared_ptr[bridge.PackedFloat64Array]& bridge_val):
    cdef PackedFloat64Array val = PackedFloat64Array()
    val.PackedFloat64Array_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_basis(shared_ptr[bridge.Basis]& bridge_val):
    cdef Basis val = Basis()
    val.Basis_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_color(shared_ptr[bridge.Color]& bridge_val):
    cdef Color val = Color()
    val.Color_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_vector4i(shared_ptr[bridge.Vector4i]& bridge_val):
    cdef Vector4i val = Vector4i()
    val.Vector4i_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_array(shared_ptr[bridge.Array]& bridge_val):
    cdef Array val = Array()
    val.Array_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_quaternion(shared_ptr[bridge.Quaternion]& bridge_val):
    cdef Quaternion val = Quaternion()
    val.Quaternion_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedstringarray(shared_ptr[bridge.PackedStringArray]& bridge_val):
    cdef PackedStringArray val = PackedStringArray()
    val.PackedStringArray_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_stringname(shared_ptr[bridge.StringName]& bridge_val):
    cdef StringName val = StringName()
    val.StringName_internal_class_ptr = bridge_val
    #Py_INCREF(val)
    return val


cdef api shared_ptr[bridge.Rect2i] get_rect2i_from_pyobject(PyObject* py_object):
    return (<Rect2i>py_object).Rect2i_internal_class_ptr;
cdef api shared_ptr[bridge.Callable] get_callable_from_pyobject(PyObject* py_object):
    return (<Callable>py_object).Callable_internal_class_ptr;
cdef api shared_ptr[bridge.NodePath] get_nodepath_from_pyobject(PyObject* py_object):
    return (<NodePath>py_object).NodePath_internal_class_ptr;
cdef api shared_ptr[bridge.String] get_string_from_py_string(str py_object):
    return py_c_string_to_string(py_object.encode("utf-8")).String_internal_class_ptr;
cdef api shared_ptr[bridge.String] get_string_from_pyobject(PyObject* py_object):
    return (<String>py_object).String_internal_class_ptr;
cdef api shared_ptr[bridge.PackedVector3Array] get_packedvector3array_from_pyobject(PyObject* py_object):
    return (<PackedVector3Array>py_object).PackedVector3Array_internal_class_ptr;
cdef api shared_ptr[bridge.Vector3] get_vector3_from_pyobject(PyObject* py_object):
    return (<Vector3>py_object).Vector3_internal_class_ptr;
cdef api shared_ptr[bridge.Dictionary] get_dictionary_from_pyobject(PyObject* py_object):
    return (<Dictionary>py_object).Dictionary_internal_class_ptr;
cdef api shared_ptr[bridge.Projection] get_projection_from_pyobject(PyObject* py_object):
    return (<Projection>py_object).Projection_internal_class_ptr;
cdef api shared_ptr[bridge.RID] get_rid_from_pyobject(PyObject* py_object):
    return (<RID>py_object).RID_internal_class_ptr;
cdef api shared_ptr[bridge.Vector2i] get_vector2i_from_pyobject(PyObject* py_object):
    return (<Vector2i>py_object).Vector2i_internal_class_ptr;
cdef api shared_ptr[bridge.Transform2D] get_transform2d_from_pyobject(PyObject* py_object):
    return (<Transform2D>py_object).Transform2D_internal_class_ptr;
cdef api shared_ptr[bridge.AABB] get_aabb_from_pyobject(PyObject* py_object):
    return (<AABB>py_object).AABB_internal_class_ptr;
cdef api shared_ptr[bridge.Vector3i] get_vector3i_from_pyobject(PyObject* py_object):
    return (<Vector3i>py_object).Vector3i_internal_class_ptr;
cdef api shared_ptr[bridge.PackedInt64Array] get_packedint64array_from_pyobject(PyObject* py_object):
    return (<PackedInt64Array>py_object).PackedInt64Array_internal_class_ptr;
cdef api shared_ptr[bridge.PackedInt32Array] get_packedint32array_from_pyobject(PyObject* py_object):
    return (<PackedInt32Array>py_object).PackedInt32Array_internal_class_ptr;
cdef api shared_ptr[bridge.PackedFloat32Array] get_packedfloat32array_from_pyobject(PyObject* py_object):
    return (<PackedFloat32Array>py_object).PackedFloat32Array_internal_class_ptr;
cdef api shared_ptr[bridge.PackedByteArray] get_packedbytearray_from_pyobject(PyObject* py_object):
    return (<PackedByteArray>py_object).PackedByteArray_internal_class_ptr;
cdef api shared_ptr[bridge.Vector4] get_vector4_from_pyobject(PyObject* py_object):
    return (<Vector4>py_object).Vector4_internal_class_ptr;
cdef api shared_ptr[bridge.Rect2] get_rect2_from_pyobject(PyObject* py_object):
    return (<Rect2>py_object).Rect2_internal_class_ptr;
cdef api shared_ptr[bridge.Vector2] get_vector2_from_pyobject(PyObject* py_object):
    return (<Vector2>py_object).Vector2_internal_class_ptr;
cdef api shared_ptr[bridge.Transform3D] get_transform3d_from_pyobject(PyObject* py_object):
    return (<Transform3D>py_object).Transform3D_internal_class_ptr;
cdef api shared_ptr[bridge.PackedColorArray] get_packedcolorarray_from_pyobject(PyObject* py_object):
    return (<PackedColorArray>py_object).PackedColorArray_internal_class_ptr;
cdef api shared_ptr[bridge.Signal] get_signal_from_pyobject(PyObject* py_object):
    return (<Signal>py_object).Signal_internal_class_ptr;
cdef api shared_ptr[bridge.PackedVector2Array] get_packedvector2array_from_pyobject(PyObject* py_object):
    return (<PackedVector2Array>py_object).PackedVector2Array_internal_class_ptr;
cdef api shared_ptr[bridge.Plane] get_plane_from_pyobject(PyObject* py_object):
    return (<Plane>py_object).Plane_internal_class_ptr;
cdef api shared_ptr[bridge.PackedFloat64Array] get_packedfloat64array_from_pyobject(PyObject* py_object):
    return (<PackedFloat64Array>py_object).PackedFloat64Array_internal_class_ptr;
cdef api shared_ptr[bridge.Basis] get_basis_from_pyobject(PyObject* py_object):
    return (<Basis>py_object).Basis_internal_class_ptr;
cdef api shared_ptr[bridge.Color] get_color_from_pyobject(PyObject* py_object):
    return (<Color>py_object).Color_internal_class_ptr;
cdef api shared_ptr[bridge.Vector4i] get_vector4i_from_pyobject(PyObject* py_object):
    return (<Vector4i>py_object).Vector4i_internal_class_ptr;
cdef api shared_ptr[bridge.Array] get_array_from_pyobject(PyObject* py_object):
    return (<Array>py_object).Array_internal_class_ptr;
cdef api shared_ptr[bridge.Quaternion] get_quaternion_from_pyobject(PyObject* py_object):
    return (<Quaternion>py_object).Quaternion_internal_class_ptr;
cdef api shared_ptr[bridge.PackedStringArray] get_packedstringarray_from_pyobject(PyObject* py_object):
    return (<PackedStringArray>py_object).PackedStringArray_internal_class_ptr;
cdef api shared_ptr[bridge.StringName] get_stringname_from_pyobject(PyObject* py_object):
    return (<StringName>py_object).StringName_internal_class_ptr;
cdef api shared_ptr[bridge.Object] get_object_from_pyobject(PyObject* py_object, bridge.Object* output):
    cdef Object _object = <Object>py_object
    #output[0] = _object.Object_internal_class_ptr.get()[0]
    return _object.Object_internal_class_ptr;
