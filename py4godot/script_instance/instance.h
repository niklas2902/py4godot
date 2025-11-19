#pragma once
#include "gdextension_interface.h"

#include "py4godot/instance_data/CPPInstanceData.h"
#include "py4godot/instance_data/CPPMethodCallData.h"
#include "py4godot/script_extension/PyScriptExtension.h"
#include "PyScriptInstance_api.h"
#include "py4godot/cpputils/utils.h"
#include "py4godot/cppcore/Variant.h"
#include <string>
#include <cassert>
GDExtensionScriptInstanceInfo native_script_instance_placeholder;
GDExtensionScriptInstanceInfo native_script_instance;


GDExtensionBool c_instance_get(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret){
    print_error("_c_instance_get");
    auto gil_state = PyGILState_Ensure();
    InstanceData* instance = (InstanceData*)p_instance;
    StringName method_name = StringName::new_static(((void**)p_name)[0]);
    String method_name_str = String::new2(method_name);
    char* c_method_name;
    gd_string_to_c_string(&method_name_str.godot_owner, &c_method_name);
    if(instance->custom_properties.find(std::string{c_method_name}) == instance->custom_properties.end()){
        // TODO: look over this again. Currently setting editor description is broken.
        PyGILState_Release(gil_state);
        delete c_method_name;
        return 0;
    }

    if(std::string{c_method_name} == std::string{"script"}){
        PyGILState_Release(gil_state);
        delete c_method_name;
        return 0;
    }
    auto ret = instance_get(p_instance, p_name, r_ret);
    PyGILState_Release(gil_state);
    delete c_method_name;
    return ret;
}


std::string convertUnicodeToChar(PyObject* py_unicode) {
    if (py_unicode == nullptr || !PyUnicode_Check(py_unicode)) {
        assert(false);
        return nullptr;
    }
    // Encode the Python Unicode String to UTF-8
    PyObject* py_bytes = PyUnicode_AsEncodedString(py_unicode, "utf-8", "strict");
    if (py_bytes == nullptr) {
        assert(false);
        return nullptr;
    }
    // Extract the char* from the Python bytes object
    char* c_string = PyBytes_AsString(py_bytes);
    if (c_string == nullptr) {
        assert(false);
        return nullptr;
    }

    // Create a std::string from the char*
    std::string result(c_string);

    // Decrement the reference count of py_bytes
    Py_DECREF(py_bytes);

    return result;
}



void c_instance_call(GDExtensionScriptInstanceDataPtr p_self, GDExtensionConstStringNamePtr p_method,
 const GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count,
 GDExtensionVariantPtr r_return, GDExtensionCallError *r_error){
    print_error("_c_instance_call");
    auto name = StringName::new_static(((void**)p_method)[0]);
    auto _ready = c_string_to_string_name("_ready");
    auto _enter_tree = c_string_to_string_name("_enter_tree");
    auto set_visible = c_string_to_string_name("visible");
    auto _has_point = c_string_to_string_name("_has_point");
    r_error->error = GDExtensionCallErrorType::GDEXTENSION_CALL_ERROR_INVALID_METHOD;
    if(((InstanceData*)p_self)->is_placeholder && (name == _ready || name == _enter_tree)){
        return;
    }
    auto gil_state = PyGILState_Ensure();
    auto* p_instance = (InstanceData*)p_self;

    if (is_overridden(p_self, p_method)){
        MethodCallData data = instance_call(p_self, p_method, p_args, p_argument_count, r_return, r_error);
        if(data.has_value){
            Variant res_var =  Variant();
            res_var.native_ptr = r_return;
            auto my_str = convertUnicodeToChar(data.ret_typename);
            res_var.init_from_py_object(data.ret_val, my_str.c_str());
            // TODO: Py_DECREF for result_obj
            Py_DECREF(data.ret_val);
            Py_DECREF(data.ret_typename);
        }
        r_error->error = GDExtensionCallErrorType::GDEXTENSION_CALL_OK; // signaling that calling the method worked
    }
    PyGILState_Release(gil_state);
}


