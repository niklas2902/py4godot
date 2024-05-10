#include "py4godot/script_extension/PyScriptExtension.h"
#include "py4godot/script_language/PyLanguage.h"
#include "py4godot/godot_bindings/main.h"
#include "py4godot/cpputils/utils.h"
#include "py4godot/cppclasses/Script/Script.h"
#include "py4godot/cppclasses/Engine/Engine.h"
#include "py4godot/cppcore/Variant.h"
#include "py4godot/pluginscript_api/api.h"
#include "py4godot/script_instance/instance.h"
#include "py4godot/pluginscript_api/utils/annotations_api.h"
#include "py4godot/pluginscript_api/utils/forward_print_api.h"
#include "py4godot/utils/instance_utils_api.h"
#include "py4godot/cpputils/ScriptHolder.h"
#include "py4godot/script_extension/script_extension_helpers_api.h"
#include <cassert>
#include "Python.h"
#include <mutex>
#include <algorithm>

std::mutex m;

GDExtensionPtrOperatorEvaluator operator_equal_string_namescript;
PyScriptExtension extension;

bool pluginscript_initialized = false;
void init_pluginscript_api(){
    print_error("_init_pluginscript_api");

    if (pluginscript_initialized){
        return;
    }
    pluginscript_initialized = true;

    Py_SetProgramName(L"godot");
    Py_SetPythonHome(PYTHONHOME);
    // Initialize interpreter but skip initialization registration of signal handlers
    Py_InitializeEx(0);

    import_py4godot__pluginscript_api__utils__annotations();
    if (PyErr_Occurred())
    {
        PyObject *ptype, *pvalue, *ptraceback;
        PyErr_Fetch(&ptype, &pvalue, &ptraceback);

        PyObject* str_exc_type = PyObject_Repr(pvalue); //Now a unicode
        PyObject* pyStr = PyUnicode_AsEncodedString(str_exc_type, "utf-8","Error ~");
        char *strExcType = PyBytes_AS_STRING(pyStr);
        
        PyErr_Print();
        print_error(strExcType);
        assert(false);
        return;
    }

    import_py4godot__pluginscript_api__utils__forward_print();
    if (PyErr_Occurred())
    {
        PyObject *ptype, *pvalue, *ptraceback;
        PyErr_Fetch(&ptype, &pvalue, &ptraceback);

        PyObject* str_exc_type = PyObject_Repr(pvalue); //Now a unicode
        PyObject* pyStr = PyUnicode_AsEncodedString(str_exc_type, "utf-8","Error ~");
        char *strExcType = PyBytes_AS_STRING(pyStr);
        PyErr_Print();
        print_error(strExcType);
        assert(false);
        return;
    }

    import_py4godot__utils__instance_utils();
    if (PyErr_Occurred())
    {
        PyObject *ptype, *pvalue, *ptraceback;
        PyErr_Fetch(&ptype, &pvalue, &ptraceback);

        PyObject* str_exc_type = PyObject_Repr(pvalue); //Now a unicode
        PyObject* pyStr = PyUnicode_AsEncodedString(str_exc_type, "utf-8","Error ~");
        char *strExcType = PyBytes_AS_STRING(pyStr);
        PyErr_Print();
        assert(false);
        return;
    }

    import_py4godot__script_extension__script_extension_helpers();
    if (PyErr_Occurred())
    {
        PyObject *ptype, *pvalue, *ptraceback;
        PyErr_Fetch(&ptype, &pvalue, &ptraceback);

        PyObject* str_exc_type = PyObject_Repr(pvalue); //Now a unicode
        PyObject* pyStr = PyUnicode_AsEncodedString(str_exc_type, "utf-8","Error ~");
        char *strExcType = PyBytes_AS_STRING(pyStr);
        PyErr_Print();
        assert(false);
        return;
    }

    Variant::init_variant();
    forward_print();

    PyEval_InitThreads();
    if (PyErr_Occurred())
    {
        PyErr_Print();
        assert(false);
        return ;
    }

    // Release the Kraken... er I mean the GIL !
    gilstate = PyEval_SaveThread();

}


