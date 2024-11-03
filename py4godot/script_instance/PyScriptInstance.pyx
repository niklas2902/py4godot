# distutils: language=c++
import inspect, traceback
from cython.operator cimport dereference
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from py4godot.utils.utils cimport *
from py4godot.instance_data.InstanceData cimport *
cimport py4godot.classes.cpp_bridge as cppbridge
from py4godot.classes.core cimport *
from py4godot.classes.Object cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.utils.print_tools import *
from libc.stdlib cimport malloc, free
from libcpp.memory cimport make_shared
from py4godot.core.variant4 import cast_helpers
import threading

cdef types_to_decref = {type(1), type(1.), type(True)}

cdef api GDExtensionBool instance_set(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value) noexcept:
    py_log("instance_set")
    cdef InstanceData* instance = <InstanceData*>p_instance
    #TODO still a problem with custom string attributes. Why is this still crashing?
    cdef StringName method_name = StringName.__new__(StringName)
    cdef cppbridge.StringName internal_method_name = cppbridge.StringName.new_static((<void**>p_name)[0]) #TODO: Create unconst helper
    method_name.StringName_internal_class_ptr = make_shared[cppbridge.StringName](internal_method_name)
    cdef String method_name_str = String.new2(method_name)
    cdef unicode py_method_name_str = gd_string_to_py_string(method_name_str)

    cdef Variant var
    try:
        var.native_ptr = <void*>p_value
        val = <object>var.get_converted_value(True)
        if isinstance(val, Signal):
            return 1 #TODO: improve this. The problem is, that Godot decides to set signals itself. This lead to problems in the past. Check if it is still an issue
        setattr(<object>(instance.owner),py_method_name_str, <object>val)
        #Py_DECREF(<object>val)#TODO: is this necessary?

    except Exception as e:
        print_error_detailed('PyScriptInstance.pyx', 'instance_set', 39, f"An Exception happened while setting attribute:{e}" ) # !this gets generated print_error
        print_error_detailed('PyScriptInstance.pyx', 'instance_set', 40, f"traceback: {traceback.format_exc()}") # !this gets generated print_error

    return 1

cdef api GDExtensionBool instance_get(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret)  noexcept:
    py_log("instance_get")
    cdef InstanceData* instance = <InstanceData*>p_instance
    #TODO still a problem with custom string attributes. Why is this still crashing?
    cdef StringName method_name = StringName.__new__(StringName)
    cdef cppbridge.StringName internal_method_name = cppbridge.StringName.new_static((<void**>p_name)[0]) #TODO: Create unconst helper
    method_name.StringName_internal_class_ptr = make_shared[cppbridge.StringName](internal_method_name)
    cdef String method_name_str = String.new2(method_name)
    cdef unicode py_method_name_str = gd_string_to_py_string(method_name_str)
    cdef str py_typename;

    cdef object get_val = None
    cdef Variant get_var
    try:
        get_var.native_ptr = <void*>r_ret
        get_val = getattr(<object>(instance.owner),py_method_name_str)
        py_typename = str(type(get_val).__name__)
        get_var.init_from_py_object(<PyObject*>get_val, py_typename.encode("utf-8"))
    except Exception as e:
        print_error_detailed('PyScriptInstance.pyx', 'instance_get', 63, "Exception while getting attribute:",e) # !this gets generated print_error
        print_error_detailed('PyScriptInstance.pyx', 'instance_get', 64, f"traceback: {traceback.format_exc()}") # !this gets generated print_error
    return 1

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
cdef api GDExtensionBool instance_has_method(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name) noexcept:
    py_log("instance_has_method")
    cdef InstanceData* instance = <InstanceData*>p_instance

    cdef StringName method_name = StringName.__new__(StringName)
    cdef cppbridge.StringName internal_method_name = cppbridge.StringName.new_static((<void**>p_name)[0]) #TODO: Create unconst helper
    method_name.StringName_internal_class_ptr = make_shared[cppbridge.StringName](internal_method_name)
    cdef unicode py_method_name_str
    try:
        py_method_name_str = gd_string_name_to_py_string(method_name)
    except Exception as e:
        print_error(f"Exception: {e}") # !this gets generated print_error
    return hasattr(<object>(instance.owner), py_method_name_str)

cdef api MethodCallData instance_call(GDExtensionScriptInstanceDataPtr p_self, GDExtensionConstStringNamePtr p_method, const GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error) noexcept:
    py_log("instance_call")
    cdef InstanceData* instance = <InstanceData*>p_self
    #TODO still a problem with custom string attributes. Why is this still crashing?
    cdef StringName method_name = StringName.__new__(StringName)
    cdef cppbridge.StringName internal_method_name = cppbridge.StringName.new_static((<void**>p_method)[0]) #TODO: Create unconst helper
    method_name.StringName_internal_class_ptr = make_shared[cppbridge.StringName](internal_method_name)
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
    try:
        for index in range(0, p_argument_count):
            var.native_ptr = <void*>p_args[index]
            arg = <object>var.get_converted_value(True)
            if type(arg) in types_to_decref :#or isinstance(arg, Object):
                Py_DECREF(arg)
            args.append(arg)
        cast_helpers.clear_vals() # free memory again, now that we are safe
        if not hasattr(instance_object,py_method_name_str):
            return ret_val
        method = getattr(instance_object,py_method_name_str)
        result = method(*args)
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