GDExtensionBool c_instance_set(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value){
    print_error("_c_instance_set");
    //std::lock_guard<std::mutex>
    InstanceData* instance = (InstanceData*)p_instance;
    StringName method_name = StringName::new_static(((void**)p_name)[0]);
    String method_name_str = String::new2(method_name);
    auto length = functions::get_string_to_utf8_chars()(&method_name_str.godot_owner, nullptr, 0);
    char* c_method_name = (char*)malloc(sizeof(char) * method_name_str.length());
    gd_string_to_c_string(&method_name_str.godot_owner, &c_method_name);
    if(instance->custom_properties.find(std::string{c_method_name}) == instance->custom_properties.end()){
        // TODO: look over this again. Currently setting editor description is broken.
        return 0;
    }
    auto gil_state = PyGILState_Ensure();
    auto ret = instance_set(p_instance, p_name, p_value);
    PyGILState_Release(gil_state);
    delete c_method_name;

    return 1;
}

GDExtensionPropertyInfo create_property_info(std::shared_ptr<CPPPropertyDescription> description_ptr){
    GDExtensionPropertyInfo property_info;
    property_info.type = description_ptr->type_;
    property_info.name = &description_ptr->name.godot_owner;
    property_info.class_name = &description_ptr->class_name.godot_owner;
    property_info.hint = description_ptr->hint;
    property_info.hint_string = &description_ptr->hint_string.godot_owner;
    property_info.usage = description_ptr->usage;
    return property_info;
}

std::vector<GDExtensionPropertyInfo> build_property_info(std::vector<std::shared_ptr<CPPPropertyDescription>> descriptions){
    std::vector<GDExtensionPropertyInfo> res;
    for(auto& description_ptr:descriptions){
        res.push_back(create_property_info(description_ptr));
    }
    return res;

}

const GDExtensionPropertyInfo * c_instance_get_property_list(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count){
    print_error("_c_instance_get_property_list");
    auto p_instance_data = (InstanceData*) p_instance;
    p_instance_data->gd_properties = build_property_info(p_instance_data->properties);
    *r_count = p_instance_data->properties.size();
    if (p_instance_data->gd_properties.size() == 0) {
        return nullptr;
    }
    auto& head = p_instance_data->gd_properties[0];
    return &head;
}


GDExtensionMethodInfo create_method_info(std::shared_ptr<CPPMethodDescription> description_ptr){
    GDExtensionMethodInfo method_info;
    method_info.name = &description_ptr->name.godot_owner;
    method_info.flags = description_ptr->flags;
    method_info.id = description_ptr->id;
    method_info.argument_count = description_ptr->args.size();
    method_info.default_argument_count = 0;

   GDExtensionPropertyInfo return_info = create_property_info(description_ptr->return_value);
    method_info.return_value = return_info;

    std::vector<GDExtensionPropertyInfo> my_args;
    for(size_t index = 0; index < description_ptr->args.size(); index++){
        std::shared_ptr<CPPPropertyDescription> arg = description_ptr->args[index];
        my_args.push_back(create_property_info(arg));
    }
    description_ptr->cpp_args = my_args;
    if(my_args.size() > 0){
        auto& head = description_ptr->cpp_args[0];
        method_info.arguments = &head;
    }
    else{
        method_info.arguments = nullptr;
    }
    return method_info;
}

const GDExtensionMethodInfo * c_instance_get_method_list(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count){
    auto p_instance_data = (InstanceData*) p_instance;
    auto& methods = p_instance_data->methods;
    *r_count = methods.size();
    if(methods.size() == 0){
        return nullptr;
    }
    p_instance_data->gd_methods.clear();

    for(auto& p_method: methods){
        p_instance_data->gd_methods.push_back(create_method_info(p_method));
    }
    auto& head = p_instance_data->gd_methods[0];
    return &head;

}

GDExtensionObjectPtr c_instance_get_script(GDExtensionScriptInstanceDataPtr p_instance){
    print_error("_c_instance_get_script");
    auto p_instance_data = (InstanceData*) p_instance;
    PyScriptExtension* extension = (PyScriptExtension*)(p_instance_data->script);
    return extension->godot_owner;
}

