# distutils: language=c++
import traceback
from cython.operator cimport dereference
import py4godot.py_classes.core as core
from py4godot.utils.print_tools import print_error, py_log, print_error_detailed
from py4godot.utils.utils cimport *
from py4godot.instance_data.InstanceData cimport InstanceData, MethodCallData
cimport py4godot.classes.cpp_bridge as cppbridge
import py4godot.py_classes.RefCounted as refCounted
from py4godot.core.variant4.Variant4 cimport *
from libcpp.memory cimport make_shared
from py4godot.core.variant4 import cast_helpers
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from py4godot.utils.utils cimport create_string_name_from_ptr

from py4godot.wrappers.wrappers cimport create_wrapper_from_String_ptr, create_wrapper_from_StringName_ptr

cdef types_to_decref = {type(1), type(1.), type(True)}
l = []

cdef api GDExtensionBool instance_set(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value) noexcept:
    py_log("instance_set")
    cdef InstanceData* instance = <InstanceData*>p_instance
    #TODO still a problem with custom string attributes. Why is this still crashing?
    cdef object method_name = core.StringName.__new__(core.StringName)
    cdef shared_ptr[cppbridge.StringName] internal_method_name  = create_string_name_from_ptr((<void**>p_name)[0])
    method_name._ptr = create_wrapper_from_StringName_ptr(internal_method_name)
    cdef object method_name_str = core.String.new2(method_name)
    cdef unicode py_method_name_str = gd_string_to_py_string(method_name_str)

    cdef Variant var
    try:
        var.native_ptr = <void*>p_value
        val = <object>var.get_converted_value(True)
        if isinstance(val, core.Signal):
            return 1 #TODO: improve this. The problem is, that Godot decides to set signals itself. This lead to problems in the past. Check if it is still an issue
        setattr(<object>(instance.owner),py_method_name_str, <object>val)

    except Exception as e:
        print_error_detailed('PyScriptInstance.pyx', 'instance_set', 39, f"An Exception happened while setting attribute:{e}" ) # !this gets generated print_error
        print_error_detailed('PyScriptInstance.pyx', 'instance_set', 40, f"traceback: {traceback.format_exc()}") # !this gets generated print_error

    return 1

cdef api GDExtensionBool instance_get(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret)  noexcept:
    py_log("instance_get")
    cdef InstanceData* instance = <InstanceData*>p_instance
    cdef object method_name = core.StringName.__new__(core.StringName)
    #TODO still a problem with custom string attributes. Why is this still crashing?
    cdef objectmethod_name = core.StringName.__new__(core.StringName)
    cdef shared_ptr[cppbridge.StringName] internal_method_name = create_string_name_from_ptr((<void**>p_name)[0])
    method_name._ptr = create_wrapper_from_StringName_ptr(internal_method_name)
    cdef object method_name_str = core.String.new2(method_name)
    cdef unicode py_method_name_str = gd_string_to_py_string(method_name_str)
    cdef str py_typename;

    cdef object get_val = None
    cdef Variant get_var
    try:
        get_var.native_ptr = <void*>r_ret
        get_val = getattr(<object>(instance.owner),py_method_name_str)
        if type(get_val) == type(""):
            get_val = fix_string_behavior(<object>instance.owner, get_val, py_method_name_str)
        py_typename = str(type(get_val).__name__)
        get_var.init_from_py_object(<PyObject*>get_val, py_typename.encode("utf-8"))
    except Exception as e:
        print_error_detailed('PyScriptInstance.pyx', 'instance_get', 63, "Exception while getting attribute:",e) # !this gets generated print_error
        print_error_detailed('PyScriptInstance.pyx', 'instance_get', 64, f"traceback: {traceback.format_exc()}") # !this gets generated print_error
    return 1

def fix_string_behavior(gd_object, val, name):
    # We can't delete Strings, when getting with property in order not to crash
    cdef object get_val = core.String.new1(val)
    get_val.shouldBeDeleted = False
    return get_val

"""cdef api const GDExtensionMethodInfo * instance_get_method_list(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count) :
    global method_infos
    py_log("call_method_list")
    cdef InstanceData instance = <InstanceData>p_instance
    try:
        r_count[0] = len(instance.methods) #TODO enable properties

        if method_infos != NULL:
            return method_infos

        method_infos = <GDExtensionMethodInfo*>malloc(sizeof(GDExtensionMethodInfo)* len(instance.methods))
        for index in range(0, len(instance.methods)):
            method_infos[index] = (<MethodDescription>(instance.methods[index])).method_info
            py_log("set method_info",
            (<MethodDescription>(instance.methods[index])).method_info.argument_count,
            (<MethodDescription>(instance.methods[index])).argument_count)
    except Exception as e:
        error("Exception in method_list:", e)
    return method_infos
"""