bool string_names_equal_script(StringName& left, StringName& right){
    print_error("stirng_names_equal_script");
    uint8_t ret;
    operator_equal_string_namescript(&left.godot_owner, &right.godot_owner, &ret);
    return ret != 0;
}

  PyScriptExtension* PyScriptExtension::constructor(PyLanguage* language){
    print_error("_constructor");
    PyScriptExtension* class_ = new PyScriptExtension();

    StringName class_name = c_string_to_string_name("PyScriptExtension");
    class_name.shouldBeDeleted = false;
    class_->godot_owner = functions::get_classdb_construct_object()(&class_name.godot_owner);
    functions::get_object_set_instance()(class_->godot_owner,&class_name.godot_owner , class_);

    class_->_init_values();
    class_->lang = language;
    return class_;
}

void* create_instance_script(void* userdata){
    print_error("create_instance_script");
    StringName class_name = c_string_to_string_name("ScriptExtension");
    class_name.shouldBeDeleted = false;
    auto gdnative_object = functions::get_classdb_construct_object()(&class_name.godot_owner);
    return gdnative_object;
}
void free_instance_script(void *p_userdata, GDExtensionClassInstancePtr p_instance){}

void PyScriptExtension::_init_values(){}

void PyScriptExtension::_editor_can_reload_from_file(GDExtensionTypePtr res){
       print_error("_editor_can_reload_from_files");
    *(static_cast<bool*>(res)) = true;
}
void PyScriptExtension::_can_instantiate(GDExtensionTypePtr res){
       print_error("_can_instantiate");
    std::shared_ptr<Engine> engine = Engine::get_instance();
    if (!engine->is_editor_hint()){
        *(bool*)res = true;
    }
    else{
        *(bool*)res = false;
    }
}

void  PyScriptExtension::_get_base_script(GDExtensionTypePtr res){
       print_error("_get_base_script");
}
void PyScriptExtension::_get_global_name(GDExtensionTypePtr res){
       print_error("_get_global_name");
}
void PyScriptExtension::_inherits_script( Script* script, GDExtensionTypePtr res){
       print_error("_inherits_script");
}
void PyScriptExtension::_get_instance_base_type(GDExtensionTypePtr res){
       print_error("_get_instance_base_type");
}