GDExtensionBool c_instance_has_method(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name){
    print_error("_c_instance_has_method");
    auto gil_state = PyGILState_Ensure();
    auto ret = instance_has_method(p_instance, p_name);
    PyGILState_Release(gil_state);

    return ret;
}

void c_free_func(GDExtensionScriptInstanceDataPtr p_instance){
}


void handle_python_error_instance(PyObject* ptype, PyObject* pvalue, PyObject* ptraceback)
{
    // Retrieve the error type and value (already handled in your code)
    PyObject* str_exc_type = PyObject_Repr(pvalue); // Exception as a unicode object
    PyObject* pyStr = PyUnicode_AsEncodedString(str_exc_type, "utf-8", "Error ~");
    char* strExcType = PyBytes_AS_STRING(pyStr);

    // Print the exception type
    print_error_user(strExcType);

    // Use the Python traceback module to format the traceback object
    PyObject* traceback_module = PyImport_ImportModule("traceback");
    if (traceback_module != NULL) {
        PyObject* traceback_list = PyObject_CallMethod(
            traceback_module,
            "format_exception",
            "OOO",
            ptype, pvalue, ptraceback
        );

        // Join the traceback list into a single string
        if (traceback_list != NULL) {
            PyObject* str_traceback = PyUnicode_Join(
                PyUnicode_FromString(""),
                traceback_list
            );

            if (str_traceback != NULL) {
                // Convert traceback to a C string and print it
                PyObject* pyStr_tb = PyUnicode_AsEncodedString(str_traceback, "utf-8", "Error ~");
                char* traceback_str = PyBytes_AS_STRING(pyStr_tb);
                print_error_user(traceback_str); // Print the formatted traceback

                Py_XDECREF(pyStr_tb);
                Py_XDECREF(str_traceback);
            }
            Py_XDECREF(traceback_list);
        }
        Py_XDECREF(traceback_module);
    }

    // Clean up the exception objects
    Py_XDECREF(pyStr);
    Py_XDECREF(str_exc_type);

    assert(false);
    return;
}

void init_instance(GDExtensionScriptInstanceInfo* native_script_instance, bool is_placeholder){
    print_error("init_instance");
    auto gil_state = PyGILState_Ensure();
    import_py4godot__script_instance__PyScriptInstance();
    if (PyErr_Occurred())
    {
        PyObject* ptype, * pvalue, * ptraceback;
        PyErr_Fetch(&ptype, &pvalue, &ptraceback);
        handle_python_error_instance(ptype, pvalue, ptraceback);

        assert(false);
        PyGILState_Release(gil_state);
        return;
    }

    //native_script_instance->get_owner_func = get_owner;
    native_script_instance->get_property_list_func = c_instance_get_property_list;
    native_script_instance->get_script_func = c_instance_get_script;
    native_script_instance->set_func = c_instance_set;
    native_script_instance->get_func = c_instance_get;
    native_script_instance->call_func = c_instance_call;
    native_script_instance->free_func = c_free_func;
    native_script_instance->get_method_list_func = c_instance_get_method_list;
    if(!is_placeholder){
        native_script_instance->has_method_func = c_instance_has_method;
    }
    PyGILState_Release(gil_state);
    /*native_script_instance->is_placeholder_func = is_placeholder;
    native_script_instance->set_func = c_instance_set;g
    native_script_instance->get_property_list_func = instance_get_property_list;
    native_script_instance->free_property_list_func = instance_free_property_list;
    native_script_instance->property_can_revert_func = instance_property_can_revert;
    native_script_instance->property_get_revert_func = instance_property_get_revert;
    native_script_instance->get_property_state_func = instance_get_property_state;
    native_script_instance->free_method_list_func = instance_free_method_list;
    native_script_instance->get_property_type_func = instance_get_property_type;
    native_script_instance->call_func = c_instance_call;
    native_script_instance->notification_func = instance_notification;
    //native_script_instance->to_string_func = instance_to_string;
    native_script_instance-> refcount_incremented_func = instance_ref_count_incremented;
    native_script_instance->refcount_decremented_func = instance_ref_count_decremented;
    native_script_instance->get_script_func = instance_get_script;
    native_script_instance->get_language_func = instance_get_language;
    p_interface->print_error("init_instance3", "test", "test",1,1);
    */
}
