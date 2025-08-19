# distutils: language=c++
import py4godot.py_classes.core as core
from py4godot.py_classes.Object import Object
cimport py4godot.classes.cpp_bridge as bridge
from cpython cimport Py_INCREF, Py_DECREF, PyObject

from py4godot.signals import GDSignal
from py4godot.utils.utils cimport *
from libcpp cimport bool

cimport py4godot.wrappers.wrappers as wrappers



cdef api shared_ptr[bridge.String] type_helper_pystring_to_gdstring(str string):
    cdef object gd_string = py_c_string_to_string(string.encode("utf-8"))
    #Py_INCREF(val)
    return wrappers.extract_ptr_from_StringWrapper(gd_string._ptr)

cdef api object type_helper_create_vector3(shared_ptr[bridge.Vector3]& bridge_vector):
    cdef object val = core.Vector3.__new__(core.Vector3)
    val._ptr = wrappers.create_wrapper_from_Vector3_ptr(bridge_vector)
    #Py_INCREF(val)
    return val

cdef api object type_helper_create_string(shared_ptr[bridge.String]& bridge_string):
    cdef object val = core.String.__new__(core.String)
    val._ptr = wrappers.create_wrapper_from_String_ptr(bridge_string)
    ##Py_INCREF(val)
    return val

cdef api object type_helper_create_object(shared_ptr[bridge.Object]& bridge_object):
    cdef object val = Object.__new__(Object)
    val._ptr = wrappers.create_wrapper_from_Object_ptr(bridge_object)
    ##Py_INCREF(val)
    return val


cdef api object type_helper_create_py_string(shared_ptr[bridge.String]& bridge_string):
    cdef object gen_string = core.String.__new__(core.String)
    gen_string._ptr = wrappers.create_wrapper_from_String_ptr(bridge_string)
    cdef unicode val = gd_string_to_py_string(gen_string)
    #Py_INCREF(val)
    return val

cdef api object type_helper_create_rect2i(shared_ptr[bridge.Rect2i]& bridge_val):
    cdef object val = core.Rect2i.__new__(core.Rect2i)
    val._ptr = wrappers.create_wrapper_from_Rect2i_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_callable(shared_ptr[bridge.Callable]& bridge_val):
    cdef object val = core.Callable.__new__(core.Callable)
    val._ptr = wrappers.create_wrapper_from_Callable_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_nodepath(shared_ptr[bridge.NodePath]& bridge_val):
    cdef object val = core.NodePath.__new__(core.NodePath)
    val._ptr = wrappers.create_wrapper_from_NodePath_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedvector3array(shared_ptr[bridge.PackedVector3Array]& bridge_val):
    cdef object val = core.PackedVector3Array.__new__(core.PackedVector3Array)
    val._ptr = wrappers.create_wrapper_from_PackedVector3Array_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_dictionary(shared_ptr[bridge.Dictionary]& bridge_val):
    cdef object val = core.Dictionary.__new__(core.Dictionary)
    val._ptr = wrappers.create_wrapper_from_Dictionary_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_projection(shared_ptr[bridge.Projection]& bridge_val):
    cdef object val = core.Projection.__new__(core.Projection)
    val._ptr = wrappers.create_wrapper_from_Projection_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_rid(shared_ptr[bridge.RID]& bridge_val):
    cdef object val = core.RID.__new__(core.RID)
    val._ptr = wrappers.create_wrapper_from_RID_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_vector2i(shared_ptr[bridge.Vector2i]& bridge_val):
    cdef object val = core.Vector2i.__new__(core.Vector2i)
    val._ptr = wrappers.create_wrapper_from_Vector2i_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_transform2d(shared_ptr[bridge.Transform2D]& bridge_val):
    cdef object val = core.Transform2D.__new__(core.Transform2D)
    val._ptr = wrappers.create_wrapper_from_Transform2D_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_aabb(shared_ptr[bridge.AABB]& bridge_val):
    cdef object val = core.AABB.__new__(core.AABB)
    val._ptr = wrappers.create_wrapper_from_AABB_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_vector3i(shared_ptr[bridge.Vector3i]& bridge_val):
    cdef object val = core.Vector3i.__new__(core.Vector3i)
    val._ptr = wrappers.create_wrapper_from_Vector3i_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedint64array(shared_ptr[bridge.PackedInt64Array]& bridge_val):
    cdef object val = core.PackedInt64Array.__new__(core.PackedInt64Array)
    val._ptr = wrappers.create_wrapper_from_PackedInt64Array_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedint32array(shared_ptr[bridge.PackedInt32Array]& bridge_val):
    cdef object val = core.PackedInt32Array.__new__(core.PackedInt32Array)
    val._ptr = wrappers.create_wrapper_from_PackedInt32Array_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedfloat32array(shared_ptr[bridge.PackedFloat32Array]& bridge_val):
    cdef object val = core.PackedFloat32Array.__new__(core.PackedFloat32Array)
    val._ptr = wrappers.create_wrapper_from_PackedFloat32Array_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedbytearray(shared_ptr[bridge.PackedByteArray]& bridge_val):
    cdef object val = core.PackedByteArray.__new__(core.PackedByteArray)
    val._ptr = wrappers.create_wrapper_from_PackedByteArray_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_vector4(shared_ptr[bridge.Vector4]& bridge_val):
    cdef object val = core.Vector4.__new__(core.Vector4)
    val._ptr = wrappers.create_wrapper_from_Vector4_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_rect2(shared_ptr[bridge.Rect2]& bridge_val):
    cdef object val = core.Rect2.__new__(core.Rect2)
    val._ptr = wrappers.create_wrapper_from_Rect2_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_vector2(shared_ptr[bridge.Vector2]& bridge_val):
    cdef object val = core.Vector2.__new__(core.Vector2)
    val._ptr = wrappers.create_wrapper_from_Vector2_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_transform3d(shared_ptr[bridge.Transform3D]& bridge_val):
    cdef object val = core.Transform3D.__new__(core.Transform3D)
    val._ptr = wrappers.create_wrapper_from_Transform3D_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedcolorarray(shared_ptr[bridge.PackedColorArray]& bridge_val):
    cdef object val = core.PackedColorArray.__new__(core.PackedColorArray)
    val._ptr = wrappers.create_wrapper_from_PackedColorArray_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_signal(shared_ptr[bridge.Signal]& bridge_val):
    cdef object val = GDSignal.__new__(GDSignal)
    val._ptr = wrappers.create_wrapper_from_Signal_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedvector2array(shared_ptr[bridge.PackedVector2Array]& bridge_val):
    cdef object val = core.PackedVector2Array.__new__(core.PackedVector2Array)
    val._ptr = wrappers.create_wrapper_from_PackedVector2Array_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_plane(shared_ptr[bridge.Plane]& bridge_val):
    cdef object val = core.Plane.__new__(core.Plane)
    val._ptr = wrappers.create_wrapper_from_Plane_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedfloat64array(shared_ptr[bridge.PackedFloat64Array]& bridge_val):
    cdef object val = core.PackedFloat64Array.__new__(core.PackedFloat64Array)
    val._ptr = wrappers.create_wrapper_from_PackedFloat64Array_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_basis(shared_ptr[bridge.Basis]& bridge_val):
    cdef object val = core.Basis.__new__(core.Basis)
    val._ptr = wrappers.create_wrapper_from_Basis_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_color(shared_ptr[bridge.Color]& bridge_val):
    cdef object val = core.Color.__new__(core.Color)
    val._ptr = wrappers.create_wrapper_from_Color_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_vector4i(shared_ptr[bridge.Vector4i]& bridge_val):
    cdef object val = core.Vector4i.__new__(core.Vector4i)
    val._ptr = wrappers.create_wrapper_from_Vector4i_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_array(shared_ptr[bridge.Array]& bridge_val):
    cdef object val = core.Array.__new__(core.Array)
    val._ptr = wrappers.create_wrapper_from_Array_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_quaternion(shared_ptr[bridge.Quaternion]& bridge_val):
    cdef object val = core.Quaternion.__new__(core.Quaternion)
    val._ptr = wrappers.create_wrapper_from_Quaternion_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_packedstringarray(shared_ptr[bridge.PackedStringArray]& bridge_val):
    cdef object val = core.PackedStringArray.__new__(core.PackedStringArray)
    val._ptr = wrappers.create_wrapper_from_PackedStringArray_ptr(bridge_val)
    #Py_INCREF(val)
    return val