void PyScriptExtension::update_instance_data(InstanceData* gd_instance, PyObject* instance){
   print_error("_update_instance_data");
    if(instance != nullptr){
        gd_instance->owner = instance;
    }
    gd_instance->properties = transfer_object.properties;
    //gd_instance.set_methods(methods)
    init_instance(&(gd_instance->info), gd_instance->is_placeholder);

    int index = 0;
    for (auto& default_value: transfer_object.default_values){
        auto property_string_name =  StringName::new_static(((void**)transfer_object.properties[index].name)[0]);
        String property_name = String::new2(property_string_name);
        char* c_property_name;
        gd_string_to_c_string( &property_name.godot_owner, property_name.length(), &c_property_name);
        std::string string_property_name{c_property_name};
        if(std::find(gd_instance->already_set_properties.begin(),
            gd_instance->already_set_properties.end(), string_property_name) == gd_instance->already_set_properties.end()){
           
            set_default_val(gd_instance->owner, PyUnicode_FromStringAndSize(c_property_name, property_name.length()), default_value);
            gd_instance->already_set_properties.push_back(string_property_name);
        }
        index ++;
    }
}
void PyScriptExtension::_instance_create( Object& for_object, GDExtensionTypePtr res){
    print_error("_instance_create");
    functions::get_print_error()("instance_create", "test", "test", 1, 1);
    auto gil_state = PyGILState_Ensure();
    GDExtensionVariantFromTypeConstructorFunc constructor_func;
    GDExtensionScriptInstancePtr instance_ptr;
    GDExtensionScriptInstanceInfo* instance_info;
    auto instance = instantiate_class(transfer_object.class_);
    if(instance == Py_None || instance == nullptr){
        assert(false);

        return;
    }
    InstanceData* gd_instance = new InstanceData();
    update_instance_data(gd_instance, instance);
    instance_datas.push_back(gd_instance);
    set_owner(gd_instance->owner, ((void**)for_object.godot_owner)[0]);
    //instance.godot_owner = for_object.godot_owner;
    gd_instance->script = this;
    Py_INCREF(gd_instance->owner);

    for_object.godot_owner = ((void**)for_object.godot_owner)[0];
    ScriptDatabase::instance()->register_script(for_object.get_instance_id(), gd_instance->owner);
    instance_ptr = functions::get_script_instance_create()(&(gd_instance->info), gd_instance);
    *((GDExtensionTypePtr*)res) = instance_ptr;
    PyGILState_Release(gil_state);

}
void PyScriptExtension::_placeholder_instance_create( Object& for_object, GDExtensionTypePtr res){
    print_error("_placeholder_instance_create");

    auto gil_state = PyGILState_Ensure();
    //for_object.get_class()
    GDExtensionVariantFromTypeConstructorFunc constructor_func;
    GDExtensionScriptInstancePtr instance_ptr;
    GDExtensionScriptInstanceInfo* instance_info;
    InstanceData* gd_instance = new InstanceData();
    auto instance = instantiate_class(transfer_object.class_);
    if(instance == Py_None || instance == nullptr){

        return;
    }
    gd_instance->is_placeholder = !transfer_object.is_tool;
    update_instance_data(gd_instance, instance);
    instance_datas.push_back(gd_instance);
    set_owner(gd_instance->owner, ((void**)for_object.godot_owner)[0]);
    //instance.godot_owner = for_object.godot_owner;
    gd_instance->script = this;
    Py_INCREF(gd_instance->owner);
    instance_ptr = functions::get_script_instance_create()(&(gd_instance->info), gd_instance);
    *((GDExtensionTypePtr*)res) = instance_ptr;

    for_object.godot_owner = ((void**)for_object.godot_owner)[0];
    auto instance_id = for_object.get_instance_id();
    ScriptDatabase::instance()->register_script(for_object.get_instance_id(), gd_instance->owner);
    PyGILState_Release(gil_state);

}
void PyScriptExtension::_instance_has( Object& object, GDExtensionTypePtr res){
    print_error("_instance_has");
}
void PyScriptExtension::_has_source_code(GDExtensionTypePtr res){
    print_error("_has_source_code");
}
void PyScriptExtension::_get_source_code(GDExtensionTypePtr& res){
    print_error("_get_source_code");
    functions::get_string_new_with_utf8_chars()(res, source_code.c_str());
}
void PyScriptExtension::_set_source_code( String& code, GDExtensionTypePtr res){
    print_error("_set_source_code");
     char* c_source_code;
    gd_string_to_c_string(&code.godot_owner, code.length(), &c_source_code);
    this->source_code = std::string(c_source_code);
}
void PyScriptExtension::_reload( bool keep_state, GDExtensionTypePtr res){
    print_error("_reload");
    auto source = c_string_to_string(source_code.c_str());
    _set_source_code_internal(source);

}
void PyScriptExtension::_get_documentation(GDExtensionTypePtr res){
    print_error("_get_documentation");
}
void PyScriptExtension::_has_method( StringName& method, GDExtensionTypePtr res){
    print_error("_has_method");
    *static_cast<bool*>(res) = false;
}
void PyScriptExtension::_get_method_info( StringName& method, GDExtensionTypePtr res){
    print_error("_get_method_info");
}
void PyScriptExtension::_is_tool(GDExtensionTypePtr res){
    print_error("_is_tool");
    *static_cast<bool*>(res) = false;
}
void PyScriptExtension::_is_valid(GDExtensionTypePtr res){
    print_error("_is_valid");
    *static_cast<bool*>(res) = true;
}
void PyScriptExtension::_get_language(GDExtensionTypePtr res){
    print_error("_PyScriptExtension_get_language");
    *((GDExtensionTypePtr*)res) = lang->godot_owner;
    print_error("_PyScriptExtension_after_get_language");
}
void PyScriptExtension::_has_script_signal( StringName& signal, GDExtensionTypePtr res){
    print_error("has_script_signal_list");
    *static_cast<bool*>(res) = false;
}
void PyScriptExtension::_get_script_signal_list(GDExtensionTypePtr res){
    print_error("_get_script_signal_list");
    //auto res_array = Array::new_static(&res);
    int index;
    for (auto& signal_dict : transfer_object.signals) {
        Variant var_signal = Variant{};

        //res_array.push_back(var_signal);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY);
        constructor(&(var_signal.native_ptr), &signal_dict.godot_owner);

        add_variant_to_array(res, var_signal);
    }

}
void PyScriptExtension::_has_property_default_value( StringName& property, GDExtensionTypePtr res){
    print_error("_has_property_default_value");
}
void PyScriptExtension::_get_property_default_value( StringName& property, GDExtensionTypePtr res){
    print_error("_get_property_default_value");
}
void PyScriptExtension::_update_exports(GDExtensionTypePtr res){
    print_error("_update_exports");
}
void PyScriptExtension::_get_script_method_list(GDExtensionTypePtr res){
    print_error("_get_script_method_list");
}
void PyScriptExtension::_get_script_property_list(GDExtensionTypePtr res){
    print_error("_get_script_property_list");
}
void PyScriptExtension::_get_member_line( StringName& member, GDExtensionTypePtr res){
    *static_cast<int*>(res) = 0;
}
void PyScriptExtension::_get_constants(GDExtensionTypePtr res){}
void PyScriptExtension::_get_members(GDExtensionTypePtr res){}
void PyScriptExtension::_is_placeholder_fallback_enabled(GDExtensionTypePtr res){
    *static_cast<bool*>(res) = false;
}
void PyScriptExtension::_get_rpc_config(GDExtensionTypePtr res){}
void PyScriptExtension::_set_source_code_internal(String& source_code){
    print_error("_set_source_code_internal");
    char* c_source_code;
    gd_string_to_c_string(&source_code.godot_owner, source_code.length(), &c_source_code);
    this->source_code = std::string(c_source_code);
    apply_code();
}