cdef api GDExtensionBool is_overridden(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name):
    py_log("instance_has_method")
    cdef InstanceData* instance = <InstanceData*>p_instance

    cdef object method_name = core.StringName.__new__(core.StringName)
    cdef shared_ptr[cppbridge.StringName] internal_method_name = create_string_name_from_ptr((<void**>p_name)[0])
    method_name._ptr = create_wrapper_from_StringName_ptr(internal_method_name)
    cdef unicode py_method_name_str
    try:
        py_method_name_str = gd_string_name_to_py_string(method_name)
    except Exception as e:
        print_error(f"Exception: {e}") # !this gets generated print_error
    method = getattr(<object>(instance.owner), py_method_name_str, None)
    #print_error(py_method_name_str)
    #print_error(method)
    #print_error(hasattr(method, "gd_is_native"))
    return method != None and not hasattr(method, "gd_is_native")

cdef api GDExtensionBool instance_has_method(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name) noexcept:
    py_log("instance_has_method")
    cdef InstanceData* instance = <InstanceData*>p_instance

    cdef object method_name = core.StringName.__new__(core.StringName)
    cdef shared_ptr[cppbridge.StringName] internal_method_name = create_string_name_from_ptr((<void**>p_name)[0])
    method_name._ptr = create_wrapper_from_StringName_ptr(internal_method_name)
    cdef unicode py_method_name_str
    try:
        py_method_name_str = gd_string_name_to_py_string(method_name)
    except Exception as e:
        print_error(f"Exception: {e}") # !this gets generated print_error
    method = getattr(<object>(instance.owner), py_method_name_str, None)
    return int(method != None)

cdef unrefcount(object object):
    object.casted_from = 1 #Set a value, so that the object doesn't get deleted. TODO: get rid of this. this is a workaround

cdef api MethodCallData instance_call(GDExtensionScriptInstanceDataPtr p_self, GDExtensionConstStringNamePtr p_method, const GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error) noexcept:
    py_log("instance_call")
    cdef InstanceData* instance = <InstanceData*>p_self
    #TODO still a problem with custom string attributes. Why is this still crashing?
    cdef object method_name = core.StringName.__new__(core.StringName)
    cdef shared_ptr[cppbridge.StringName] internal_method_name = create_string_name_from_ptr((<void**>p_method)[0])
    method_name._ptr = create_wrapper_from_StringName_ptr(internal_method_name)
    cdef unicode py_method_name_str
    try:
        py_method_name_str = gd_string_name_to_py_string(method_name)
    except Exception as e:
        print_error_detailed('PyScriptInstance.pyx', 'instance_call', 112, f"Exception: {e}") # !this gets generated print_error
    cdef Variant var
    args = []
    cdef object instance_object = <object>instance.owner
    cdef object method
    cdef object arg
    cdef MethodCallData ret_val
    ret_val.has_value = False
    print_error("hello2")
    try:
        for index in range(0, p_argument_count):
            var.native_ptr = <void*>p_args[index]
            arg = <object>var.get_converted_value(True)
            if type(arg) in types_to_decref :#or isinstance(arg, Object):
                Py_DECREF(arg)
            if isinstance(arg, refCounted.RefCounted):
               unrefcount(arg) #TODO: fix this. this is a workaround, so that python doesn't delete this.
            args.append(arg)
        cast_helpers.clear_vals() # free memory again, now that we are safe
        if not hasattr(instance_object,py_method_name_str):
            return ret_val
        print_error("hello3")
        method = getattr(instance_object,py_method_name_str)
        print_error(f"before calling method'{py_method_name_str}'")
        result = method(*args)
        print_error("after calling method")
    except Exception as e:
        print_error_detailed('PyScriptInstance.pyx', 'instance_call', 133, f"An Exception happened while calling a method:{e}" ) # !this gets generated print_error
        print_error_detailed('PyScriptInstance.pyx', 'instance_call', 134, f"traceback: {traceback.format_exc()}") # !this gets generated print_error
        print_error_detailed('PyScriptInstance.pyx', 'instance_call', 135, f"method name:{py_method_name_str}") # !this gets generated print_error
    py_log("object:"+str(instance_object))

    py_typename = str(type(result).__name__)
    ret_val.has_value = True
    Py_INCREF(result)
    cdef PyObject* py_obj_result = <PyObject*>result
    ret_val.ret_val =  py_obj_result
    Py_INCREF(py_typename)
    ret_val.ret_typename = <PyObject*>py_typename
    return ret_val