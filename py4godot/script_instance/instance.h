#pragma once
#include "gdextension_interface.h"

#include "PyScriptInstance_api.h"
#include "py4godot/instance_data/CPPInstanceData.h"
#include <windows.h>
#include <cassert>
GDExtensionScriptInstanceInfo native_script_instance_placeholder;
GDExtensionScriptInstanceInfo native_script_instance;
GDExtensionInterface *native_script;

HANDLE ghMutex;

GDExtensionScriptInstanceInfo get_instance(){
    return native_script_instance;
}

void c_instance_get(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret){
    instance_get(p_instance, p_name, r_ret);
}


void c_instance_call(GDExtensionScriptInstanceDataPtr p_self, GDExtensionConstStringNamePtr p_method, const GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error){
    ghMutex = CreateMutex(
    NULL,              // default security attributes
    FALSE,             // initially not owned
    NULL);
    //instance_call(p_self, p_method, p_args, p_argument_count, r_return, r_error);
    CloseHandle(ghMutex);
}


GDExtensionBool c_instance_set(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value){
    return instance_set(p_instance, p_name, p_value);
}

const GDExtensionPropertyInfo * c_instance_get_property_list(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count){
    auto p_instance_data = (InstanceData*) p_instance;
    auto properties = p_instance_data->properties;
    *r_count = properties.size();
    if (properties.size() == 0) {
        return nullptr;
    }
    return &properties[0];
}

GDExtensionObjectPtr c_instance_get_script(GDExtensionScriptInstanceDataPtr p_instance){
    auto p_instance_data = (InstanceData*) p_instance;
    return ((PyScriptExtension*)(p_instance_data->script))->godot_owner;
}


void init_instance(GDExtensionInterface *p_interface, GDExtensionScriptInstanceInfo* native_script_instance, int is_placeholder){
    native_script = p_interface;
    import_py4godot__script_instance__PyScriptInstance();
    if (PyErr_Occurred())
    {
        PyObject *ptype, *pvalue, *ptraceback;
        PyErr_Fetch(&ptype, &pvalue, &ptraceback);

        PyObject* str_exc_type = PyObject_Repr(pvalue); //Now a unicode
        PyObject* pyStr = PyUnicode_AsEncodedString(str_exc_type, "utf-8","Error ~");
        const char *strExcType = PyBytes_AS_STRING(pyStr);
        PyErr_Print();
        _interface->print_error(strExcType, "test", "test", 1, 1);
        assert(false);
        return;
    }

    //native_script_instance->get_owner_func = get_owner;
    native_script_instance->get_property_list_func = c_instance_get_property_list;
    native_script_instance->get_script_func = c_instance_get_script;
    native_script_instance->set_func = c_instance_set;
    /*native_script_instance->is_placeholder_func = is_placeholder;
    native_script_instance->set_func = c_instance_set;
    native_script_instance->get_func = c_instance_get;
    native_script_instance->get_property_list_func = instance_get_property_list;
    native_script_instance->free_property_list_func = instance_free_property_list;
    native_script_instance->property_can_revert_func = instance_property_can_revert;
    native_script_instance->property_get_revert_func = instance_property_get_revert;
    native_script_instance->get_property_state_func = instance_get_property_state;
    native_script_instance->get_method_list_func = instance_get_method_list;
    native_script_instance->free_method_list_func = instance_free_method_list;
    native_script_instance->get_property_type_func = instance_get_property_type;
    if(!is_placeholder){
        native_script_instance->has_method_func = instance_has_method;
    }
    native_script_instance->call_func = c_instance_call;
    native_script_instance->notification_func = instance_notification;
    //native_script_instance->to_string_func = instance_to_string;
    native_script_instance-> refcount_incremented_func = instance_ref_count_incremented;
    native_script_instance->refcount_decremented_func = instance_ref_count_decremented;
    native_script_instance->get_script_func = instance_get_script;
    native_script_instance->get_language_func = instance_get_language;
    native_script_instance->free_func = instance_free;
    p_interface->print_error("init_instance3", "test", "test",1,1);
    */
}

void get_instance_ptr(GDExtensionInterface *p_interface,GDExtensionScriptInstanceInfo* info ){
    //GDExtensionScriptInstanceInfo * info = malloc(sizeof(GDExtensionScriptInstanceInfo));
    init_instance(p_interface, info, 0);
    //return info;
}


void get_placeholder_instance_ptr(GDExtensionInterface *p_interface, GDExtensionScriptInstanceInfo* info){
    //GDExtensionScriptInstanceInfo * info = malloc(sizeof(GDExtensionScriptInstanceInfo));
    init_instance(p_interface, info, 1);
    //return info;
}