void PyScriptExtension::apply_code(){
    print_error("apply_code");

    auto gil_state = PyGILState_Ensure();
    auto source = PyUnicode_FromString(this->source_code.c_str());
    auto _path = PyUnicode_FromString(path.c_str());
    assert(source != nullptr);
    assert(_path != nullptr);
    transfer_object = exec_class(source, _path);
    for(auto p_instance:instance_datas){
        update_instance_data(p_instance, nullptr);
    }
    PyGILState_Release(gil_state);

}

void PyScriptExtension::set_path( const char* path){
    this->path = std::string{path};
}
namespace script{
void call_virtual_func__editor_can_reload_from_file(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_editor_can_reload_from_file(r_ret);
}

StringName func_name__editor_can_reload_from_file;

void call_virtual_func__can_instantiate(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_can_instantiate(r_ret);
}

StringName func_name__can_instantiate;


void call_virtual_func__get_base_script(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_base_script(r_ret);
}

StringName func_name__get_base_script;


void call_virtual_func__get_global_name(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_global_name(r_ret);
}

StringName func_name__get_global_name;


void call_virtual_func__inherits_script(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    Script args0 = *((Script*)(p_args + 0));



    pylanguage->_inherits_script(&args0,r_ret);
}

StringName func_name__inherits_script ;


void call_virtual_func__get_instance_base_type(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_instance_base_type(r_ret);
}

StringName func_name__get_instance_base_type ;


void call_virtual_func__instance_create(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {

    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    Object args0 = Object::new_static(const_cast<GDExtensionStringPtr>(p_args[0]));

    pylanguage->_instance_create(args0,r_ret);
}

StringName func_name__instance_create ;


void call_virtual_func__placeholder_instance_create(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {

    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    Object args0 = Object::new_static(const_cast<GDExtensionStringPtr>(p_args[0]));

    pylanguage->_placeholder_instance_create(args0,r_ret);
}

StringName func_name__placeholder_instance_create ;


void call_virtual_func__instance_has(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    Object args0 = Object::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_instance_has(args0,r_ret);
}

StringName func_name__instance_has ;


void call_virtual_func__has_source_code(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_has_source_code(r_ret);
}

StringName func_name__has_source_code ;


void call_virtual_func__get_source_code(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_source_code(r_ret);
}

StringName func_name__get_source_code ;


void call_virtual_func__set_source_code(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));



    pylanguage->_set_source_code(args0,r_ret);
}

StringName func_name__set_source_code ;


void call_virtual_func__reload(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    bool args0 = *((bool*)(p_args + 0));



    pylanguage->_reload(args0,r_ret);
}

StringName func_name__reload ;


void call_virtual_func__get_documentation(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_documentation(r_ret);
}

StringName func_name__get_documentation ;


void call_virtual_func__has_method(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_has_method(args0,r_ret);
}

StringName func_name__has_method ;


void call_virtual_func__get_method_info(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_get_method_info(args0,r_ret);
}

StringName func_name__get_method_info ;


void call_virtual_func__is_tool(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_is_tool(r_ret);
}

StringName func_name__is_tool ;


void call_virtual_func__is_valid(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_is_valid(r_ret);
}

StringName func_name__is_valid ;


void call_virtual_func__get_language(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_language(r_ret);
}

StringName func_name__get_language ;


void call_virtual_func__has_script_signal(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_has_script_signal(args0,r_ret);
}

StringName func_name__has_script_signal ;


void call_virtual_func__get_script_signal_list(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_script_signal_list(r_ret);
}

StringName func_name__get_script_signal_list ;


void call_virtual_func__has_property_default_value(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_has_property_default_value(args0,r_ret);
}

StringName func_name__has_property_default_value ;


void call_virtual_func__get_property_default_value(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_get_property_default_value(args0,r_ret);
}

StringName func_name__get_property_default_value ;


void call_virtual_func__update_exports(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_update_exports(r_ret);
}

StringName func_name__update_exports ;


void call_virtual_func__get_script_method_list(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_script_method_list(r_ret);
}

StringName func_name__get_script_method_list ;


void call_virtual_func__get_script_property_list(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_script_property_list(r_ret);
}

StringName func_name__get_script_property_list ;


void call_virtual_func__get_member_line(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_get_member_line(args0,r_ret);
}

StringName func_name__get_member_line ;


void call_virtual_func__get_constants(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_constants(r_ret);
}

StringName func_name__get_constants ;


void call_virtual_func__get_members(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_members(r_ret);
}

StringName func_name__get_members ;


void call_virtual_func__is_placeholder_fallback_enabled(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_is_placeholder_fallback_enabled(r_ret);
}

StringName func_name__is_placeholder_fallback_enabled ;


void call_virtual_func__get_rpc_config(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_rpc_config(r_ret);
}
}