cdef api object type_helper_create_stringname(shared_ptr[bridge.StringName]& bridge_val):
    cdef object val = core.StringName.__new__(core.StringName)
    val._ptr = wrappers.create_wrapper_from_StringName_ptr(bridge_val)
    #Py_INCREF(val)
    return val


cdef api shared_ptr[bridge.Rect2i] get_rect2i_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_Rect2iWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Callable] get_callable_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_CallableWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.NodePath] get_nodepath_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_NodePathWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.String] get_string_from_py_string(str py_object):
    cdef object string = py_c_string_to_string(py_object.encode("utf-8"))
    return wrappers.extract_ptr_from_StringWrapper(string._ptr)
cdef api shared_ptr[bridge.String] get_string_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_StringWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.PackedVector3Array] get_packedvector3array_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_PackedVector3ArrayWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Vector3] get_vector3_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_Vector3Wrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Dictionary] get_dictionary_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_DictionaryWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Projection] get_projection_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_ProjectionWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.RID] get_rid_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_RIDWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Vector2i] get_vector2i_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_Vector2iWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Transform2D] get_transform2d_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_Transform2DWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.AABB] get_aabb_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_AABBWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Vector3i] get_vector3i_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_Vector3iWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.PackedInt64Array] get_packedint64array_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_PackedInt64ArrayWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.PackedInt32Array] get_packedint32array_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_PackedInt32ArrayWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.PackedFloat32Array] get_packedfloat32array_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_PackedFloat32ArrayWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.PackedByteArray] get_packedbytearray_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_PackedByteArrayWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Vector4] get_vector4_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_Vector4Wrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Rect2] get_rect2_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_Rect2Wrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Vector2] get_vector2_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_Vector2Wrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Transform3D] get_transform3d_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_Transform3DWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.PackedColorArray] get_packedcolorarray_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_PackedColorArrayWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Signal] get_signal_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_SignalWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.PackedVector2Array] get_packedvector2array_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_PackedVector2ArrayWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Plane] get_plane_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_PlaneWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.PackedFloat64Array] get_packedfloat64array_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_PackedFloat64ArrayWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Basis] get_basis_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_BasisWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Color] get_color_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_ColorWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Vector4i] get_vector4i_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_Vector4iWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Array] get_array_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_ArrayWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Quaternion] get_quaternion_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_QuaternionWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.PackedStringArray] get_packedstringarray_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_PackedStringArrayWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.StringName] get_stringname_from_pyobject(object py_object):
    return wrappers.extract_ptr_from_StringNameWrapper((py_object)._ptr);
cdef api shared_ptr[bridge.Object] get_object_from_pyobject(object py_object, bridge.Object* output):
    cdef object _object = py_object
    #output[0] = _object.Object_internal_class_ptr.get()[0]
    return wrappers.extract_ptr_from_ObjectWrapper(_object._ptr);
