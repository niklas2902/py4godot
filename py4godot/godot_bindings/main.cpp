#pragma once
#include "gdextension_interface.h"
#include "py4godot/pluginscript_api/api.h"
#include "main.h"
#include "functions.h"

#include <string.h>
GDExtensionInterfaceGetProcAddress global_p_get_proc_address;
GDExtensionClassLibraryPtr _library = nullptr;

#if defined(_WIN64) || defined(_WIN32)
        //int mtx = 0;
        CRITICAL_SECTION mtx;
#else
    std::mutex mtx; // Define a mutex
#endif


typedef void (*FunctionPointer)();
FunctionPointer load_proc_address (char* function_name){
    auto function = global_p_get_proc_address(function_name);
    assert(function != nullptr);
    return function;

}

void init_functions(){
    functions::gdextension_interface_get_godot_version = (GDExtensionInterfaceGetGodotVersion)load_proc_address("get_godot_version");
    functions::gdextension_interface_mem_alloc = (GDExtensionInterfaceMemAlloc)load_proc_address("mem_alloc");
    functions::gdextension_interface_mem_realloc = (GDExtensionInterfaceMemRealloc)load_proc_address("mem_realloc");
    functions::gdextension_interface_mem_free = (GDExtensionInterfaceMemFree)load_proc_address("mem_free");
    functions::gdextension_interface_print_error = (GDExtensionInterfacePrintError)load_proc_address("print_error");
    functions::gdextension_interface_print_error_with_message = (GDExtensionInterfacePrintErrorWithMessage)load_proc_address("print_error_with_message");
    functions::gdextension_interface_print_warning = (GDExtensionInterfacePrintWarning)load_proc_address("print_warning");
    functions::gdextension_interface_print_warning_with_message = (GDExtensionInterfacePrintWarningWithMessage)load_proc_address("print_warning_with_message");
    functions::gdextension_interface_print_script_error = (GDExtensionInterfacePrintScriptError)load_proc_address("print_script_error");
    functions::gdextension_interface_print_script_error_with_message = (GDExtensionInterfacePrintScriptErrorWithMessage)load_proc_address("print_script_error_with_message");
    functions::gdextension_interface_get_native_struct_size = (GDExtensionInterfaceGetNativeStructSize)load_proc_address("get_native_struct_size");
    functions::gdextension_interface_variant_new_copy = (GDExtensionInterfaceVariantNewCopy)load_proc_address("variant_new_copy");
    functions::gdextension_interface_variant_new_nil = (GDExtensionInterfaceVariantNewNil)load_proc_address("variant_new_nil");
    functions::gdextension_interface_variant_destroy = (GDExtensionInterfaceVariantDestroy)load_proc_address("variant_destroy");
    functions::gdextension_interface_variant_call = (GDExtensionInterfaceVariantCall)load_proc_address("variant_call");
    functions::gdextension_interface_variant_call_static = (GDExtensionInterfaceVariantCallStatic)load_proc_address("variant_call_static");
    functions::gdextension_interface_variant_evaluate = (GDExtensionInterfaceVariantEvaluate)load_proc_address("variant_evaluate");
    functions::gdextension_interface_variant_set = (GDExtensionInterfaceVariantSet)load_proc_address("variant_set");
    functions::gdextension_interface_variant_set_named = (GDExtensionInterfaceVariantSetNamed)load_proc_address("variant_set_named");
    functions::gdextension_interface_variant_set_keyed = (GDExtensionInterfaceVariantSetKeyed)load_proc_address("variant_set_keyed");
    functions::gdextension_interface_variant_set_indexed = (GDExtensionInterfaceVariantSetIndexed)load_proc_address("variant_set_indexed");
    functions::gdextension_interface_variant_get = (GDExtensionInterfaceVariantGet)load_proc_address("variant_get");
    functions::gdextension_interface_variant_get_named = (GDExtensionInterfaceVariantGetNamed)load_proc_address("variant_get_named");
    functions::gdextension_interface_variant_get_keyed = (GDExtensionInterfaceVariantGetKeyed)load_proc_address("variant_get_keyed");
    functions::gdextension_interface_variant_get_indexed = (GDExtensionInterfaceVariantGetIndexed)load_proc_address("variant_get_indexed");
    functions::gdextension_interface_variant_iter_init = (GDExtensionInterfaceVariantIterInit)load_proc_address("variant_iter_init");
    functions::gdextension_interface_variant_iter_next = (GDExtensionInterfaceVariantIterNext)load_proc_address("variant_iter_next");
    functions::gdextension_interface_variant_iter_get = (GDExtensionInterfaceVariantIterGet)load_proc_address("variant_iter_get");
    functions::gdextension_interface_variant_hash = (GDExtensionInterfaceVariantHash)load_proc_address("variant_hash");
    functions::gdextension_interface_variant_recursive_hash = (GDExtensionInterfaceVariantRecursiveHash)load_proc_address("variant_recursive_hash");
    functions::gdextension_interface_variant_hash_compare = (GDExtensionInterfaceVariantHashCompare)load_proc_address("variant_hash_compare");
    functions::gdextension_interface_variant_booleanize = (GDExtensionInterfaceVariantBooleanize)load_proc_address("variant_booleanize");
    functions::gdextension_interface_variant_duplicate = (GDExtensionInterfaceVariantDuplicate)load_proc_address("variant_duplicate");
    functions::gdextension_interface_variant_stringify = (GDExtensionInterfaceVariantStringify)load_proc_address("variant_stringify");
    functions::gdextension_interface_variant_get_type = (GDExtensionInterfaceVariantGetType)load_proc_address("variant_get_type");
    functions::gdextension_interface_variant_has_method = (GDExtensionInterfaceVariantHasMethod)load_proc_address("variant_has_method");
    functions::gdextension_interface_variant_has_member = (GDExtensionInterfaceVariantHasMember)load_proc_address("variant_has_member");
    functions::gdextension_interface_variant_has_key = (GDExtensionInterfaceVariantHasKey)load_proc_address("variant_has_key");
    functions::gdextension_interface_variant_get_type_name = (GDExtensionInterfaceVariantGetTypeName)load_proc_address("variant_get_type_name");
    functions::gdextension_interface_variant_can_convert = (GDExtensionInterfaceVariantCanConvert)load_proc_address("variant_can_convert");
    functions::gdextension_interface_variant_can_convert_strict = (GDExtensionInterfaceVariantCanConvertStrict)load_proc_address("variant_can_convert_strict");
    functions::gdextension_interface_get_variant_from_type_constructor = (GDExtensionInterfaceGetVariantFromTypeConstructor)load_proc_address("get_variant_from_type_constructor");
    functions::gdextension_interface_get_variant_to_type_constructor = (GDExtensionInterfaceGetVariantToTypeConstructor)load_proc_address("get_variant_to_type_constructor");
    functions::gdextension_interface_variant_get_ptr_operator_evaluator = (GDExtensionInterfaceVariantGetPtrOperatorEvaluator)load_proc_address("variant_get_ptr_operator_evaluator");
    functions::gdextension_interface_variant_get_ptr_builtin_method = (GDExtensionInterfaceVariantGetPtrBuiltinMethod)load_proc_address("variant_get_ptr_builtin_method");
    functions::gdextension_interface_variant_get_ptr_constructor = (GDExtensionInterfaceVariantGetPtrConstructor)load_proc_address("variant_get_ptr_constructor");
    functions::gdextension_interface_variant_get_ptr_destructor = (GDExtensionInterfaceVariantGetPtrDestructor)load_proc_address("variant_get_ptr_destructor");
    functions::gdextension_interface_variant_construct = (GDExtensionInterfaceVariantConstruct)load_proc_address("variant_construct");
    functions::gdextension_interface_variant_get_ptr_setter = (GDExtensionInterfaceVariantGetPtrSetter)load_proc_address("variant_get_ptr_setter");
    functions::gdextension_interface_variant_get_ptr_getter = (GDExtensionInterfaceVariantGetPtrGetter)load_proc_address("variant_get_ptr_getter");
    functions::gdextension_interface_variant_get_ptr_indexed_setter = (GDExtensionInterfaceVariantGetPtrIndexedSetter)load_proc_address("variant_get_ptr_indexed_setter");
    functions::gdextension_interface_variant_get_ptr_indexed_getter = (GDExtensionInterfaceVariantGetPtrIndexedGetter)load_proc_address("variant_get_ptr_indexed_getter");
    functions::gdextension_interface_variant_get_ptr_keyed_setter = (GDExtensionInterfaceVariantGetPtrKeyedSetter)load_proc_address("variant_get_ptr_keyed_setter");
    functions::gdextension_interface_variant_get_ptr_keyed_getter = (GDExtensionInterfaceVariantGetPtrKeyedGetter)load_proc_address("variant_get_ptr_keyed_getter");
    functions::gdextension_interface_variant_get_ptr_keyed_checker = (GDExtensionInterfaceVariantGetPtrKeyedChecker)load_proc_address("variant_get_ptr_keyed_checker");
    functions::gdextension_interface_variant_get_constant_value = (GDExtensionInterfaceVariantGetConstantValue)load_proc_address("variant_get_constant_value");
    functions::gdextension_interface_variant_get_ptr_utility_function = (GDExtensionInterfaceVariantGetPtrUtilityFunction)load_proc_address("variant_get_ptr_utility_function");
    functions::gdextension_interface_string_new_with_latin1_chars = (GDExtensionInterfaceStringNewWithLatin1Chars)load_proc_address("string_new_with_latin1_chars");
    functions::gdextension_interface_string_new_with_utf8_chars = (GDExtensionInterfaceStringNewWithUtf8Chars)load_proc_address("string_new_with_utf8_chars");
    functions::gdextension_interface_string_new_with_utf16_chars = (GDExtensionInterfaceStringNewWithUtf16Chars)load_proc_address("string_new_with_utf16_chars");
    functions::gdextension_interface_string_new_with_utf32_chars = (GDExtensionInterfaceStringNewWithUtf32Chars)load_proc_address("string_new_with_utf32_chars");
    functions::gdextension_interface_string_new_with_wide_chars = (GDExtensionInterfaceStringNewWithWideChars)load_proc_address("string_new_with_wide_chars");
    functions::gdextension_interface_string_new_with_latin1_chars_and_len = (GDExtensionInterfaceStringNewWithLatin1CharsAndLen)load_proc_address("string_new_with_latin1_chars_and_len");
    functions::gdextension_interface_string_new_with_utf8_chars_and_len = (GDExtensionInterfaceStringNewWithUtf8CharsAndLen)load_proc_address("string_new_with_utf8_chars_and_len");
    functions::gdextension_interface_string_new_with_utf16_chars_and_len = (GDExtensionInterfaceStringNewWithUtf16CharsAndLen)load_proc_address("string_new_with_utf16_chars_and_len");
    functions::gdextension_interface_string_new_with_utf32_chars_and_len = (GDExtensionInterfaceStringNewWithUtf32CharsAndLen)load_proc_address("string_new_with_utf32_chars_and_len");
    functions::gdextension_interface_string_new_with_wide_chars_and_len = (GDExtensionInterfaceStringNewWithWideCharsAndLen)load_proc_address("string_new_with_wide_chars_and_len");
    functions::gdextension_interface_string_to_latin1_chars = (GDExtensionInterfaceStringToLatin1Chars)load_proc_address("string_to_latin1_chars");
    functions::gdextension_interface_string_to_utf8_chars = (GDExtensionInterfaceStringToUtf8Chars)load_proc_address("string_to_utf8_chars");
    functions::gdextension_interface_string_to_utf16_chars = (GDExtensionInterfaceStringToUtf16Chars)load_proc_address("string_to_utf16_chars");
    functions::gdextension_interface_string_to_utf32_chars = (GDExtensionInterfaceStringToUtf32Chars)load_proc_address("string_to_utf32_chars");
    functions::gdextension_interface_string_to_wide_chars = (GDExtensionInterfaceStringToWideChars)load_proc_address("string_to_wide_chars");
    functions::gdextension_interface_string_operator_index = (GDExtensionInterfaceStringOperatorIndex)load_proc_address("string_operator_index");
    functions::gdextension_interface_string_operator_index_const = (GDExtensionInterfaceStringOperatorIndexConst)load_proc_address("string_operator_index_const");
    functions::gdextension_interface_string_operator_plus_eq_string = (GDExtensionInterfaceStringOperatorPlusEqString)load_proc_address("string_operator_plus_eq_string");
    functions::gdextension_interface_string_operator_plus_eq_char = (GDExtensionInterfaceStringOperatorPlusEqChar)load_proc_address("string_operator_plus_eq_char");
    functions::gdextension_interface_string_operator_plus_eq_cstr = (GDExtensionInterfaceStringOperatorPlusEqCstr)load_proc_address("string_operator_plus_eq_cstr");
    functions::gdextension_interface_string_operator_plus_eq_wcstr = (GDExtensionInterfaceStringOperatorPlusEqWcstr)load_proc_address("string_operator_plus_eq_wcstr");
    functions::gdextension_interface_string_operator_plus_eq_c32str = (GDExtensionInterfaceStringOperatorPlusEqC32str)load_proc_address("string_operator_plus_eq_c32str");
    functions::gdextension_interface_xml_parser_open_buffer = (GDExtensionInterfaceXmlParserOpenBuffer)load_proc_address("xml_parser_open_buffer");
    functions::gdextension_interface_file_access_store_buffer = (GDExtensionInterfaceFileAccessStoreBuffer)load_proc_address("file_access_store_buffer");
    functions::gdextension_interface_file_access_get_buffer = (GDExtensionInterfaceFileAccessGetBuffer)load_proc_address("file_access_get_buffer");
    functions::gdextension_interface_worker_thread_pool_add_native_group_task = (GDExtensionInterfaceWorkerThreadPoolAddNativeGroupTask)load_proc_address("worker_thread_pool_add_native_group_task");
    functions::gdextension_interface_worker_thread_pool_add_native_task = (GDExtensionInterfaceWorkerThreadPoolAddNativeTask)load_proc_address("worker_thread_pool_add_native_task");
    functions::gdextension_interface_packed_byte_array_operator_index = (GDExtensionInterfacePackedByteArrayOperatorIndex)load_proc_address("packed_byte_array_operator_index");
    functions::gdextension_interface_packed_byte_array_operator_index_const = (GDExtensionInterfacePackedByteArrayOperatorIndexConst)load_proc_address("packed_byte_array_operator_index_const");
    functions::gdextension_interface_packed_color_array_operator_index = (GDExtensionInterfacePackedColorArrayOperatorIndex)load_proc_address("packed_color_array_operator_index");
    functions::gdextension_interface_packed_color_array_operator_index_const = (GDExtensionInterfacePackedColorArrayOperatorIndexConst)load_proc_address("packed_color_array_operator_index_const");
    functions::gdextension_interface_packed_float32_array_operator_index = (GDExtensionInterfacePackedFloat32ArrayOperatorIndex)load_proc_address("packed_float32_array_operator_index");
    functions::gdextension_interface_packed_float32_array_operator_index_const = (GDExtensionInterfacePackedFloat32ArrayOperatorIndexConst)load_proc_address("packed_float32_array_operator_index_const");
    functions::gdextension_interface_packed_float64_array_operator_index = (GDExtensionInterfacePackedFloat64ArrayOperatorIndex)load_proc_address("packed_float64_array_operator_index");
    functions::gdextension_interface_packed_float64_array_operator_index_const = (GDExtensionInterfacePackedFloat64ArrayOperatorIndexConst)load_proc_address("packed_float64_array_operator_index_const");
    functions::gdextension_interface_packed_int32_array_operator_index = (GDExtensionInterfacePackedInt32ArrayOperatorIndex)load_proc_address("packed_int32_array_operator_index");
    functions::gdextension_interface_packed_int32_array_operator_index_const = (GDExtensionInterfacePackedInt32ArrayOperatorIndexConst)load_proc_address("packed_int32_array_operator_index_const");
    functions::gdextension_interface_packed_int64_array_operator_index = (GDExtensionInterfacePackedInt64ArrayOperatorIndex)load_proc_address("packed_int64_array_operator_index");
    functions::gdextension_interface_packed_int64_array_operator_index_const = (GDExtensionInterfacePackedInt64ArrayOperatorIndexConst)load_proc_address("packed_int64_array_operator_index_const");
    functions::gdextension_interface_packed_string_array_operator_index = (GDExtensionInterfacePackedStringArrayOperatorIndex)load_proc_address("packed_string_array_operator_index");
    functions::gdextension_interface_packed_string_array_operator_index_const = (GDExtensionInterfacePackedStringArrayOperatorIndexConst)load_proc_address("packed_string_array_operator_index_const");
    functions::gdextension_interface_packed_vector2_array_operator_index = (GDExtensionInterfacePackedVector2ArrayOperatorIndex)load_proc_address("packed_vector2_array_operator_index");
    functions::gdextension_interface_packed_vector2_array_operator_index_const = (GDExtensionInterfacePackedVector2ArrayOperatorIndexConst)load_proc_address("packed_vector2_array_operator_index_const");
    functions::gdextension_interface_packed_vector3_array_operator_index = (GDExtensionInterfacePackedVector3ArrayOperatorIndex)load_proc_address("packed_vector3_array_operator_index");
    functions::gdextension_interface_packed_vector3_array_operator_index_const = (GDExtensionInterfacePackedVector3ArrayOperatorIndexConst)load_proc_address("packed_vector3_array_operator_index_const");
    functions::gdextension_interface_array_operator_index = (GDExtensionInterfaceArrayOperatorIndex)load_proc_address("array_operator_index");
    functions::gdextension_interface_array_operator_index_const = (GDExtensionInterfaceArrayOperatorIndexConst)load_proc_address("array_operator_index_const");
    functions::gdextension_interface_array_ref = (GDExtensionInterfaceArrayRef)load_proc_address("array_ref");
    functions::gdextension_interface_array_set_typed = (GDExtensionInterfaceArraySetTyped)load_proc_address("array_set_typed");
    functions::gdextension_interface_dictionary_operator_index = (GDExtensionInterfaceDictionaryOperatorIndex)load_proc_address("dictionary_operator_index");
    functions::gdextension_interface_dictionary_operator_index_const = (GDExtensionInterfaceDictionaryOperatorIndexConst)load_proc_address("dictionary_operator_index_const");
    functions::gdextension_interface_object_method_bind_call = (GDExtensionInterfaceObjectMethodBindCall)load_proc_address("object_method_bind_call");
    functions::gdextension_interface_object_method_bind_ptrcall = (GDExtensionInterfaceObjectMethodBindPtrcall)load_proc_address("object_method_bind_ptrcall");
    functions::gdextension_interface_object_destroy = (GDExtensionInterfaceObjectDestroy)load_proc_address("object_destroy");
    functions::gdextension_interface_global_get_singleton = (GDExtensionInterfaceGlobalGetSingleton)load_proc_address("global_get_singleton");
    functions::gdextension_interface_object_get_instance_binding = (GDExtensionInterfaceObjectGetInstanceBinding)load_proc_address("object_get_instance_binding");
    functions::gdextension_interface_object_set_instance_binding = (GDExtensionInterfaceObjectSetInstanceBinding)load_proc_address("object_set_instance_binding");
    functions::gdextension_interface_object_set_instance = (GDExtensionInterfaceObjectSetInstance)load_proc_address("object_set_instance");
    functions::gdextension_interface_object_get_class_name = (GDExtensionInterfaceObjectGetClassName)load_proc_address("object_get_class_name");
    functions::gdextension_interface_object_cast_to = (GDExtensionInterfaceObjectCastTo)load_proc_address("object_cast_to");
    functions::gdextension_interface_object_get_instance_from_id = (GDExtensionInterfaceObjectGetInstanceFromId)load_proc_address("object_get_instance_from_id");
    functions::gdextension_interface_object_get_instance_id = (GDExtensionInterfaceObjectGetInstanceId)load_proc_address("object_get_instance_id");
    functions::gdextension_interface_ref_get_object = (GDExtensionInterfaceRefGetObject)load_proc_address("ref_get_object");
    functions::gdextension_interface_ref_set_object = (GDExtensionInterfaceRefSetObject)load_proc_address("ref_set_object");
    functions::gdextension_interface_script_instance_create = (GDExtensionInterfaceScriptInstanceCreate)load_proc_address("script_instance_create");
    functions::gdextension_interface_classdb_construct_object = (GDExtensionInterfaceClassdbConstructObject)load_proc_address("classdb_construct_object");
    functions::gdextension_interface_classdb_get_method_bind = (GDExtensionInterfaceClassdbGetMethodBind)load_proc_address("classdb_get_method_bind");
    functions::gdextension_interface_classdb_get_class_tag = (GDExtensionInterfaceClassdbGetClassTag)load_proc_address("classdb_get_class_tag");
    functions::gdextension_interface_classdb_register_extension_class = (GDExtensionInterfaceClassdbRegisterExtensionClass)load_proc_address("classdb_register_extension_class");
    functions::gdextension_interface_classdb_register_extension_class_method = (GDExtensionInterfaceClassdbRegisterExtensionClassMethod)load_proc_address("classdb_register_extension_class_method");
    functions::gdextension_interface_classdb_register_extension_class_integer_constant = (GDExtensionInterfaceClassdbRegisterExtensionClassIntegerConstant)load_proc_address("classdb_register_extension_class_integer_constant");
    functions::gdextension_interface_classdb_register_extension_class_property = (GDExtensionInterfaceClassdbRegisterExtensionClassProperty)load_proc_address("classdb_register_extension_class_property");
    functions::gdextension_interface_classdb_register_extension_class_property_group = (GDExtensionInterfaceClassdbRegisterExtensionClassPropertyGroup)load_proc_address("classdb_register_extension_class_property_group");
    functions::gdextension_interface_classdb_register_extension_class_property_subgroup = (GDExtensionInterfaceClassdbRegisterExtensionClassPropertySubgroup)load_proc_address("classdb_register_extension_class_property_subgroup");
    functions::gdextension_interface_classdb_register_extension_class_signal = (GDExtensionInterfaceClassdbRegisterExtensionClassSignal)load_proc_address("classdb_register_extension_class_signal");
    functions::gdextension_interface_classdb_unregister_extension_class = (GDExtensionInterfaceClassdbUnregisterExtensionClass)load_proc_address("classdb_unregister_extension_class");
    functions::gdextension_interface_get_library_path = (GDExtensionInterfaceGetLibraryPath)load_proc_address("get_library_path");
    functions::gdextension_interface_editor_add_plugin = (GDExtensionInterfaceEditorAddPlugin)load_proc_address("editor_add_plugin");
    functions::gdextension_interface_editor_remove_plugin = (GDExtensionInterfaceEditorRemovePlugin)load_proc_address("editor_remove_plugin");
}

void initialize_py4godot(void *userdata, GDExtensionInitializationLevel p_level){
    if (p_level != GDEXTENSION_INITIALIZATION_SCENE){
        return;
    }
    init_functions();
    godot::init_py_language();
}

void deinitialize_py4godot(void *userdata, GDExtensionInitializationLevel p_level){
    if (p_level != GDEXTENSION_INITIALIZATION_SCENE){
        return;
    }
    godot::deinit_py_language();

}
extern "C"{
    GDExtensionBool GDN_EXPORT py4godot_init(GDExtensionInterfaceGetProcAddress p_get_proc_address, GDExtensionClassLibraryPtr p_library, GDExtensionInitialization *r_initialization){
        _library = p_library;
        global_p_get_proc_address = p_get_proc_address;

        #ifdef _WIN32
            #ifdef _M_IX86
                InitializeCriticalSection(&mtx);
            #endif
        #endif


        r_initialization->initialize = initialize_py4godot;
        r_initialization->deinitialize = deinitialize_py4godot;

        return 1;
    }
}