GDExtensionClassCallVirtual get_virtual_script(void *p_userdata, GDExtensionConstStringNamePtr p_name) {
    std::lock_guard<std::mutex> lock(mtx);

    StringName name = StringName::new_static(((void**)const_cast<GDExtensionTypePtr>(p_name))[0]);
    String name_string = String::new2(name);
    char* res_string;
    gd_string_to_c_string(name_string, name_string.length(), &res_string);

    print_error("called function_script:");
    print_error(res_string);

    if (string_names_equal_script(script::func_name__editor_can_reload_from_file, name)){
        return script::call_virtual_func__editor_can_reload_from_file;
    }

    else if (string_names_equal_script(script::func_name__can_instantiate, name)){
        return script::call_virtual_func__can_instantiate;
    }

    else if (string_names_equal_script(script::func_name__get_base_script, name)){
        return script::call_virtual_func__get_base_script;
    }

    else if (string_names_equal_script(script::func_name__get_global_name, name)){
        return script::call_virtual_func__get_global_name;
    }

    else if (string_names_equal_script(script::func_name__inherits_script, name)){
        return script::call_virtual_func__inherits_script;
    }

    else if (string_names_equal_script(script::func_name__get_instance_base_type, name)){
        return script::call_virtual_func__get_instance_base_type;
    }

    else if (string_names_equal_script(script::func_name__instance_create, name)){
        return script::call_virtual_func__instance_create;
    }

    else if (string_names_equal_script(script::func_name__placeholder_instance_create, name)){
        return script::call_virtual_func__placeholder_instance_create;
    }

    else if (string_names_equal_script(script::func_name__instance_has, name)){
        return script::call_virtual_func__instance_has;
    }

    else if (string_names_equal_script(script::func_name__has_source_code, name)){
        return script::call_virtual_func__has_source_code;
    }

    else if (string_names_equal_script(script::func_name__get_source_code, name)){
        return script::call_virtual_func__get_source_code;
    }

    else if (string_names_equal_script(script::func_name__set_source_code, name)){
        return script::call_virtual_func__set_source_code;
    }

    else if (string_names_equal_script(script::func_name__reload, name)){
        return script::call_virtual_func__reload;
    }

    else if (string_names_equal_script(script::func_name__get_documentation, name)){
        return script::call_virtual_func__get_documentation;
    }

    else if (string_names_equal_script(script::func_name__has_method, name)){
        return script::call_virtual_func__has_method;
    }

    else if (string_names_equal_script(script::func_name__get_method_info, name)){
        return script::call_virtual_func__get_method_info;
    }

    else if (string_names_equal_script(script::func_name__is_tool, name)){
        return script::call_virtual_func__is_tool;
    }

    else if (string_names_equal_script(script::func_name__is_valid, name)){
        return script::call_virtual_func__is_valid;
    }

    else if (string_names_equal_script(script::func_name__get_language, name)){
        return script::call_virtual_func__get_language;
    }

    else if (string_names_equal_script(script::func_name__has_script_signal, name)){
        return script::call_virtual_func__has_script_signal;
    }

    else if (string_names_equal_script(script::func_name__get_script_signal_list, name)){
        return script::call_virtual_func__get_script_signal_list;
    }

    else if (string_names_equal_script(script::func_name__has_property_default_value, name)){
        return script::call_virtual_func__has_property_default_value;
    }

    else if (string_names_equal_script(script::func_name__get_property_default_value, name)){
        return script::call_virtual_func__get_property_default_value;
    }

    else if (string_names_equal_script(script::func_name__update_exports, name)){
        return script::call_virtual_func__update_exports;
    }

    else if (string_names_equal_script(script::func_name__get_script_method_list, name)){
        return script::call_virtual_func__get_script_method_list;
    }

    else if (string_names_equal_script(script::func_name__get_script_property_list, name)){
        return script::call_virtual_func__get_script_property_list;
    }

    else if (string_names_equal_script(script::func_name__get_member_line, name)){
        return script::call_virtual_func__get_member_line;
    }

    else if (string_names_equal_script(script::func_name__get_constants, name)){
        return script::call_virtual_func__get_constants;
    }

    else if (string_names_equal_script(script::func_name__get_members, name)){
        return script::call_virtual_func__get_members;
    }

    else if (string_names_equal_script(script::func_name__is_placeholder_fallback_enabled, name)){
        return script::call_virtual_func__is_placeholder_fallback_enabled;
    }

    assert(false); // There are methods not being handled
    return nullptr;
}

