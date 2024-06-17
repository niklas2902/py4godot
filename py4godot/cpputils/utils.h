#pragma once
#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/godot_bindings/main.h"
#include "Python.h"
#include "functions.h"
#include <memory>
#include <stdlib.h>

using namespace godot;
static bool is_none(PyObject* pyobject){
    return pyobject == Py_None;
}

static void print_error(char* error_message){
    //functions::get_print_error()(error_message, "test", "test", 1, 1);
}

static const char* gd_string_to_c_string( GDExtensionConstStringPtr string_ptr, int length) {
    char* native_string = (char*)malloc(sizeof(char) * (length));
    functions::get_string_to_utf8_chars()(string_ptr, native_string, length);
    return native_string;
}

#include <memory>

template<typename From, typename To>
static std::shared_ptr<To> my_static_pointer_cast(const std::shared_ptr<From>& from) {
    return std::static_pointer_cast<To>(from);
}
template<typename T>
static bool is_ptr_null(const std::shared_ptr<T>& ptr) {
    return !ptr || ptr.get() == nullptr;
}

static void gd_string_to_c_string(String& string, int length,  char** res_string) {
    *res_string = (char*)malloc(sizeof(char) * (length+1));
    functions::get_string_to_utf8_chars()(&string.godot_owner, *res_string, length);
    (*res_string)[length] = '\0';
}

static void gd_string_to_c_string(GDExtensionConstStringPtr string_ptr, int length, char** res_string) {
    *res_string = (char*)malloc(sizeof(char) * (length+1));
    functions::get_string_to_utf8_chars()(string_ptr, *res_string, length);
    (*res_string)[length] = '\0';
}

static void gd_string_to_c_string_instance(String& string, int length, char** res_string) {

    *res_string = new char[length + 1];
    functions::get_string_to_utf8_chars()(&string.godot_owner, *res_string, length);
    auto unicode_string = PyUnicode_FromString(*res_string);
    (*res_string)[length] = '\0';
    delete [] *res_string;
}

static PyObject* gd_string_to_unicode(String& string, int length) {

    char * res_string = new char[length + 1];
    functions::get_string_to_utf8_chars()(&string.godot_owner, res_string, length);
    res_string[length] = '\0';
    auto unicode_string = PyUnicode_FromString(res_string);
    delete[]  res_string;
    return unicode_string;
}

static PyObject* gd_string_name_to_unicode(StringName& stringname, int length) {

    char * res_string = new char[length + 1];
    String string = String::new2(stringname);
    functions::get_string_to_utf8_chars()(&string.godot_owner, res_string, length);
    res_string[length] = '\0';
    auto unicode_string = PyUnicode_FromString(res_string);
    delete[]  res_string;
    return unicode_string;
}

static StringName c_string_to_string_name(const char* string){
    String gd_string = String::new0();
    functions::get_string_new_with_utf8_chars()(&gd_string.godot_owner, string);
    StringName gd_string_name = StringName::new2(gd_string);
    return gd_string_name;
}

static std::shared_ptr<StringName> c_string_to_string_name_ptr(const char* string){
    std::shared_ptr<String> gd_string = String::py_new0();
    functions::get_string_new_with_utf8_chars()(&gd_string->godot_owner, string);
    std::shared_ptr<StringName> gd_string_name = StringName::py_new2(gd_string);
    return gd_string_name;
}
static String c_string_to_string(const char* string){
    String gd_string = String::new0();
    functions::get_string_new_with_utf8_chars()(&gd_string.godot_owner, string);
    return gd_string;
}

static std::shared_ptr<String> c_string_to_string_ptr(const char* string){
    std::shared_ptr<String> gd_string = String::py_new0();
    functions::get_string_new_with_utf8_chars()(&gd_string->godot_owner, string);
    gd_string->length();
    return gd_string;
}

static void add_string_to_array(GDExtensionTypePtr array, String& string){
     GDExtensionTypePtr _args[1];
    _args[0] = &string.godot_owner;
    bool _ret;
    StringName _class_name = c_string_to_string_name("PackedStringArray");
    StringName _method_name = c_string_to_string_name("push_back");
    GDExtensionPtrBuiltInMethod method_to_call = functions::get_variant_get_ptr_builtin_method()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, &_method_name.godot_owner, 816187996);
    method_to_call(array, &_args[0], &_ret, 1);
}

static void add_variant_to_array(GDExtensionTypePtr var_array, Variant& val){
     GDExtensionTypePtr _args[1];
    _args[0] = &val.native_ptr;
    GDExtensionTypePtr _ret;
    StringName _class_name = c_string_to_string_name("Array");
    StringName _method_name = c_string_to_string_name("push_back");
    GDExtensionPtrBuiltInMethod method_to_call = functions::get_variant_get_ptr_builtin_method()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_ARRAY, &_method_name.godot_owner, 3316032543);
    method_to_call(var_array, &_args[0], &_ret, 1);
}

static void destroy_object(void* godot_owner){
    functions::get_object_destroy()(godot_owner);
}

static void destroy_variant(Variant& val){
    functions::get_variant_destroy()(val.native_ptr);
}
static void destroy_variant_native_ptr(Variant& val){
    functions::get_variant_destroy()(&val.native_ptr);
}

static void delete_char_array(char* array){
    delete[] array;
}

static void decrefPyObject(PyObject* object){
    Py_XDECREF(object);
}