void init_func_names_script(){
    script::func_name__editor_can_reload_from_file = c_string_to_string_name("_editor_can_reload_from_file");
    script::func_name__can_instantiate = c_string_to_string_name("_can_instantiate");
    script::func_name__get_base_script = c_string_to_string_name("_get_base_script");
    script::func_name__get_global_name = c_string_to_string_name("_get_global_name");
    script::func_name__inherits_script = c_string_to_string_name("_inherits_script");
    script::func_name__get_instance_base_type = c_string_to_string_name("_get_instance_base_type");
    script::func_name__instance_create = c_string_to_string_name("_instance_create");
    script::func_name__placeholder_instance_create = c_string_to_string_name("_placeholder_instance_create");
    script::func_name__instance_has = c_string_to_string_name("_instance_has");
    script::func_name__has_source_code = c_string_to_string_name("_has_source_code");
    script::func_name__get_source_code = c_string_to_string_name("_get_source_code");
    script::func_name__set_source_code = c_string_to_string_name("_set_source_code");
    script::func_name__reload = c_string_to_string_name("_reload");
    script::func_name__get_documentation = c_string_to_string_name("_get_documentation");
    script::func_name__has_method = c_string_to_string_name("_has_method");
    script::func_name__get_method_info = c_string_to_string_name("_get_method_info");
    script::func_name__is_tool = c_string_to_string_name("_is_tool");
    script::func_name__is_valid = c_string_to_string_name("_is_valid");
    script::func_name__get_language = c_string_to_string_name("_get_language");
    script::func_name__has_script_signal = c_string_to_string_name("_has_script_signal");
    script::func_name__get_script_signal_list = c_string_to_string_name("_get_script_signal_list");
    script::func_name__has_property_default_value = c_string_to_string_name("_has_property_default_value");
    script::func_name__get_property_default_value = c_string_to_string_name("_get_property_default_value");
    script::func_name__update_exports = c_string_to_string_name("_update_exports");
    script::func_name__get_script_method_list = c_string_to_string_name("_get_script_method_list");
    script::func_name__get_script_property_list = c_string_to_string_name("_get_script_property_list");
    script::func_name__get_member_line = c_string_to_string_name("_get_member_line");
    script::func_name__get_constants = c_string_to_string_name("_get_constants");
    script::func_name__get_members = c_string_to_string_name("_get_members");
    script::func_name__is_placeholder_fallback_enabled = c_string_to_string_name("_is_placeholder_fallback_enabled");
}

void register_class_script(){
    init_func_names_script();
    init_pluginscript_api();
    operator_equal_string_namescript = functions::get_variant_get_ptr_operator_evaluator()(
        GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_EQUAL,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);

    auto creation_info = new GDExtensionClassCreationInfo();
    creation_info->create_instance_func = create_instance_script;
    creation_info->free_instance_func = free_instance_script;
    creation_info->class_userdata = creation_info;
    creation_info->get_virtual_func = get_virtual_script;

    StringName class_name = c_string_to_string_name("PyScriptExtension");
    StringName parent_class_name = c_string_to_string_name("ScriptExtension");
    class_name.shouldBeDeleted = false;
    parent_class_name.shouldBeDeleted = false;


    functions::get_classdb_register_extension_class()(_library, &class_name.godot_owner, &parent_class_name.godot_owner, creation_info);
}