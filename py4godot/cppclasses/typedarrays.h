#ifndef TYPEDARRAYS_
#define TYPEDARRAYS_
#include "py4godot/cpputils/Wrapper.h"
#include "py4godot/cpputils/VariantTypeWrapper.h"
#include "py4godot/cppcore/Variant.h"
#include "py4godot/cppenums/cppenums.h"
#ifndef BOOLDEFINED
#define BOODEFINED
typedef unsigned char byte;
#endif

#include "py4godot/cppclasses/class_defs.h"
#include "py4godot/cppclasses/Object/Object.h"

namespace godot{

class LIBRARY_API  NodeTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~NodeTypedArray();

  static NodeTypedArray constructor();

  NodeTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  NodeTypedArray (const NodeTypedArray& copy_val);
  NodeTypedArray& operator= (const NodeTypedArray& copy_val);
  static NodeTypedArray new0();
  static NodeTypedArray py_new0();
  static NodeTypedArray new1(Array& from_);
  static NodeTypedArray py_new1(Array& from_);
  static NodeTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static NodeTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static NodeTypedArray new3(PackedByteArray& from_);
  static NodeTypedArray py_new3(PackedByteArray& from_);
  static NodeTypedArray new4(PackedInt32Array& from_);
  static NodeTypedArray py_new4(PackedInt32Array& from_);
  static NodeTypedArray new5(PackedInt64Array& from_);
  static NodeTypedArray py_new5(PackedInt64Array& from_);
  static NodeTypedArray new6(PackedFloat32Array& from_);
  static NodeTypedArray py_new6(PackedFloat32Array& from_);
  static NodeTypedArray new7(PackedFloat64Array& from_);
  static NodeTypedArray py_new7(PackedFloat64Array& from_);
  static NodeTypedArray new8(PackedStringArray& from_);
  static NodeTypedArray py_new8(PackedStringArray& from_);
  static NodeTypedArray new9(PackedVector2Array& from_);
  static NodeTypedArray py_new9(PackedVector2Array& from_);
  static NodeTypedArray new10(PackedVector3Array& from_);
  static NodeTypedArray py_new10(PackedVector3Array& from_);
  static NodeTypedArray new11(PackedColorArray& from_);
  static NodeTypedArray py_new11(PackedColorArray& from_);

  static NodeTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_NodeTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_NodeTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_NodeTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_NodeTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_NodeTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_NodeTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  Vector3iTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~Vector3iTypedArray();

  static Vector3iTypedArray constructor();

  Vector3iTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  Vector3iTypedArray (const Vector3iTypedArray& copy_val);
  Vector3iTypedArray& operator= (const Vector3iTypedArray& copy_val);
  static Vector3iTypedArray new0();
  static Vector3iTypedArray py_new0();
  static Vector3iTypedArray new1(Array& from_);
  static Vector3iTypedArray py_new1(Array& from_);
  static Vector3iTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Vector3iTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Vector3iTypedArray new3(PackedByteArray& from_);
  static Vector3iTypedArray py_new3(PackedByteArray& from_);
  static Vector3iTypedArray new4(PackedInt32Array& from_);
  static Vector3iTypedArray py_new4(PackedInt32Array& from_);
  static Vector3iTypedArray new5(PackedInt64Array& from_);
  static Vector3iTypedArray py_new5(PackedInt64Array& from_);
  static Vector3iTypedArray new6(PackedFloat32Array& from_);
  static Vector3iTypedArray py_new6(PackedFloat32Array& from_);
  static Vector3iTypedArray new7(PackedFloat64Array& from_);
  static Vector3iTypedArray py_new7(PackedFloat64Array& from_);
  static Vector3iTypedArray new8(PackedStringArray& from_);
  static Vector3iTypedArray py_new8(PackedStringArray& from_);
  static Vector3iTypedArray new9(PackedVector2Array& from_);
  static Vector3iTypedArray py_new9(PackedVector2Array& from_);
  static Vector3iTypedArray new10(PackedVector3Array& from_);
  static Vector3iTypedArray py_new10(PackedVector3Array& from_);
  static Vector3iTypedArray new11(PackedColorArray& from_);
  static Vector3iTypedArray py_new11(PackedColorArray& from_);

  static Vector3iTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_Vector3iTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_Vector3iTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_Vector3iTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_Vector3iTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_Vector3iTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_Vector3iTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  TreeItemTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~TreeItemTypedArray();

  static TreeItemTypedArray constructor();

  TreeItemTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  TreeItemTypedArray (const TreeItemTypedArray& copy_val);
  TreeItemTypedArray& operator= (const TreeItemTypedArray& copy_val);
  static TreeItemTypedArray new0();
  static TreeItemTypedArray py_new0();
  static TreeItemTypedArray new1(Array& from_);
  static TreeItemTypedArray py_new1(Array& from_);
  static TreeItemTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static TreeItemTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static TreeItemTypedArray new3(PackedByteArray& from_);
  static TreeItemTypedArray py_new3(PackedByteArray& from_);
  static TreeItemTypedArray new4(PackedInt32Array& from_);
  static TreeItemTypedArray py_new4(PackedInt32Array& from_);
  static TreeItemTypedArray new5(PackedInt64Array& from_);
  static TreeItemTypedArray py_new5(PackedInt64Array& from_);
  static TreeItemTypedArray new6(PackedFloat32Array& from_);
  static TreeItemTypedArray py_new6(PackedFloat32Array& from_);
  static TreeItemTypedArray new7(PackedFloat64Array& from_);
  static TreeItemTypedArray py_new7(PackedFloat64Array& from_);
  static TreeItemTypedArray new8(PackedStringArray& from_);
  static TreeItemTypedArray py_new8(PackedStringArray& from_);
  static TreeItemTypedArray new9(PackedVector2Array& from_);
  static TreeItemTypedArray py_new9(PackedVector2Array& from_);
  static TreeItemTypedArray new10(PackedVector3Array& from_);
  static TreeItemTypedArray py_new10(PackedVector3Array& from_);
  static TreeItemTypedArray new11(PackedColorArray& from_);
  static TreeItemTypedArray py_new11(PackedColorArray& from_);

  static TreeItemTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_TreeItemTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_TreeItemTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_TreeItemTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_TreeItemTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_TreeItemTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_TreeItemTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  ScriptEditorBaseTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~ScriptEditorBaseTypedArray();

  static ScriptEditorBaseTypedArray constructor();

  ScriptEditorBaseTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  ScriptEditorBaseTypedArray (const ScriptEditorBaseTypedArray& copy_val);
  ScriptEditorBaseTypedArray& operator= (const ScriptEditorBaseTypedArray& copy_val);
  static ScriptEditorBaseTypedArray new0();
  static ScriptEditorBaseTypedArray py_new0();
  static ScriptEditorBaseTypedArray new1(Array& from_);
  static ScriptEditorBaseTypedArray py_new1(Array& from_);
  static ScriptEditorBaseTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static ScriptEditorBaseTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static ScriptEditorBaseTypedArray new3(PackedByteArray& from_);
  static ScriptEditorBaseTypedArray py_new3(PackedByteArray& from_);
  static ScriptEditorBaseTypedArray new4(PackedInt32Array& from_);
  static ScriptEditorBaseTypedArray py_new4(PackedInt32Array& from_);
  static ScriptEditorBaseTypedArray new5(PackedInt64Array& from_);
  static ScriptEditorBaseTypedArray py_new5(PackedInt64Array& from_);
  static ScriptEditorBaseTypedArray new6(PackedFloat32Array& from_);
  static ScriptEditorBaseTypedArray py_new6(PackedFloat32Array& from_);
  static ScriptEditorBaseTypedArray new7(PackedFloat64Array& from_);
  static ScriptEditorBaseTypedArray py_new7(PackedFloat64Array& from_);
  static ScriptEditorBaseTypedArray new8(PackedStringArray& from_);
  static ScriptEditorBaseTypedArray py_new8(PackedStringArray& from_);
  static ScriptEditorBaseTypedArray new9(PackedVector2Array& from_);
  static ScriptEditorBaseTypedArray py_new9(PackedVector2Array& from_);
  static ScriptEditorBaseTypedArray new10(PackedVector3Array& from_);
  static ScriptEditorBaseTypedArray py_new10(PackedVector3Array& from_);
  static ScriptEditorBaseTypedArray new11(PackedColorArray& from_);
  static ScriptEditorBaseTypedArray py_new11(PackedColorArray& from_);

  static ScriptEditorBaseTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_ScriptEditorBaseTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_ScriptEditorBaseTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_ScriptEditorBaseTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_ScriptEditorBaseTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_ScriptEditorBaseTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_ScriptEditorBaseTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  MaterialTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~MaterialTypedArray();

  static MaterialTypedArray constructor();

  MaterialTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  MaterialTypedArray (const MaterialTypedArray& copy_val);
  MaterialTypedArray& operator= (const MaterialTypedArray& copy_val);
  static MaterialTypedArray new0();
  static MaterialTypedArray py_new0();
  static MaterialTypedArray new1(Array& from_);
  static MaterialTypedArray py_new1(Array& from_);
  static MaterialTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static MaterialTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static MaterialTypedArray new3(PackedByteArray& from_);
  static MaterialTypedArray py_new3(PackedByteArray& from_);
  static MaterialTypedArray new4(PackedInt32Array& from_);
  static MaterialTypedArray py_new4(PackedInt32Array& from_);
  static MaterialTypedArray new5(PackedInt64Array& from_);
  static MaterialTypedArray py_new5(PackedInt64Array& from_);
  static MaterialTypedArray new6(PackedFloat32Array& from_);
  static MaterialTypedArray py_new6(PackedFloat32Array& from_);
  static MaterialTypedArray new7(PackedFloat64Array& from_);
  static MaterialTypedArray py_new7(PackedFloat64Array& from_);
  static MaterialTypedArray new8(PackedStringArray& from_);
  static MaterialTypedArray py_new8(PackedStringArray& from_);
  static MaterialTypedArray new9(PackedVector2Array& from_);
  static MaterialTypedArray py_new9(PackedVector2Array& from_);
  static MaterialTypedArray new10(PackedVector3Array& from_);
  static MaterialTypedArray py_new10(PackedVector3Array& from_);
  static MaterialTypedArray new11(PackedColorArray& from_);
  static MaterialTypedArray py_new11(PackedColorArray& from_);

  static MaterialTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_MaterialTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_MaterialTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_MaterialTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_MaterialTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_MaterialTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_MaterialTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  RDPipelineSpecializationConstantTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~RDPipelineSpecializationConstantTypedArray();

  static RDPipelineSpecializationConstantTypedArray constructor();

  RDPipelineSpecializationConstantTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  RDPipelineSpecializationConstantTypedArray (const RDPipelineSpecializationConstantTypedArray& copy_val);
  RDPipelineSpecializationConstantTypedArray& operator= (const RDPipelineSpecializationConstantTypedArray& copy_val);
  static RDPipelineSpecializationConstantTypedArray new0();
  static RDPipelineSpecializationConstantTypedArray py_new0();
  static RDPipelineSpecializationConstantTypedArray new1(Array& from_);
  static RDPipelineSpecializationConstantTypedArray py_new1(Array& from_);
  static RDPipelineSpecializationConstantTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RDPipelineSpecializationConstantTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RDPipelineSpecializationConstantTypedArray new3(PackedByteArray& from_);
  static RDPipelineSpecializationConstantTypedArray py_new3(PackedByteArray& from_);
  static RDPipelineSpecializationConstantTypedArray new4(PackedInt32Array& from_);
  static RDPipelineSpecializationConstantTypedArray py_new4(PackedInt32Array& from_);
  static RDPipelineSpecializationConstantTypedArray new5(PackedInt64Array& from_);
  static RDPipelineSpecializationConstantTypedArray py_new5(PackedInt64Array& from_);
  static RDPipelineSpecializationConstantTypedArray new6(PackedFloat32Array& from_);
  static RDPipelineSpecializationConstantTypedArray py_new6(PackedFloat32Array& from_);
  static RDPipelineSpecializationConstantTypedArray new7(PackedFloat64Array& from_);
  static RDPipelineSpecializationConstantTypedArray py_new7(PackedFloat64Array& from_);
  static RDPipelineSpecializationConstantTypedArray new8(PackedStringArray& from_);
  static RDPipelineSpecializationConstantTypedArray py_new8(PackedStringArray& from_);
  static RDPipelineSpecializationConstantTypedArray new9(PackedVector2Array& from_);
  static RDPipelineSpecializationConstantTypedArray py_new9(PackedVector2Array& from_);
  static RDPipelineSpecializationConstantTypedArray new10(PackedVector3Array& from_);
  static RDPipelineSpecializationConstantTypedArray py_new10(PackedVector3Array& from_);
  static RDPipelineSpecializationConstantTypedArray new11(PackedColorArray& from_);
  static RDPipelineSpecializationConstantTypedArray py_new11(PackedColorArray& from_);

  static RDPipelineSpecializationConstantTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_RDPipelineSpecializationConstantTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_RDPipelineSpecializationConstantTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_RDPipelineSpecializationConstantTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_RDPipelineSpecializationConstantTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_RDPipelineSpecializationConstantTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_RDPipelineSpecializationConstantTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  BaseButtonTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~BaseButtonTypedArray();

  static BaseButtonTypedArray constructor();

  BaseButtonTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  BaseButtonTypedArray (const BaseButtonTypedArray& copy_val);
  BaseButtonTypedArray& operator= (const BaseButtonTypedArray& copy_val);
  static BaseButtonTypedArray new0();
  static BaseButtonTypedArray py_new0();
  static BaseButtonTypedArray new1(Array& from_);
  static BaseButtonTypedArray py_new1(Array& from_);
  static BaseButtonTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static BaseButtonTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static BaseButtonTypedArray new3(PackedByteArray& from_);
  static BaseButtonTypedArray py_new3(PackedByteArray& from_);
  static BaseButtonTypedArray new4(PackedInt32Array& from_);
  static BaseButtonTypedArray py_new4(PackedInt32Array& from_);
  static BaseButtonTypedArray new5(PackedInt64Array& from_);
  static BaseButtonTypedArray py_new5(PackedInt64Array& from_);
  static BaseButtonTypedArray new6(PackedFloat32Array& from_);
  static BaseButtonTypedArray py_new6(PackedFloat32Array& from_);
  static BaseButtonTypedArray new7(PackedFloat64Array& from_);
  static BaseButtonTypedArray py_new7(PackedFloat64Array& from_);
  static BaseButtonTypedArray new8(PackedStringArray& from_);
  static BaseButtonTypedArray py_new8(PackedStringArray& from_);
  static BaseButtonTypedArray new9(PackedVector2Array& from_);
  static BaseButtonTypedArray py_new9(PackedVector2Array& from_);
  static BaseButtonTypedArray new10(PackedVector3Array& from_);
  static BaseButtonTypedArray py_new10(PackedVector3Array& from_);
  static BaseButtonTypedArray new11(PackedColorArray& from_);
  static BaseButtonTypedArray py_new11(PackedColorArray& from_);

  static BaseButtonTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_BaseButtonTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_BaseButtonTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_BaseButtonTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_BaseButtonTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_BaseButtonTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_BaseButtonTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  RDVertexAttributeTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~RDVertexAttributeTypedArray();

  static RDVertexAttributeTypedArray constructor();

  RDVertexAttributeTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  RDVertexAttributeTypedArray (const RDVertexAttributeTypedArray& copy_val);
  RDVertexAttributeTypedArray& operator= (const RDVertexAttributeTypedArray& copy_val);
  static RDVertexAttributeTypedArray new0();
  static RDVertexAttributeTypedArray py_new0();
  static RDVertexAttributeTypedArray new1(Array& from_);
  static RDVertexAttributeTypedArray py_new1(Array& from_);
  static RDVertexAttributeTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RDVertexAttributeTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RDVertexAttributeTypedArray new3(PackedByteArray& from_);
  static RDVertexAttributeTypedArray py_new3(PackedByteArray& from_);
  static RDVertexAttributeTypedArray new4(PackedInt32Array& from_);
  static RDVertexAttributeTypedArray py_new4(PackedInt32Array& from_);
  static RDVertexAttributeTypedArray new5(PackedInt64Array& from_);
  static RDVertexAttributeTypedArray py_new5(PackedInt64Array& from_);
  static RDVertexAttributeTypedArray new6(PackedFloat32Array& from_);
  static RDVertexAttributeTypedArray py_new6(PackedFloat32Array& from_);
  static RDVertexAttributeTypedArray new7(PackedFloat64Array& from_);
  static RDVertexAttributeTypedArray py_new7(PackedFloat64Array& from_);
  static RDVertexAttributeTypedArray new8(PackedStringArray& from_);
  static RDVertexAttributeTypedArray py_new8(PackedStringArray& from_);
  static RDVertexAttributeTypedArray new9(PackedVector2Array& from_);
  static RDVertexAttributeTypedArray py_new9(PackedVector2Array& from_);
  static RDVertexAttributeTypedArray new10(PackedVector3Array& from_);
  static RDVertexAttributeTypedArray py_new10(PackedVector3Array& from_);
  static RDVertexAttributeTypedArray new11(PackedColorArray& from_);
  static RDVertexAttributeTypedArray py_new11(PackedColorArray& from_);

  static RDVertexAttributeTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_RDVertexAttributeTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_RDVertexAttributeTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_RDVertexAttributeTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_RDVertexAttributeTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_RDVertexAttributeTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_RDVertexAttributeTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  GLTFCameraTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~GLTFCameraTypedArray();

  static GLTFCameraTypedArray constructor();

  GLTFCameraTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  GLTFCameraTypedArray (const GLTFCameraTypedArray& copy_val);
  GLTFCameraTypedArray& operator= (const GLTFCameraTypedArray& copy_val);
  static GLTFCameraTypedArray new0();
  static GLTFCameraTypedArray py_new0();
  static GLTFCameraTypedArray new1(Array& from_);
  static GLTFCameraTypedArray py_new1(Array& from_);
  static GLTFCameraTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFCameraTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFCameraTypedArray new3(PackedByteArray& from_);
  static GLTFCameraTypedArray py_new3(PackedByteArray& from_);
  static GLTFCameraTypedArray new4(PackedInt32Array& from_);
  static GLTFCameraTypedArray py_new4(PackedInt32Array& from_);
  static GLTFCameraTypedArray new5(PackedInt64Array& from_);
  static GLTFCameraTypedArray py_new5(PackedInt64Array& from_);
  static GLTFCameraTypedArray new6(PackedFloat32Array& from_);
  static GLTFCameraTypedArray py_new6(PackedFloat32Array& from_);
  static GLTFCameraTypedArray new7(PackedFloat64Array& from_);
  static GLTFCameraTypedArray py_new7(PackedFloat64Array& from_);
  static GLTFCameraTypedArray new8(PackedStringArray& from_);
  static GLTFCameraTypedArray py_new8(PackedStringArray& from_);
  static GLTFCameraTypedArray new9(PackedVector2Array& from_);
  static GLTFCameraTypedArray py_new9(PackedVector2Array& from_);
  static GLTFCameraTypedArray new10(PackedVector3Array& from_);
  static GLTFCameraTypedArray py_new10(PackedVector3Array& from_);
  static GLTFCameraTypedArray new11(PackedColorArray& from_);
  static GLTFCameraTypedArray py_new11(PackedColorArray& from_);

  static GLTFCameraTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_GLTFCameraTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_GLTFCameraTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_GLTFCameraTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_GLTFCameraTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_GLTFCameraTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_GLTFCameraTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  GLTFLightTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~GLTFLightTypedArray();

  static GLTFLightTypedArray constructor();

  GLTFLightTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  GLTFLightTypedArray (const GLTFLightTypedArray& copy_val);
  GLTFLightTypedArray& operator= (const GLTFLightTypedArray& copy_val);
  static GLTFLightTypedArray new0();
  static GLTFLightTypedArray py_new0();
  static GLTFLightTypedArray new1(Array& from_);
  static GLTFLightTypedArray py_new1(Array& from_);
  static GLTFLightTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFLightTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFLightTypedArray new3(PackedByteArray& from_);
  static GLTFLightTypedArray py_new3(PackedByteArray& from_);
  static GLTFLightTypedArray new4(PackedInt32Array& from_);
  static GLTFLightTypedArray py_new4(PackedInt32Array& from_);
  static GLTFLightTypedArray new5(PackedInt64Array& from_);
  static GLTFLightTypedArray py_new5(PackedInt64Array& from_);
  static GLTFLightTypedArray new6(PackedFloat32Array& from_);
  static GLTFLightTypedArray py_new6(PackedFloat32Array& from_);
  static GLTFLightTypedArray new7(PackedFloat64Array& from_);
  static GLTFLightTypedArray py_new7(PackedFloat64Array& from_);
  static GLTFLightTypedArray new8(PackedStringArray& from_);
  static GLTFLightTypedArray py_new8(PackedStringArray& from_);
  static GLTFLightTypedArray new9(PackedVector2Array& from_);
  static GLTFLightTypedArray py_new9(PackedVector2Array& from_);
  static GLTFLightTypedArray new10(PackedVector3Array& from_);
  static GLTFLightTypedArray py_new10(PackedVector3Array& from_);
  static GLTFLightTypedArray new11(PackedColorArray& from_);
  static GLTFLightTypedArray py_new11(PackedColorArray& from_);

  static GLTFLightTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_GLTFLightTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_GLTFLightTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_GLTFLightTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_GLTFLightTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_GLTFLightTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_GLTFLightTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  Node2DTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~Node2DTypedArray();

  static Node2DTypedArray constructor();

  Node2DTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  Node2DTypedArray (const Node2DTypedArray& copy_val);
  Node2DTypedArray& operator= (const Node2DTypedArray& copy_val);
  static Node2DTypedArray new0();
  static Node2DTypedArray py_new0();
  static Node2DTypedArray new1(Array& from_);
  static Node2DTypedArray py_new1(Array& from_);
  static Node2DTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Node2DTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Node2DTypedArray new3(PackedByteArray& from_);
  static Node2DTypedArray py_new3(PackedByteArray& from_);
  static Node2DTypedArray new4(PackedInt32Array& from_);
  static Node2DTypedArray py_new4(PackedInt32Array& from_);
  static Node2DTypedArray new5(PackedInt64Array& from_);
  static Node2DTypedArray py_new5(PackedInt64Array& from_);
  static Node2DTypedArray new6(PackedFloat32Array& from_);
  static Node2DTypedArray py_new6(PackedFloat32Array& from_);
  static Node2DTypedArray new7(PackedFloat64Array& from_);
  static Node2DTypedArray py_new7(PackedFloat64Array& from_);
  static Node2DTypedArray new8(PackedStringArray& from_);
  static Node2DTypedArray py_new8(PackedStringArray& from_);
  static Node2DTypedArray new9(PackedVector2Array& from_);
  static Node2DTypedArray py_new9(PackedVector2Array& from_);
  static Node2DTypedArray new10(PackedVector3Array& from_);
  static Node2DTypedArray py_new10(PackedVector3Array& from_);
  static Node2DTypedArray new11(PackedColorArray& from_);
  static Node2DTypedArray py_new11(PackedColorArray& from_);

  static Node2DTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_Node2DTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_Node2DTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_Node2DTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_Node2DTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_Node2DTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_Node2DTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  Area2DTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~Area2DTypedArray();

  static Area2DTypedArray constructor();

  Area2DTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  Area2DTypedArray (const Area2DTypedArray& copy_val);
  Area2DTypedArray& operator= (const Area2DTypedArray& copy_val);
  static Area2DTypedArray new0();
  static Area2DTypedArray py_new0();
  static Area2DTypedArray new1(Array& from_);
  static Area2DTypedArray py_new1(Array& from_);
  static Area2DTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Area2DTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Area2DTypedArray new3(PackedByteArray& from_);
  static Area2DTypedArray py_new3(PackedByteArray& from_);
  static Area2DTypedArray new4(PackedInt32Array& from_);
  static Area2DTypedArray py_new4(PackedInt32Array& from_);
  static Area2DTypedArray new5(PackedInt64Array& from_);
  static Area2DTypedArray py_new5(PackedInt64Array& from_);
  static Area2DTypedArray new6(PackedFloat32Array& from_);
  static Area2DTypedArray py_new6(PackedFloat32Array& from_);
  static Area2DTypedArray new7(PackedFloat64Array& from_);
  static Area2DTypedArray py_new7(PackedFloat64Array& from_);
  static Area2DTypedArray new8(PackedStringArray& from_);
  static Area2DTypedArray py_new8(PackedStringArray& from_);
  static Area2DTypedArray new9(PackedVector2Array& from_);
  static Area2DTypedArray py_new9(PackedVector2Array& from_);
  static Area2DTypedArray new10(PackedVector3Array& from_);
  static Area2DTypedArray py_new10(PackedVector3Array& from_);
  static Area2DTypedArray new11(PackedColorArray& from_);
  static Area2DTypedArray py_new11(PackedColorArray& from_);

  static Area2DTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_Area2DTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_Area2DTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_Area2DTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_Area2DTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_Area2DTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_Area2DTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  Node3DTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~Node3DTypedArray();

  static Node3DTypedArray constructor();

  Node3DTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  Node3DTypedArray (const Node3DTypedArray& copy_val);
  Node3DTypedArray& operator= (const Node3DTypedArray& copy_val);
  static Node3DTypedArray new0();
  static Node3DTypedArray py_new0();
  static Node3DTypedArray new1(Array& from_);
  static Node3DTypedArray py_new1(Array& from_);
  static Node3DTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Node3DTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Node3DTypedArray new3(PackedByteArray& from_);
  static Node3DTypedArray py_new3(PackedByteArray& from_);
  static Node3DTypedArray new4(PackedInt32Array& from_);
  static Node3DTypedArray py_new4(PackedInt32Array& from_);
  static Node3DTypedArray new5(PackedInt64Array& from_);
  static Node3DTypedArray py_new5(PackedInt64Array& from_);
  static Node3DTypedArray new6(PackedFloat32Array& from_);
  static Node3DTypedArray py_new6(PackedFloat32Array& from_);
  static Node3DTypedArray new7(PackedFloat64Array& from_);
  static Node3DTypedArray py_new7(PackedFloat64Array& from_);
  static Node3DTypedArray new8(PackedStringArray& from_);
  static Node3DTypedArray py_new8(PackedStringArray& from_);
  static Node3DTypedArray new9(PackedVector2Array& from_);
  static Node3DTypedArray py_new9(PackedVector2Array& from_);
  static Node3DTypedArray new10(PackedVector3Array& from_);
  static Node3DTypedArray py_new10(PackedVector3Array& from_);
  static Node3DTypedArray new11(PackedColorArray& from_);
  static Node3DTypedArray py_new11(PackedColorArray& from_);

  static Node3DTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_Node3DTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_Node3DTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_Node3DTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_Node3DTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_Node3DTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_Node3DTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  InputEventTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~InputEventTypedArray();

  static InputEventTypedArray constructor();

  InputEventTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  InputEventTypedArray (const InputEventTypedArray& copy_val);
  InputEventTypedArray& operator= (const InputEventTypedArray& copy_val);
  static InputEventTypedArray new0();
  static InputEventTypedArray py_new0();
  static InputEventTypedArray new1(Array& from_);
  static InputEventTypedArray py_new1(Array& from_);
  static InputEventTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static InputEventTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static InputEventTypedArray new3(PackedByteArray& from_);
  static InputEventTypedArray py_new3(PackedByteArray& from_);
  static InputEventTypedArray new4(PackedInt32Array& from_);
  static InputEventTypedArray py_new4(PackedInt32Array& from_);
  static InputEventTypedArray new5(PackedInt64Array& from_);
  static InputEventTypedArray py_new5(PackedInt64Array& from_);
  static InputEventTypedArray new6(PackedFloat32Array& from_);
  static InputEventTypedArray py_new6(PackedFloat32Array& from_);
  static InputEventTypedArray new7(PackedFloat64Array& from_);
  static InputEventTypedArray py_new7(PackedFloat64Array& from_);
  static InputEventTypedArray new8(PackedStringArray& from_);
  static InputEventTypedArray py_new8(PackedStringArray& from_);
  static InputEventTypedArray new9(PackedVector2Array& from_);
  static InputEventTypedArray py_new9(PackedVector2Array& from_);
  static InputEventTypedArray new10(PackedVector3Array& from_);
  static InputEventTypedArray py_new10(PackedVector3Array& from_);
  static InputEventTypedArray new11(PackedColorArray& from_);
  static InputEventTypedArray py_new11(PackedColorArray& from_);

  static InputEventTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_InputEventTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_InputEventTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_InputEventTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_InputEventTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_InputEventTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_InputEventTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  GLTFAnimationTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~GLTFAnimationTypedArray();

  static GLTFAnimationTypedArray constructor();

  GLTFAnimationTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  GLTFAnimationTypedArray (const GLTFAnimationTypedArray& copy_val);
  GLTFAnimationTypedArray& operator= (const GLTFAnimationTypedArray& copy_val);
  static GLTFAnimationTypedArray new0();
  static GLTFAnimationTypedArray py_new0();
  static GLTFAnimationTypedArray new1(Array& from_);
  static GLTFAnimationTypedArray py_new1(Array& from_);
  static GLTFAnimationTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFAnimationTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFAnimationTypedArray new3(PackedByteArray& from_);
  static GLTFAnimationTypedArray py_new3(PackedByteArray& from_);
  static GLTFAnimationTypedArray new4(PackedInt32Array& from_);
  static GLTFAnimationTypedArray py_new4(PackedInt32Array& from_);
  static GLTFAnimationTypedArray new5(PackedInt64Array& from_);
  static GLTFAnimationTypedArray py_new5(PackedInt64Array& from_);
  static GLTFAnimationTypedArray new6(PackedFloat32Array& from_);
  static GLTFAnimationTypedArray py_new6(PackedFloat32Array& from_);
  static GLTFAnimationTypedArray new7(PackedFloat64Array& from_);
  static GLTFAnimationTypedArray py_new7(PackedFloat64Array& from_);
  static GLTFAnimationTypedArray new8(PackedStringArray& from_);
  static GLTFAnimationTypedArray py_new8(PackedStringArray& from_);
  static GLTFAnimationTypedArray new9(PackedVector2Array& from_);
  static GLTFAnimationTypedArray py_new9(PackedVector2Array& from_);
  static GLTFAnimationTypedArray new10(PackedVector3Array& from_);
  static GLTFAnimationTypedArray py_new10(PackedVector3Array& from_);
  static GLTFAnimationTypedArray new11(PackedColorArray& from_);
  static GLTFAnimationTypedArray py_new11(PackedColorArray& from_);

  static GLTFAnimationTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_GLTFAnimationTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_GLTFAnimationTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_GLTFAnimationTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_GLTFAnimationTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_GLTFAnimationTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_GLTFAnimationTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  PackedByteArrayTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~PackedByteArrayTypedArray();

  static PackedByteArrayTypedArray constructor();

  PackedByteArrayTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  PackedByteArrayTypedArray (const PackedByteArrayTypedArray& copy_val);
  PackedByteArrayTypedArray& operator= (const PackedByteArrayTypedArray& copy_val);
  static PackedByteArrayTypedArray new0();
  static PackedByteArrayTypedArray py_new0();
  static PackedByteArrayTypedArray new1(Array& from_);
  static PackedByteArrayTypedArray py_new1(Array& from_);
  static PackedByteArrayTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static PackedByteArrayTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static PackedByteArrayTypedArray new3(PackedByteArray& from_);
  static PackedByteArrayTypedArray py_new3(PackedByteArray& from_);
  static PackedByteArrayTypedArray new4(PackedInt32Array& from_);
  static PackedByteArrayTypedArray py_new4(PackedInt32Array& from_);
  static PackedByteArrayTypedArray new5(PackedInt64Array& from_);
  static PackedByteArrayTypedArray py_new5(PackedInt64Array& from_);
  static PackedByteArrayTypedArray new6(PackedFloat32Array& from_);
  static PackedByteArrayTypedArray py_new6(PackedFloat32Array& from_);
  static PackedByteArrayTypedArray new7(PackedFloat64Array& from_);
  static PackedByteArrayTypedArray py_new7(PackedFloat64Array& from_);
  static PackedByteArrayTypedArray new8(PackedStringArray& from_);
  static PackedByteArrayTypedArray py_new8(PackedStringArray& from_);
  static PackedByteArrayTypedArray new9(PackedVector2Array& from_);
  static PackedByteArrayTypedArray py_new9(PackedVector2Array& from_);
  static PackedByteArrayTypedArray new10(PackedVector3Array& from_);
  static PackedByteArrayTypedArray py_new10(PackedVector3Array& from_);
  static PackedByteArrayTypedArray new11(PackedColorArray& from_);
  static PackedByteArrayTypedArray py_new11(PackedColorArray& from_);

  static PackedByteArrayTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_PackedByteArrayTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_PackedByteArrayTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_PackedByteArrayTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_PackedByteArrayTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_PackedByteArrayTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_PackedByteArrayTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  Vector2TypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~Vector2TypedArray();

  static Vector2TypedArray constructor();

  Vector2TypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  Vector2TypedArray (const Vector2TypedArray& copy_val);
  Vector2TypedArray& operator= (const Vector2TypedArray& copy_val);
  static Vector2TypedArray new0();
  static Vector2TypedArray py_new0();
  static Vector2TypedArray new1(Array& from_);
  static Vector2TypedArray py_new1(Array& from_);
  static Vector2TypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Vector2TypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Vector2TypedArray new3(PackedByteArray& from_);
  static Vector2TypedArray py_new3(PackedByteArray& from_);
  static Vector2TypedArray new4(PackedInt32Array& from_);
  static Vector2TypedArray py_new4(PackedInt32Array& from_);
  static Vector2TypedArray new5(PackedInt64Array& from_);
  static Vector2TypedArray py_new5(PackedInt64Array& from_);
  static Vector2TypedArray new6(PackedFloat32Array& from_);
  static Vector2TypedArray py_new6(PackedFloat32Array& from_);
  static Vector2TypedArray new7(PackedFloat64Array& from_);
  static Vector2TypedArray py_new7(PackedFloat64Array& from_);
  static Vector2TypedArray new8(PackedStringArray& from_);
  static Vector2TypedArray py_new8(PackedStringArray& from_);
  static Vector2TypedArray new9(PackedVector2Array& from_);
  static Vector2TypedArray py_new9(PackedVector2Array& from_);
  static Vector2TypedArray new10(PackedVector3Array& from_);
  static Vector2TypedArray py_new10(PackedVector3Array& from_);
  static Vector2TypedArray new11(PackedColorArray& from_);
  static Vector2TypedArray py_new11(PackedColorArray& from_);

  static Vector2TypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_Vector2TypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_Vector2TypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_Vector2TypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_Vector2TypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_Vector2TypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_Vector2TypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  ImageTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~ImageTypedArray();

  static ImageTypedArray constructor();

  ImageTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  ImageTypedArray (const ImageTypedArray& copy_val);
  ImageTypedArray& operator= (const ImageTypedArray& copy_val);
  static ImageTypedArray new0();
  static ImageTypedArray py_new0();
  static ImageTypedArray new1(Array& from_);
  static ImageTypedArray py_new1(Array& from_);
  static ImageTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static ImageTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static ImageTypedArray new3(PackedByteArray& from_);
  static ImageTypedArray py_new3(PackedByteArray& from_);
  static ImageTypedArray new4(PackedInt32Array& from_);
  static ImageTypedArray py_new4(PackedInt32Array& from_);
  static ImageTypedArray new5(PackedInt64Array& from_);
  static ImageTypedArray py_new5(PackedInt64Array& from_);
  static ImageTypedArray new6(PackedFloat32Array& from_);
  static ImageTypedArray py_new6(PackedFloat32Array& from_);
  static ImageTypedArray new7(PackedFloat64Array& from_);
  static ImageTypedArray py_new7(PackedFloat64Array& from_);
  static ImageTypedArray new8(PackedStringArray& from_);
  static ImageTypedArray py_new8(PackedStringArray& from_);
  static ImageTypedArray new9(PackedVector2Array& from_);
  static ImageTypedArray py_new9(PackedVector2Array& from_);
  static ImageTypedArray new10(PackedVector3Array& from_);
  static ImageTypedArray py_new10(PackedVector3Array& from_);
  static ImageTypedArray new11(PackedColorArray& from_);
  static ImageTypedArray py_new11(PackedColorArray& from_);

  static ImageTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_ImageTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_ImageTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_ImageTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_ImageTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_ImageTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_ImageTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  RDPipelineColorBlendStateAttachmentTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~RDPipelineColorBlendStateAttachmentTypedArray();

  static RDPipelineColorBlendStateAttachmentTypedArray constructor();

  RDPipelineColorBlendStateAttachmentTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  RDPipelineColorBlendStateAttachmentTypedArray (const RDPipelineColorBlendStateAttachmentTypedArray& copy_val);
  RDPipelineColorBlendStateAttachmentTypedArray& operator= (const RDPipelineColorBlendStateAttachmentTypedArray& copy_val);
  static RDPipelineColorBlendStateAttachmentTypedArray new0();
  static RDPipelineColorBlendStateAttachmentTypedArray py_new0();
  static RDPipelineColorBlendStateAttachmentTypedArray new1(Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray py_new1(Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RDPipelineColorBlendStateAttachmentTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RDPipelineColorBlendStateAttachmentTypedArray new3(PackedByteArray& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray py_new3(PackedByteArray& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray new4(PackedInt32Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray py_new4(PackedInt32Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray new5(PackedInt64Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray py_new5(PackedInt64Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray new6(PackedFloat32Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray py_new6(PackedFloat32Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray new7(PackedFloat64Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray py_new7(PackedFloat64Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray new8(PackedStringArray& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray py_new8(PackedStringArray& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray new9(PackedVector2Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray py_new9(PackedVector2Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray new10(PackedVector3Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray py_new10(PackedVector3Array& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray new11(PackedColorArray& from_);
  static RDPipelineColorBlendStateAttachmentTypedArray py_new11(PackedColorArray& from_);

  static RDPipelineColorBlendStateAttachmentTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_RDPipelineColorBlendStateAttachmentTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_RDPipelineColorBlendStateAttachmentTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_RDPipelineColorBlendStateAttachmentTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_RDPipelineColorBlendStateAttachmentTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_RDPipelineColorBlendStateAttachmentTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_RDPipelineColorBlendStateAttachmentTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  Area3DTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~Area3DTypedArray();

  static Area3DTypedArray constructor();

  Area3DTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  Area3DTypedArray (const Area3DTypedArray& copy_val);
  Area3DTypedArray& operator= (const Area3DTypedArray& copy_val);
  static Area3DTypedArray new0();
  static Area3DTypedArray py_new0();
  static Area3DTypedArray new1(Array& from_);
  static Area3DTypedArray py_new1(Array& from_);
  static Area3DTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Area3DTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Area3DTypedArray new3(PackedByteArray& from_);
  static Area3DTypedArray py_new3(PackedByteArray& from_);
  static Area3DTypedArray new4(PackedInt32Array& from_);
  static Area3DTypedArray py_new4(PackedInt32Array& from_);
  static Area3DTypedArray new5(PackedInt64Array& from_);
  static Area3DTypedArray py_new5(PackedInt64Array& from_);
  static Area3DTypedArray new6(PackedFloat32Array& from_);
  static Area3DTypedArray py_new6(PackedFloat32Array& from_);
  static Area3DTypedArray new7(PackedFloat64Array& from_);
  static Area3DTypedArray py_new7(PackedFloat64Array& from_);
  static Area3DTypedArray new8(PackedStringArray& from_);
  static Area3DTypedArray py_new8(PackedStringArray& from_);
  static Area3DTypedArray new9(PackedVector2Array& from_);
  static Area3DTypedArray py_new9(PackedVector2Array& from_);
  static Area3DTypedArray new10(PackedVector3Array& from_);
  static Area3DTypedArray py_new10(PackedVector3Array& from_);
  static Area3DTypedArray new11(PackedColorArray& from_);
  static Area3DTypedArray py_new11(PackedColorArray& from_);

  static Area3DTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_Area3DTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_Area3DTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_Area3DTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_Area3DTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_Area3DTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_Area3DTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  GLTFTextureSamplerTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~GLTFTextureSamplerTypedArray();

  static GLTFTextureSamplerTypedArray constructor();

  GLTFTextureSamplerTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  GLTFTextureSamplerTypedArray (const GLTFTextureSamplerTypedArray& copy_val);
  GLTFTextureSamplerTypedArray& operator= (const GLTFTextureSamplerTypedArray& copy_val);
  static GLTFTextureSamplerTypedArray new0();
  static GLTFTextureSamplerTypedArray py_new0();
  static GLTFTextureSamplerTypedArray new1(Array& from_);
  static GLTFTextureSamplerTypedArray py_new1(Array& from_);
  static GLTFTextureSamplerTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFTextureSamplerTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFTextureSamplerTypedArray new3(PackedByteArray& from_);
  static GLTFTextureSamplerTypedArray py_new3(PackedByteArray& from_);
  static GLTFTextureSamplerTypedArray new4(PackedInt32Array& from_);
  static GLTFTextureSamplerTypedArray py_new4(PackedInt32Array& from_);
  static GLTFTextureSamplerTypedArray new5(PackedInt64Array& from_);
  static GLTFTextureSamplerTypedArray py_new5(PackedInt64Array& from_);
  static GLTFTextureSamplerTypedArray new6(PackedFloat32Array& from_);
  static GLTFTextureSamplerTypedArray py_new6(PackedFloat32Array& from_);
  static GLTFTextureSamplerTypedArray new7(PackedFloat64Array& from_);
  static GLTFTextureSamplerTypedArray py_new7(PackedFloat64Array& from_);
  static GLTFTextureSamplerTypedArray new8(PackedStringArray& from_);
  static GLTFTextureSamplerTypedArray py_new8(PackedStringArray& from_);
  static GLTFTextureSamplerTypedArray new9(PackedVector2Array& from_);
  static GLTFTextureSamplerTypedArray py_new9(PackedVector2Array& from_);
  static GLTFTextureSamplerTypedArray new10(PackedVector3Array& from_);
  static GLTFTextureSamplerTypedArray py_new10(PackedVector3Array& from_);
  static GLTFTextureSamplerTypedArray new11(PackedColorArray& from_);
  static GLTFTextureSamplerTypedArray py_new11(PackedColorArray& from_);

  static GLTFTextureSamplerTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_GLTFTextureSamplerTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_GLTFTextureSamplerTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_GLTFTextureSamplerTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_GLTFTextureSamplerTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_GLTFTextureSamplerTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_GLTFTextureSamplerTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  ENetPacketPeerTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~ENetPacketPeerTypedArray();

  static ENetPacketPeerTypedArray constructor();

  ENetPacketPeerTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  ENetPacketPeerTypedArray (const ENetPacketPeerTypedArray& copy_val);
  ENetPacketPeerTypedArray& operator= (const ENetPacketPeerTypedArray& copy_val);
  static ENetPacketPeerTypedArray new0();
  static ENetPacketPeerTypedArray py_new0();
  static ENetPacketPeerTypedArray new1(Array& from_);
  static ENetPacketPeerTypedArray py_new1(Array& from_);
  static ENetPacketPeerTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static ENetPacketPeerTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static ENetPacketPeerTypedArray new3(PackedByteArray& from_);
  static ENetPacketPeerTypedArray py_new3(PackedByteArray& from_);
  static ENetPacketPeerTypedArray new4(PackedInt32Array& from_);
  static ENetPacketPeerTypedArray py_new4(PackedInt32Array& from_);
  static ENetPacketPeerTypedArray new5(PackedInt64Array& from_);
  static ENetPacketPeerTypedArray py_new5(PackedInt64Array& from_);
  static ENetPacketPeerTypedArray new6(PackedFloat32Array& from_);
  static ENetPacketPeerTypedArray py_new6(PackedFloat32Array& from_);
  static ENetPacketPeerTypedArray new7(PackedFloat64Array& from_);
  static ENetPacketPeerTypedArray py_new7(PackedFloat64Array& from_);
  static ENetPacketPeerTypedArray new8(PackedStringArray& from_);
  static ENetPacketPeerTypedArray py_new8(PackedStringArray& from_);
  static ENetPacketPeerTypedArray new9(PackedVector2Array& from_);
  static ENetPacketPeerTypedArray py_new9(PackedVector2Array& from_);
  static ENetPacketPeerTypedArray new10(PackedVector3Array& from_);
  static ENetPacketPeerTypedArray py_new10(PackedVector3Array& from_);
  static ENetPacketPeerTypedArray new11(PackedColorArray& from_);
  static ENetPacketPeerTypedArray py_new11(PackedColorArray& from_);

  static ENetPacketPeerTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_ENetPacketPeerTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_ENetPacketPeerTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_ENetPacketPeerTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_ENetPacketPeerTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_ENetPacketPeerTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_ENetPacketPeerTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  PlaneTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~PlaneTypedArray();

  static PlaneTypedArray constructor();

  PlaneTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  PlaneTypedArray (const PlaneTypedArray& copy_val);
  PlaneTypedArray& operator= (const PlaneTypedArray& copy_val);
  static PlaneTypedArray new0();
  static PlaneTypedArray py_new0();
  static PlaneTypedArray new1(Array& from_);
  static PlaneTypedArray py_new1(Array& from_);
  static PlaneTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static PlaneTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static PlaneTypedArray new3(PackedByteArray& from_);
  static PlaneTypedArray py_new3(PackedByteArray& from_);
  static PlaneTypedArray new4(PackedInt32Array& from_);
  static PlaneTypedArray py_new4(PackedInt32Array& from_);
  static PlaneTypedArray new5(PackedInt64Array& from_);
  static PlaneTypedArray py_new5(PackedInt64Array& from_);
  static PlaneTypedArray new6(PackedFloat32Array& from_);
  static PlaneTypedArray py_new6(PackedFloat32Array& from_);
  static PlaneTypedArray new7(PackedFloat64Array& from_);
  static PlaneTypedArray py_new7(PackedFloat64Array& from_);
  static PlaneTypedArray new8(PackedStringArray& from_);
  static PlaneTypedArray py_new8(PackedStringArray& from_);
  static PlaneTypedArray new9(PackedVector2Array& from_);
  static PlaneTypedArray py_new9(PackedVector2Array& from_);
  static PlaneTypedArray new10(PackedVector3Array& from_);
  static PlaneTypedArray py_new10(PackedVector3Array& from_);
  static PlaneTypedArray new11(PackedColorArray& from_);
  static PlaneTypedArray py_new11(PackedColorArray& from_);

  static PlaneTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_PlaneTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_PlaneTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_PlaneTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_PlaneTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_PlaneTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_PlaneTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  Transform3DTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~Transform3DTypedArray();

  static Transform3DTypedArray constructor();

  Transform3DTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  Transform3DTypedArray (const Transform3DTypedArray& copy_val);
  Transform3DTypedArray& operator= (const Transform3DTypedArray& copy_val);
  static Transform3DTypedArray new0();
  static Transform3DTypedArray py_new0();
  static Transform3DTypedArray new1(Array& from_);
  static Transform3DTypedArray py_new1(Array& from_);
  static Transform3DTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Transform3DTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Transform3DTypedArray new3(PackedByteArray& from_);
  static Transform3DTypedArray py_new3(PackedByteArray& from_);
  static Transform3DTypedArray new4(PackedInt32Array& from_);
  static Transform3DTypedArray py_new4(PackedInt32Array& from_);
  static Transform3DTypedArray new5(PackedInt64Array& from_);
  static Transform3DTypedArray py_new5(PackedInt64Array& from_);
  static Transform3DTypedArray new6(PackedFloat32Array& from_);
  static Transform3DTypedArray py_new6(PackedFloat32Array& from_);
  static Transform3DTypedArray new7(PackedFloat64Array& from_);
  static Transform3DTypedArray py_new7(PackedFloat64Array& from_);
  static Transform3DTypedArray new8(PackedStringArray& from_);
  static Transform3DTypedArray py_new8(PackedStringArray& from_);
  static Transform3DTypedArray new9(PackedVector2Array& from_);
  static Transform3DTypedArray py_new9(PackedVector2Array& from_);
  static Transform3DTypedArray new10(PackedVector3Array& from_);
  static Transform3DTypedArray py_new10(PackedVector3Array& from_);
  static Transform3DTypedArray new11(PackedColorArray& from_);
  static Transform3DTypedArray py_new11(PackedColorArray& from_);

  static Transform3DTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_Transform3DTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_Transform3DTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_Transform3DTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_Transform3DTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_Transform3DTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_Transform3DTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  Node3DGizmoTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~Node3DGizmoTypedArray();

  static Node3DGizmoTypedArray constructor();

  Node3DGizmoTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  Node3DGizmoTypedArray (const Node3DGizmoTypedArray& copy_val);
  Node3DGizmoTypedArray& operator= (const Node3DGizmoTypedArray& copy_val);
  static Node3DGizmoTypedArray new0();
  static Node3DGizmoTypedArray py_new0();
  static Node3DGizmoTypedArray new1(Array& from_);
  static Node3DGizmoTypedArray py_new1(Array& from_);
  static Node3DGizmoTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Node3DGizmoTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Node3DGizmoTypedArray new3(PackedByteArray& from_);
  static Node3DGizmoTypedArray py_new3(PackedByteArray& from_);
  static Node3DGizmoTypedArray new4(PackedInt32Array& from_);
  static Node3DGizmoTypedArray py_new4(PackedInt32Array& from_);
  static Node3DGizmoTypedArray new5(PackedInt64Array& from_);
  static Node3DGizmoTypedArray py_new5(PackedInt64Array& from_);
  static Node3DGizmoTypedArray new6(PackedFloat32Array& from_);
  static Node3DGizmoTypedArray py_new6(PackedFloat32Array& from_);
  static Node3DGizmoTypedArray new7(PackedFloat64Array& from_);
  static Node3DGizmoTypedArray py_new7(PackedFloat64Array& from_);
  static Node3DGizmoTypedArray new8(PackedStringArray& from_);
  static Node3DGizmoTypedArray py_new8(PackedStringArray& from_);
  static Node3DGizmoTypedArray new9(PackedVector2Array& from_);
  static Node3DGizmoTypedArray py_new9(PackedVector2Array& from_);
  static Node3DGizmoTypedArray new10(PackedVector3Array& from_);
  static Node3DGizmoTypedArray py_new10(PackedVector3Array& from_);
  static Node3DGizmoTypedArray new11(PackedColorArray& from_);
  static Node3DGizmoTypedArray py_new11(PackedColorArray& from_);

  static Node3DGizmoTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_Node3DGizmoTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_Node3DGizmoTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_Node3DGizmoTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_Node3DGizmoTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_Node3DGizmoTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_Node3DGizmoTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  GLTFMeshTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~GLTFMeshTypedArray();

  static GLTFMeshTypedArray constructor();

  GLTFMeshTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  GLTFMeshTypedArray (const GLTFMeshTypedArray& copy_val);
  GLTFMeshTypedArray& operator= (const GLTFMeshTypedArray& copy_val);
  static GLTFMeshTypedArray new0();
  static GLTFMeshTypedArray py_new0();
  static GLTFMeshTypedArray new1(Array& from_);
  static GLTFMeshTypedArray py_new1(Array& from_);
  static GLTFMeshTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFMeshTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFMeshTypedArray new3(PackedByteArray& from_);
  static GLTFMeshTypedArray py_new3(PackedByteArray& from_);
  static GLTFMeshTypedArray new4(PackedInt32Array& from_);
  static GLTFMeshTypedArray py_new4(PackedInt32Array& from_);
  static GLTFMeshTypedArray new5(PackedInt64Array& from_);
  static GLTFMeshTypedArray py_new5(PackedInt64Array& from_);
  static GLTFMeshTypedArray new6(PackedFloat32Array& from_);
  static GLTFMeshTypedArray py_new6(PackedFloat32Array& from_);
  static GLTFMeshTypedArray new7(PackedFloat64Array& from_);
  static GLTFMeshTypedArray py_new7(PackedFloat64Array& from_);
  static GLTFMeshTypedArray new8(PackedStringArray& from_);
  static GLTFMeshTypedArray py_new8(PackedStringArray& from_);
  static GLTFMeshTypedArray new9(PackedVector2Array& from_);
  static GLTFMeshTypedArray py_new9(PackedVector2Array& from_);
  static GLTFMeshTypedArray new10(PackedVector3Array& from_);
  static GLTFMeshTypedArray py_new10(PackedVector3Array& from_);
  static GLTFMeshTypedArray new11(PackedColorArray& from_);
  static GLTFMeshTypedArray py_new11(PackedColorArray& from_);

  static GLTFMeshTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_GLTFMeshTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_GLTFMeshTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_GLTFMeshTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_GLTFMeshTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_GLTFMeshTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_GLTFMeshTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  Vector3TypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~Vector3TypedArray();

  static Vector3TypedArray constructor();

  Vector3TypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  Vector3TypedArray (const Vector3TypedArray& copy_val);
  Vector3TypedArray& operator= (const Vector3TypedArray& copy_val);
  static Vector3TypedArray new0();
  static Vector3TypedArray py_new0();
  static Vector3TypedArray new1(Array& from_);
  static Vector3TypedArray py_new1(Array& from_);
  static Vector3TypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Vector3TypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Vector3TypedArray new3(PackedByteArray& from_);
  static Vector3TypedArray py_new3(PackedByteArray& from_);
  static Vector3TypedArray new4(PackedInt32Array& from_);
  static Vector3TypedArray py_new4(PackedInt32Array& from_);
  static Vector3TypedArray new5(PackedInt64Array& from_);
  static Vector3TypedArray py_new5(PackedInt64Array& from_);
  static Vector3TypedArray new6(PackedFloat32Array& from_);
  static Vector3TypedArray py_new6(PackedFloat32Array& from_);
  static Vector3TypedArray new7(PackedFloat64Array& from_);
  static Vector3TypedArray py_new7(PackedFloat64Array& from_);
  static Vector3TypedArray new8(PackedStringArray& from_);
  static Vector3TypedArray py_new8(PackedStringArray& from_);
  static Vector3TypedArray new9(PackedVector2Array& from_);
  static Vector3TypedArray py_new9(PackedVector2Array& from_);
  static Vector3TypedArray new10(PackedVector3Array& from_);
  static Vector3TypedArray py_new10(PackedVector3Array& from_);
  static Vector3TypedArray new11(PackedColorArray& from_);
  static Vector3TypedArray py_new11(PackedColorArray& from_);

  static Vector3TypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_Vector3TypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_Vector3TypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_Vector3TypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_Vector3TypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_Vector3TypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_Vector3TypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  TweenTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~TweenTypedArray();

  static TweenTypedArray constructor();

  TweenTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  TweenTypedArray (const TweenTypedArray& copy_val);
  TweenTypedArray& operator= (const TweenTypedArray& copy_val);
  static TweenTypedArray new0();
  static TweenTypedArray py_new0();
  static TweenTypedArray new1(Array& from_);
  static TweenTypedArray py_new1(Array& from_);
  static TweenTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static TweenTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static TweenTypedArray new3(PackedByteArray& from_);
  static TweenTypedArray py_new3(PackedByteArray& from_);
  static TweenTypedArray new4(PackedInt32Array& from_);
  static TweenTypedArray py_new4(PackedInt32Array& from_);
  static TweenTypedArray new5(PackedInt64Array& from_);
  static TweenTypedArray py_new5(PackedInt64Array& from_);
  static TweenTypedArray new6(PackedFloat32Array& from_);
  static TweenTypedArray py_new6(PackedFloat32Array& from_);
  static TweenTypedArray new7(PackedFloat64Array& from_);
  static TweenTypedArray py_new7(PackedFloat64Array& from_);
  static TweenTypedArray new8(PackedStringArray& from_);
  static TweenTypedArray py_new8(PackedStringArray& from_);
  static TweenTypedArray new9(PackedVector2Array& from_);
  static TweenTypedArray py_new9(PackedVector2Array& from_);
  static TweenTypedArray new10(PackedVector3Array& from_);
  static TweenTypedArray py_new10(PackedVector3Array& from_);
  static TweenTypedArray new11(PackedColorArray& from_);
  static TweenTypedArray py_new11(PackedColorArray& from_);

  static TweenTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_TweenTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_TweenTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_TweenTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_TweenTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_TweenTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_TweenTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  ArrayTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~ArrayTypedArray();

  static ArrayTypedArray constructor();

  ArrayTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  ArrayTypedArray (const ArrayTypedArray& copy_val);
  ArrayTypedArray& operator= (const ArrayTypedArray& copy_val);
  static ArrayTypedArray new0();
  static ArrayTypedArray py_new0();
  static ArrayTypedArray new1(Array& from_);
  static ArrayTypedArray py_new1(Array& from_);
  static ArrayTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static ArrayTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static ArrayTypedArray new3(PackedByteArray& from_);
  static ArrayTypedArray py_new3(PackedByteArray& from_);
  static ArrayTypedArray new4(PackedInt32Array& from_);
  static ArrayTypedArray py_new4(PackedInt32Array& from_);
  static ArrayTypedArray new5(PackedInt64Array& from_);
  static ArrayTypedArray py_new5(PackedInt64Array& from_);
  static ArrayTypedArray new6(PackedFloat32Array& from_);
  static ArrayTypedArray py_new6(PackedFloat32Array& from_);
  static ArrayTypedArray new7(PackedFloat64Array& from_);
  static ArrayTypedArray py_new7(PackedFloat64Array& from_);
  static ArrayTypedArray new8(PackedStringArray& from_);
  static ArrayTypedArray py_new8(PackedStringArray& from_);
  static ArrayTypedArray new9(PackedVector2Array& from_);
  static ArrayTypedArray py_new9(PackedVector2Array& from_);
  static ArrayTypedArray new10(PackedVector3Array& from_);
  static ArrayTypedArray py_new10(PackedVector3Array& from_);
  static ArrayTypedArray new11(PackedColorArray& from_);
  static ArrayTypedArray py_new11(PackedColorArray& from_);

  static ArrayTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_ArrayTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_ArrayTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_ArrayTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_ArrayTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_ArrayTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_ArrayTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  RDAttachmentFormatTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~RDAttachmentFormatTypedArray();

  static RDAttachmentFormatTypedArray constructor();

  RDAttachmentFormatTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  RDAttachmentFormatTypedArray (const RDAttachmentFormatTypedArray& copy_val);
  RDAttachmentFormatTypedArray& operator= (const RDAttachmentFormatTypedArray& copy_val);
  static RDAttachmentFormatTypedArray new0();
  static RDAttachmentFormatTypedArray py_new0();
  static RDAttachmentFormatTypedArray new1(Array& from_);
  static RDAttachmentFormatTypedArray py_new1(Array& from_);
  static RDAttachmentFormatTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RDAttachmentFormatTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RDAttachmentFormatTypedArray new3(PackedByteArray& from_);
  static RDAttachmentFormatTypedArray py_new3(PackedByteArray& from_);
  static RDAttachmentFormatTypedArray new4(PackedInt32Array& from_);
  static RDAttachmentFormatTypedArray py_new4(PackedInt32Array& from_);
  static RDAttachmentFormatTypedArray new5(PackedInt64Array& from_);
  static RDAttachmentFormatTypedArray py_new5(PackedInt64Array& from_);
  static RDAttachmentFormatTypedArray new6(PackedFloat32Array& from_);
  static RDAttachmentFormatTypedArray py_new6(PackedFloat32Array& from_);
  static RDAttachmentFormatTypedArray new7(PackedFloat64Array& from_);
  static RDAttachmentFormatTypedArray py_new7(PackedFloat64Array& from_);
  static RDAttachmentFormatTypedArray new8(PackedStringArray& from_);
  static RDAttachmentFormatTypedArray py_new8(PackedStringArray& from_);
  static RDAttachmentFormatTypedArray new9(PackedVector2Array& from_);
  static RDAttachmentFormatTypedArray py_new9(PackedVector2Array& from_);
  static RDAttachmentFormatTypedArray new10(PackedVector3Array& from_);
  static RDAttachmentFormatTypedArray py_new10(PackedVector3Array& from_);
  static RDAttachmentFormatTypedArray new11(PackedColorArray& from_);
  static RDAttachmentFormatTypedArray py_new11(PackedColorArray& from_);

  static RDAttachmentFormatTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_RDAttachmentFormatTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_RDAttachmentFormatTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_RDAttachmentFormatTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_RDAttachmentFormatTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_RDAttachmentFormatTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_RDAttachmentFormatTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  RDFramebufferPassTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~RDFramebufferPassTypedArray();

  static RDFramebufferPassTypedArray constructor();

  RDFramebufferPassTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  RDFramebufferPassTypedArray (const RDFramebufferPassTypedArray& copy_val);
  RDFramebufferPassTypedArray& operator= (const RDFramebufferPassTypedArray& copy_val);
  static RDFramebufferPassTypedArray new0();
  static RDFramebufferPassTypedArray py_new0();
  static RDFramebufferPassTypedArray new1(Array& from_);
  static RDFramebufferPassTypedArray py_new1(Array& from_);
  static RDFramebufferPassTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RDFramebufferPassTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RDFramebufferPassTypedArray new3(PackedByteArray& from_);
  static RDFramebufferPassTypedArray py_new3(PackedByteArray& from_);
  static RDFramebufferPassTypedArray new4(PackedInt32Array& from_);
  static RDFramebufferPassTypedArray py_new4(PackedInt32Array& from_);
  static RDFramebufferPassTypedArray new5(PackedInt64Array& from_);
  static RDFramebufferPassTypedArray py_new5(PackedInt64Array& from_);
  static RDFramebufferPassTypedArray new6(PackedFloat32Array& from_);
  static RDFramebufferPassTypedArray py_new6(PackedFloat32Array& from_);
  static RDFramebufferPassTypedArray new7(PackedFloat64Array& from_);
  static RDFramebufferPassTypedArray py_new7(PackedFloat64Array& from_);
  static RDFramebufferPassTypedArray new8(PackedStringArray& from_);
  static RDFramebufferPassTypedArray py_new8(PackedStringArray& from_);
  static RDFramebufferPassTypedArray new9(PackedVector2Array& from_);
  static RDFramebufferPassTypedArray py_new9(PackedVector2Array& from_);
  static RDFramebufferPassTypedArray new10(PackedVector3Array& from_);
  static RDFramebufferPassTypedArray py_new10(PackedVector3Array& from_);
  static RDFramebufferPassTypedArray new11(PackedColorArray& from_);
  static RDFramebufferPassTypedArray py_new11(PackedColorArray& from_);

  static RDFramebufferPassTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_RDFramebufferPassTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_RDFramebufferPassTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_RDFramebufferPassTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_RDFramebufferPassTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_RDFramebufferPassTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_RDFramebufferPassTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  Vector2iTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~Vector2iTypedArray();

  static Vector2iTypedArray constructor();

  Vector2iTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  Vector2iTypedArray (const Vector2iTypedArray& copy_val);
  Vector2iTypedArray& operator= (const Vector2iTypedArray& copy_val);
  static Vector2iTypedArray new0();
  static Vector2iTypedArray py_new0();
  static Vector2iTypedArray new1(Array& from_);
  static Vector2iTypedArray py_new1(Array& from_);
  static Vector2iTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Vector2iTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Vector2iTypedArray new3(PackedByteArray& from_);
  static Vector2iTypedArray py_new3(PackedByteArray& from_);
  static Vector2iTypedArray new4(PackedInt32Array& from_);
  static Vector2iTypedArray py_new4(PackedInt32Array& from_);
  static Vector2iTypedArray new5(PackedInt64Array& from_);
  static Vector2iTypedArray py_new5(PackedInt64Array& from_);
  static Vector2iTypedArray new6(PackedFloat32Array& from_);
  static Vector2iTypedArray py_new6(PackedFloat32Array& from_);
  static Vector2iTypedArray new7(PackedFloat64Array& from_);
  static Vector2iTypedArray py_new7(PackedFloat64Array& from_);
  static Vector2iTypedArray new8(PackedStringArray& from_);
  static Vector2iTypedArray py_new8(PackedStringArray& from_);
  static Vector2iTypedArray new9(PackedVector2Array& from_);
  static Vector2iTypedArray py_new9(PackedVector2Array& from_);
  static Vector2iTypedArray new10(PackedVector3Array& from_);
  static Vector2iTypedArray py_new10(PackedVector3Array& from_);
  static Vector2iTypedArray new11(PackedColorArray& from_);
  static Vector2iTypedArray py_new11(PackedColorArray& from_);

  static Vector2iTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_Vector2iTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_Vector2iTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_Vector2iTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_Vector2iTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_Vector2iTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_Vector2iTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  intTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~intTypedArray();

  static intTypedArray constructor();

  intTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  intTypedArray (const intTypedArray& copy_val);
  intTypedArray& operator= (const intTypedArray& copy_val);
  static intTypedArray new0();
  static intTypedArray py_new0();
  static intTypedArray new1(Array& from_);
  static intTypedArray py_new1(Array& from_);
  static intTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static intTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static intTypedArray new3(PackedByteArray& from_);
  static intTypedArray py_new3(PackedByteArray& from_);
  static intTypedArray new4(PackedInt32Array& from_);
  static intTypedArray py_new4(PackedInt32Array& from_);
  static intTypedArray new5(PackedInt64Array& from_);
  static intTypedArray py_new5(PackedInt64Array& from_);
  static intTypedArray new6(PackedFloat32Array& from_);
  static intTypedArray py_new6(PackedFloat32Array& from_);
  static intTypedArray new7(PackedFloat64Array& from_);
  static intTypedArray py_new7(PackedFloat64Array& from_);
  static intTypedArray new8(PackedStringArray& from_);
  static intTypedArray py_new8(PackedStringArray& from_);
  static intTypedArray new9(PackedVector2Array& from_);
  static intTypedArray py_new9(PackedVector2Array& from_);
  static intTypedArray new10(PackedVector3Array& from_);
  static intTypedArray py_new10(PackedVector3Array& from_);
  static intTypedArray new11(PackedColorArray& from_);
  static intTypedArray py_new11(PackedColorArray& from_);

  static intTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_intTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_intTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_intTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_intTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_intTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_intTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  PhysicsBody3DTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~PhysicsBody3DTypedArray();

  static PhysicsBody3DTypedArray constructor();

  PhysicsBody3DTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  PhysicsBody3DTypedArray (const PhysicsBody3DTypedArray& copy_val);
  PhysicsBody3DTypedArray& operator= (const PhysicsBody3DTypedArray& copy_val);
  static PhysicsBody3DTypedArray new0();
  static PhysicsBody3DTypedArray py_new0();
  static PhysicsBody3DTypedArray new1(Array& from_);
  static PhysicsBody3DTypedArray py_new1(Array& from_);
  static PhysicsBody3DTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static PhysicsBody3DTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static PhysicsBody3DTypedArray new3(PackedByteArray& from_);
  static PhysicsBody3DTypedArray py_new3(PackedByteArray& from_);
  static PhysicsBody3DTypedArray new4(PackedInt32Array& from_);
  static PhysicsBody3DTypedArray py_new4(PackedInt32Array& from_);
  static PhysicsBody3DTypedArray new5(PackedInt64Array& from_);
  static PhysicsBody3DTypedArray py_new5(PackedInt64Array& from_);
  static PhysicsBody3DTypedArray new6(PackedFloat32Array& from_);
  static PhysicsBody3DTypedArray py_new6(PackedFloat32Array& from_);
  static PhysicsBody3DTypedArray new7(PackedFloat64Array& from_);
  static PhysicsBody3DTypedArray py_new7(PackedFloat64Array& from_);
  static PhysicsBody3DTypedArray new8(PackedStringArray& from_);
  static PhysicsBody3DTypedArray py_new8(PackedStringArray& from_);
  static PhysicsBody3DTypedArray new9(PackedVector2Array& from_);
  static PhysicsBody3DTypedArray py_new9(PackedVector2Array& from_);
  static PhysicsBody3DTypedArray new10(PackedVector3Array& from_);
  static PhysicsBody3DTypedArray py_new10(PackedVector3Array& from_);
  static PhysicsBody3DTypedArray new11(PackedColorArray& from_);
  static PhysicsBody3DTypedArray py_new11(PackedColorArray& from_);

  static PhysicsBody3DTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_PhysicsBody3DTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_PhysicsBody3DTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_PhysicsBody3DTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_PhysicsBody3DTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_PhysicsBody3DTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_PhysicsBody3DTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  StringTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~StringTypedArray();

  static StringTypedArray constructor();

  StringTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  StringTypedArray (const StringTypedArray& copy_val);
  StringTypedArray& operator= (const StringTypedArray& copy_val);
  static StringTypedArray new0();
  static StringTypedArray py_new0();
  static StringTypedArray new1(Array& from_);
  static StringTypedArray py_new1(Array& from_);
  static StringTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static StringTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static StringTypedArray new3(PackedByteArray& from_);
  static StringTypedArray py_new3(PackedByteArray& from_);
  static StringTypedArray new4(PackedInt32Array& from_);
  static StringTypedArray py_new4(PackedInt32Array& from_);
  static StringTypedArray new5(PackedInt64Array& from_);
  static StringTypedArray py_new5(PackedInt64Array& from_);
  static StringTypedArray new6(PackedFloat32Array& from_);
  static StringTypedArray py_new6(PackedFloat32Array& from_);
  static StringTypedArray new7(PackedFloat64Array& from_);
  static StringTypedArray py_new7(PackedFloat64Array& from_);
  static StringTypedArray new8(PackedStringArray& from_);
  static StringTypedArray py_new8(PackedStringArray& from_);
  static StringTypedArray new9(PackedVector2Array& from_);
  static StringTypedArray py_new9(PackedVector2Array& from_);
  static StringTypedArray new10(PackedVector3Array& from_);
  static StringTypedArray py_new10(PackedVector3Array& from_);
  static StringTypedArray new11(PackedColorArray& from_);
  static StringTypedArray py_new11(PackedColorArray& from_);

  static StringTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_StringTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_StringTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_StringTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_StringTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_StringTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_StringTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  GLTFNodeTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~GLTFNodeTypedArray();

  static GLTFNodeTypedArray constructor();

  GLTFNodeTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  GLTFNodeTypedArray (const GLTFNodeTypedArray& copy_val);
  GLTFNodeTypedArray& operator= (const GLTFNodeTypedArray& copy_val);
  static GLTFNodeTypedArray new0();
  static GLTFNodeTypedArray py_new0();
  static GLTFNodeTypedArray new1(Array& from_);
  static GLTFNodeTypedArray py_new1(Array& from_);
  static GLTFNodeTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFNodeTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFNodeTypedArray new3(PackedByteArray& from_);
  static GLTFNodeTypedArray py_new3(PackedByteArray& from_);
  static GLTFNodeTypedArray new4(PackedInt32Array& from_);
  static GLTFNodeTypedArray py_new4(PackedInt32Array& from_);
  static GLTFNodeTypedArray new5(PackedInt64Array& from_);
  static GLTFNodeTypedArray py_new5(PackedInt64Array& from_);
  static GLTFNodeTypedArray new6(PackedFloat32Array& from_);
  static GLTFNodeTypedArray py_new6(PackedFloat32Array& from_);
  static GLTFNodeTypedArray new7(PackedFloat64Array& from_);
  static GLTFNodeTypedArray py_new7(PackedFloat64Array& from_);
  static GLTFNodeTypedArray new8(PackedStringArray& from_);
  static GLTFNodeTypedArray py_new8(PackedStringArray& from_);
  static GLTFNodeTypedArray new9(PackedVector2Array& from_);
  static GLTFNodeTypedArray py_new9(PackedVector2Array& from_);
  static GLTFNodeTypedArray new10(PackedVector3Array& from_);
  static GLTFNodeTypedArray py_new10(PackedVector3Array& from_);
  static GLTFNodeTypedArray new11(PackedColorArray& from_);
  static GLTFNodeTypedArray py_new11(PackedColorArray& from_);

  static GLTFNodeTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_GLTFNodeTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_GLTFNodeTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_GLTFNodeTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_GLTFNodeTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_GLTFNodeTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_GLTFNodeTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  Rect2TypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~Rect2TypedArray();

  static Rect2TypedArray constructor();

  Rect2TypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  Rect2TypedArray (const Rect2TypedArray& copy_val);
  Rect2TypedArray& operator= (const Rect2TypedArray& copy_val);
  static Rect2TypedArray new0();
  static Rect2TypedArray py_new0();
  static Rect2TypedArray new1(Array& from_);
  static Rect2TypedArray py_new1(Array& from_);
  static Rect2TypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Rect2TypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Rect2TypedArray new3(PackedByteArray& from_);
  static Rect2TypedArray py_new3(PackedByteArray& from_);
  static Rect2TypedArray new4(PackedInt32Array& from_);
  static Rect2TypedArray py_new4(PackedInt32Array& from_);
  static Rect2TypedArray new5(PackedInt64Array& from_);
  static Rect2TypedArray py_new5(PackedInt64Array& from_);
  static Rect2TypedArray new6(PackedFloat32Array& from_);
  static Rect2TypedArray py_new6(PackedFloat32Array& from_);
  static Rect2TypedArray new7(PackedFloat64Array& from_);
  static Rect2TypedArray py_new7(PackedFloat64Array& from_);
  static Rect2TypedArray new8(PackedStringArray& from_);
  static Rect2TypedArray py_new8(PackedStringArray& from_);
  static Rect2TypedArray new9(PackedVector2Array& from_);
  static Rect2TypedArray py_new9(PackedVector2Array& from_);
  static Rect2TypedArray new10(PackedVector3Array& from_);
  static Rect2TypedArray py_new10(PackedVector3Array& from_);
  static Rect2TypedArray new11(PackedColorArray& from_);
  static Rect2TypedArray py_new11(PackedColorArray& from_);

  static Rect2TypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_Rect2TypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_Rect2TypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_Rect2TypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_Rect2TypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_Rect2TypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_Rect2TypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  FontTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~FontTypedArray();

  static FontTypedArray constructor();

  FontTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  FontTypedArray (const FontTypedArray& copy_val);
  FontTypedArray& operator= (const FontTypedArray& copy_val);
  static FontTypedArray new0();
  static FontTypedArray py_new0();
  static FontTypedArray new1(Array& from_);
  static FontTypedArray py_new1(Array& from_);
  static FontTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static FontTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static FontTypedArray new3(PackedByteArray& from_);
  static FontTypedArray py_new3(PackedByteArray& from_);
  static FontTypedArray new4(PackedInt32Array& from_);
  static FontTypedArray py_new4(PackedInt32Array& from_);
  static FontTypedArray new5(PackedInt64Array& from_);
  static FontTypedArray py_new5(PackedInt64Array& from_);
  static FontTypedArray new6(PackedFloat32Array& from_);
  static FontTypedArray py_new6(PackedFloat32Array& from_);
  static FontTypedArray new7(PackedFloat64Array& from_);
  static FontTypedArray py_new7(PackedFloat64Array& from_);
  static FontTypedArray new8(PackedStringArray& from_);
  static FontTypedArray py_new8(PackedStringArray& from_);
  static FontTypedArray new9(PackedVector2Array& from_);
  static FontTypedArray py_new9(PackedVector2Array& from_);
  static FontTypedArray new10(PackedVector3Array& from_);
  static FontTypedArray py_new10(PackedVector3Array& from_);
  static FontTypedArray new11(PackedColorArray& from_);
  static FontTypedArray py_new11(PackedColorArray& from_);

  static FontTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_FontTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_FontTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_FontTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_FontTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_FontTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_FontTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  GLTFSkinTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~GLTFSkinTypedArray();

  static GLTFSkinTypedArray constructor();

  GLTFSkinTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  GLTFSkinTypedArray (const GLTFSkinTypedArray& copy_val);
  GLTFSkinTypedArray& operator= (const GLTFSkinTypedArray& copy_val);
  static GLTFSkinTypedArray new0();
  static GLTFSkinTypedArray py_new0();
  static GLTFSkinTypedArray new1(Array& from_);
  static GLTFSkinTypedArray py_new1(Array& from_);
  static GLTFSkinTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFSkinTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFSkinTypedArray new3(PackedByteArray& from_);
  static GLTFSkinTypedArray py_new3(PackedByteArray& from_);
  static GLTFSkinTypedArray new4(PackedInt32Array& from_);
  static GLTFSkinTypedArray py_new4(PackedInt32Array& from_);
  static GLTFSkinTypedArray new5(PackedInt64Array& from_);
  static GLTFSkinTypedArray py_new5(PackedInt64Array& from_);
  static GLTFSkinTypedArray new6(PackedFloat32Array& from_);
  static GLTFSkinTypedArray py_new6(PackedFloat32Array& from_);
  static GLTFSkinTypedArray new7(PackedFloat64Array& from_);
  static GLTFSkinTypedArray py_new7(PackedFloat64Array& from_);
  static GLTFSkinTypedArray new8(PackedStringArray& from_);
  static GLTFSkinTypedArray py_new8(PackedStringArray& from_);
  static GLTFSkinTypedArray new9(PackedVector2Array& from_);
  static GLTFSkinTypedArray py_new9(PackedVector2Array& from_);
  static GLTFSkinTypedArray new10(PackedVector3Array& from_);
  static GLTFSkinTypedArray py_new10(PackedVector3Array& from_);
  static GLTFSkinTypedArray new11(PackedColorArray& from_);
  static GLTFSkinTypedArray py_new11(PackedColorArray& from_);

  static GLTFSkinTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_GLTFSkinTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_GLTFSkinTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_GLTFSkinTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_GLTFSkinTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_GLTFSkinTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_GLTFSkinTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  PackedVector2ArrayTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~PackedVector2ArrayTypedArray();

  static PackedVector2ArrayTypedArray constructor();

  PackedVector2ArrayTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  PackedVector2ArrayTypedArray (const PackedVector2ArrayTypedArray& copy_val);
  PackedVector2ArrayTypedArray& operator= (const PackedVector2ArrayTypedArray& copy_val);
  static PackedVector2ArrayTypedArray new0();
  static PackedVector2ArrayTypedArray py_new0();
  static PackedVector2ArrayTypedArray new1(Array& from_);
  static PackedVector2ArrayTypedArray py_new1(Array& from_);
  static PackedVector2ArrayTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static PackedVector2ArrayTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static PackedVector2ArrayTypedArray new3(PackedByteArray& from_);
  static PackedVector2ArrayTypedArray py_new3(PackedByteArray& from_);
  static PackedVector2ArrayTypedArray new4(PackedInt32Array& from_);
  static PackedVector2ArrayTypedArray py_new4(PackedInt32Array& from_);
  static PackedVector2ArrayTypedArray new5(PackedInt64Array& from_);
  static PackedVector2ArrayTypedArray py_new5(PackedInt64Array& from_);
  static PackedVector2ArrayTypedArray new6(PackedFloat32Array& from_);
  static PackedVector2ArrayTypedArray py_new6(PackedFloat32Array& from_);
  static PackedVector2ArrayTypedArray new7(PackedFloat64Array& from_);
  static PackedVector2ArrayTypedArray py_new7(PackedFloat64Array& from_);
  static PackedVector2ArrayTypedArray new8(PackedStringArray& from_);
  static PackedVector2ArrayTypedArray py_new8(PackedStringArray& from_);
  static PackedVector2ArrayTypedArray new9(PackedVector2Array& from_);
  static PackedVector2ArrayTypedArray py_new9(PackedVector2Array& from_);
  static PackedVector2ArrayTypedArray new10(PackedVector3Array& from_);
  static PackedVector2ArrayTypedArray py_new10(PackedVector3Array& from_);
  static PackedVector2ArrayTypedArray new11(PackedColorArray& from_);
  static PackedVector2ArrayTypedArray py_new11(PackedColorArray& from_);

  static PackedVector2ArrayTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_PackedVector2ArrayTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_PackedVector2ArrayTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_PackedVector2ArrayTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_PackedVector2ArrayTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_PackedVector2ArrayTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_PackedVector2ArrayTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  PhysicsBody2DTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~PhysicsBody2DTypedArray();

  static PhysicsBody2DTypedArray constructor();

  PhysicsBody2DTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  PhysicsBody2DTypedArray (const PhysicsBody2DTypedArray& copy_val);
  PhysicsBody2DTypedArray& operator= (const PhysicsBody2DTypedArray& copy_val);
  static PhysicsBody2DTypedArray new0();
  static PhysicsBody2DTypedArray py_new0();
  static PhysicsBody2DTypedArray new1(Array& from_);
  static PhysicsBody2DTypedArray py_new1(Array& from_);
  static PhysicsBody2DTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static PhysicsBody2DTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static PhysicsBody2DTypedArray new3(PackedByteArray& from_);
  static PhysicsBody2DTypedArray py_new3(PackedByteArray& from_);
  static PhysicsBody2DTypedArray new4(PackedInt32Array& from_);
  static PhysicsBody2DTypedArray py_new4(PackedInt32Array& from_);
  static PhysicsBody2DTypedArray new5(PackedInt64Array& from_);
  static PhysicsBody2DTypedArray py_new5(PackedInt64Array& from_);
  static PhysicsBody2DTypedArray new6(PackedFloat32Array& from_);
  static PhysicsBody2DTypedArray py_new6(PackedFloat32Array& from_);
  static PhysicsBody2DTypedArray new7(PackedFloat64Array& from_);
  static PhysicsBody2DTypedArray py_new7(PackedFloat64Array& from_);
  static PhysicsBody2DTypedArray new8(PackedStringArray& from_);
  static PhysicsBody2DTypedArray py_new8(PackedStringArray& from_);
  static PhysicsBody2DTypedArray new9(PackedVector2Array& from_);
  static PhysicsBody2DTypedArray py_new9(PackedVector2Array& from_);
  static PhysicsBody2DTypedArray new10(PackedVector3Array& from_);
  static PhysicsBody2DTypedArray py_new10(PackedVector3Array& from_);
  static PhysicsBody2DTypedArray new11(PackedColorArray& from_);
  static PhysicsBody2DTypedArray py_new11(PackedColorArray& from_);

  static PhysicsBody2DTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_PhysicsBody2DTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_PhysicsBody2DTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_PhysicsBody2DTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_PhysicsBody2DTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_PhysicsBody2DTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_PhysicsBody2DTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  MeshTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~MeshTypedArray();

  static MeshTypedArray constructor();

  MeshTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  MeshTypedArray (const MeshTypedArray& copy_val);
  MeshTypedArray& operator= (const MeshTypedArray& copy_val);
  static MeshTypedArray new0();
  static MeshTypedArray py_new0();
  static MeshTypedArray new1(Array& from_);
  static MeshTypedArray py_new1(Array& from_);
  static MeshTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static MeshTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static MeshTypedArray new3(PackedByteArray& from_);
  static MeshTypedArray py_new3(PackedByteArray& from_);
  static MeshTypedArray new4(PackedInt32Array& from_);
  static MeshTypedArray py_new4(PackedInt32Array& from_);
  static MeshTypedArray new5(PackedInt64Array& from_);
  static MeshTypedArray py_new5(PackedInt64Array& from_);
  static MeshTypedArray new6(PackedFloat32Array& from_);
  static MeshTypedArray py_new6(PackedFloat32Array& from_);
  static MeshTypedArray new7(PackedFloat64Array& from_);
  static MeshTypedArray py_new7(PackedFloat64Array& from_);
  static MeshTypedArray new8(PackedStringArray& from_);
  static MeshTypedArray py_new8(PackedStringArray& from_);
  static MeshTypedArray new9(PackedVector2Array& from_);
  static MeshTypedArray py_new9(PackedVector2Array& from_);
  static MeshTypedArray new10(PackedVector3Array& from_);
  static MeshTypedArray py_new10(PackedVector3Array& from_);
  static MeshTypedArray new11(PackedColorArray& from_);
  static MeshTypedArray py_new11(PackedColorArray& from_);

  static MeshTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_MeshTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_MeshTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_MeshTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_MeshTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_MeshTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_MeshTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  GLTFAccessorTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~GLTFAccessorTypedArray();

  static GLTFAccessorTypedArray constructor();

  GLTFAccessorTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  GLTFAccessorTypedArray (const GLTFAccessorTypedArray& copy_val);
  GLTFAccessorTypedArray& operator= (const GLTFAccessorTypedArray& copy_val);
  static GLTFAccessorTypedArray new0();
  static GLTFAccessorTypedArray py_new0();
  static GLTFAccessorTypedArray new1(Array& from_);
  static GLTFAccessorTypedArray py_new1(Array& from_);
  static GLTFAccessorTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFAccessorTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFAccessorTypedArray new3(PackedByteArray& from_);
  static GLTFAccessorTypedArray py_new3(PackedByteArray& from_);
  static GLTFAccessorTypedArray new4(PackedInt32Array& from_);
  static GLTFAccessorTypedArray py_new4(PackedInt32Array& from_);
  static GLTFAccessorTypedArray new5(PackedInt64Array& from_);
  static GLTFAccessorTypedArray py_new5(PackedInt64Array& from_);
  static GLTFAccessorTypedArray new6(PackedFloat32Array& from_);
  static GLTFAccessorTypedArray py_new6(PackedFloat32Array& from_);
  static GLTFAccessorTypedArray new7(PackedFloat64Array& from_);
  static GLTFAccessorTypedArray py_new7(PackedFloat64Array& from_);
  static GLTFAccessorTypedArray new8(PackedStringArray& from_);
  static GLTFAccessorTypedArray py_new8(PackedStringArray& from_);
  static GLTFAccessorTypedArray new9(PackedVector2Array& from_);
  static GLTFAccessorTypedArray py_new9(PackedVector2Array& from_);
  static GLTFAccessorTypedArray new10(PackedVector3Array& from_);
  static GLTFAccessorTypedArray py_new10(PackedVector3Array& from_);
  static GLTFAccessorTypedArray new11(PackedColorArray& from_);
  static GLTFAccessorTypedArray py_new11(PackedColorArray& from_);

  static GLTFAccessorTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_GLTFAccessorTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_GLTFAccessorTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_GLTFAccessorTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_GLTFAccessorTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_GLTFAccessorTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_GLTFAccessorTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  RDUniformTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~RDUniformTypedArray();

  static RDUniformTypedArray constructor();

  RDUniformTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  RDUniformTypedArray (const RDUniformTypedArray& copy_val);
  RDUniformTypedArray& operator= (const RDUniformTypedArray& copy_val);
  static RDUniformTypedArray new0();
  static RDUniformTypedArray py_new0();
  static RDUniformTypedArray new1(Array& from_);
  static RDUniformTypedArray py_new1(Array& from_);
  static RDUniformTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RDUniformTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RDUniformTypedArray new3(PackedByteArray& from_);
  static RDUniformTypedArray py_new3(PackedByteArray& from_);
  static RDUniformTypedArray new4(PackedInt32Array& from_);
  static RDUniformTypedArray py_new4(PackedInt32Array& from_);
  static RDUniformTypedArray new5(PackedInt64Array& from_);
  static RDUniformTypedArray py_new5(PackedInt64Array& from_);
  static RDUniformTypedArray new6(PackedFloat32Array& from_);
  static RDUniformTypedArray py_new6(PackedFloat32Array& from_);
  static RDUniformTypedArray new7(PackedFloat64Array& from_);
  static RDUniformTypedArray py_new7(PackedFloat64Array& from_);
  static RDUniformTypedArray new8(PackedStringArray& from_);
  static RDUniformTypedArray py_new8(PackedStringArray& from_);
  static RDUniformTypedArray new9(PackedVector2Array& from_);
  static RDUniformTypedArray py_new9(PackedVector2Array& from_);
  static RDUniformTypedArray new10(PackedVector3Array& from_);
  static RDUniformTypedArray py_new10(PackedVector3Array& from_);
  static RDUniformTypedArray new11(PackedColorArray& from_);
  static RDUniformTypedArray py_new11(PackedColorArray& from_);

  static RDUniformTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_RDUniformTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_RDUniformTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_RDUniformTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_RDUniformTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_RDUniformTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_RDUniformTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  RegExMatchTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~RegExMatchTypedArray();

  static RegExMatchTypedArray constructor();

  RegExMatchTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  RegExMatchTypedArray (const RegExMatchTypedArray& copy_val);
  RegExMatchTypedArray& operator= (const RegExMatchTypedArray& copy_val);
  static RegExMatchTypedArray new0();
  static RegExMatchTypedArray py_new0();
  static RegExMatchTypedArray new1(Array& from_);
  static RegExMatchTypedArray py_new1(Array& from_);
  static RegExMatchTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RegExMatchTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RegExMatchTypedArray new3(PackedByteArray& from_);
  static RegExMatchTypedArray py_new3(PackedByteArray& from_);
  static RegExMatchTypedArray new4(PackedInt32Array& from_);
  static RegExMatchTypedArray py_new4(PackedInt32Array& from_);
  static RegExMatchTypedArray new5(PackedInt64Array& from_);
  static RegExMatchTypedArray py_new5(PackedInt64Array& from_);
  static RegExMatchTypedArray new6(PackedFloat32Array& from_);
  static RegExMatchTypedArray py_new6(PackedFloat32Array& from_);
  static RegExMatchTypedArray new7(PackedFloat64Array& from_);
  static RegExMatchTypedArray py_new7(PackedFloat64Array& from_);
  static RegExMatchTypedArray new8(PackedStringArray& from_);
  static RegExMatchTypedArray py_new8(PackedStringArray& from_);
  static RegExMatchTypedArray new9(PackedVector2Array& from_);
  static RegExMatchTypedArray py_new9(PackedVector2Array& from_);
  static RegExMatchTypedArray new10(PackedVector3Array& from_);
  static RegExMatchTypedArray py_new10(PackedVector3Array& from_);
  static RegExMatchTypedArray new11(PackedColorArray& from_);
  static RegExMatchTypedArray py_new11(PackedColorArray& from_);

  static RegExMatchTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_RegExMatchTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_RegExMatchTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_RegExMatchTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_RegExMatchTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_RegExMatchTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_RegExMatchTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  NodePathTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~NodePathTypedArray();

  static NodePathTypedArray constructor();

  NodePathTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  NodePathTypedArray (const NodePathTypedArray& copy_val);
  NodePathTypedArray& operator= (const NodePathTypedArray& copy_val);
  static NodePathTypedArray new0();
  static NodePathTypedArray py_new0();
  static NodePathTypedArray new1(Array& from_);
  static NodePathTypedArray py_new1(Array& from_);
  static NodePathTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static NodePathTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static NodePathTypedArray new3(PackedByteArray& from_);
  static NodePathTypedArray py_new3(PackedByteArray& from_);
  static NodePathTypedArray new4(PackedInt32Array& from_);
  static NodePathTypedArray py_new4(PackedInt32Array& from_);
  static NodePathTypedArray new5(PackedInt64Array& from_);
  static NodePathTypedArray py_new5(PackedInt64Array& from_);
  static NodePathTypedArray new6(PackedFloat32Array& from_);
  static NodePathTypedArray py_new6(PackedFloat32Array& from_);
  static NodePathTypedArray new7(PackedFloat64Array& from_);
  static NodePathTypedArray py_new7(PackedFloat64Array& from_);
  static NodePathTypedArray new8(PackedStringArray& from_);
  static NodePathTypedArray py_new8(PackedStringArray& from_);
  static NodePathTypedArray new9(PackedVector2Array& from_);
  static NodePathTypedArray py_new9(PackedVector2Array& from_);
  static NodePathTypedArray new10(PackedVector3Array& from_);
  static NodePathTypedArray py_new10(PackedVector3Array& from_);
  static NodePathTypedArray new11(PackedColorArray& from_);
  static NodePathTypedArray py_new11(PackedColorArray& from_);

  static NodePathTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_NodePathTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_NodePathTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_NodePathTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_NodePathTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_NodePathTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_NodePathTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  GLTFBufferViewTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~GLTFBufferViewTypedArray();

  static GLTFBufferViewTypedArray constructor();

  GLTFBufferViewTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  GLTFBufferViewTypedArray (const GLTFBufferViewTypedArray& copy_val);
  GLTFBufferViewTypedArray& operator= (const GLTFBufferViewTypedArray& copy_val);
  static GLTFBufferViewTypedArray new0();
  static GLTFBufferViewTypedArray py_new0();
  static GLTFBufferViewTypedArray new1(Array& from_);
  static GLTFBufferViewTypedArray py_new1(Array& from_);
  static GLTFBufferViewTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFBufferViewTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFBufferViewTypedArray new3(PackedByteArray& from_);
  static GLTFBufferViewTypedArray py_new3(PackedByteArray& from_);
  static GLTFBufferViewTypedArray new4(PackedInt32Array& from_);
  static GLTFBufferViewTypedArray py_new4(PackedInt32Array& from_);
  static GLTFBufferViewTypedArray new5(PackedInt64Array& from_);
  static GLTFBufferViewTypedArray py_new5(PackedInt64Array& from_);
  static GLTFBufferViewTypedArray new6(PackedFloat32Array& from_);
  static GLTFBufferViewTypedArray py_new6(PackedFloat32Array& from_);
  static GLTFBufferViewTypedArray new7(PackedFloat64Array& from_);
  static GLTFBufferViewTypedArray py_new7(PackedFloat64Array& from_);
  static GLTFBufferViewTypedArray new8(PackedStringArray& from_);
  static GLTFBufferViewTypedArray py_new8(PackedStringArray& from_);
  static GLTFBufferViewTypedArray new9(PackedVector2Array& from_);
  static GLTFBufferViewTypedArray py_new9(PackedVector2Array& from_);
  static GLTFBufferViewTypedArray new10(PackedVector3Array& from_);
  static GLTFBufferViewTypedArray py_new10(PackedVector3Array& from_);
  static GLTFBufferViewTypedArray new11(PackedColorArray& from_);
  static GLTFBufferViewTypedArray py_new11(PackedColorArray& from_);

  static GLTFBufferViewTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_GLTFBufferViewTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_GLTFBufferViewTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_GLTFBufferViewTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_GLTFBufferViewTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_GLTFBufferViewTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_GLTFBufferViewTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  ScriptTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~ScriptTypedArray();

  static ScriptTypedArray constructor();

  ScriptTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  ScriptTypedArray (const ScriptTypedArray& copy_val);
  ScriptTypedArray& operator= (const ScriptTypedArray& copy_val);
  static ScriptTypedArray new0();
  static ScriptTypedArray py_new0();
  static ScriptTypedArray new1(Array& from_);
  static ScriptTypedArray py_new1(Array& from_);
  static ScriptTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static ScriptTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static ScriptTypedArray new3(PackedByteArray& from_);
  static ScriptTypedArray py_new3(PackedByteArray& from_);
  static ScriptTypedArray new4(PackedInt32Array& from_);
  static ScriptTypedArray py_new4(PackedInt32Array& from_);
  static ScriptTypedArray new5(PackedInt64Array& from_);
  static ScriptTypedArray py_new5(PackedInt64Array& from_);
  static ScriptTypedArray new6(PackedFloat32Array& from_);
  static ScriptTypedArray py_new6(PackedFloat32Array& from_);
  static ScriptTypedArray new7(PackedFloat64Array& from_);
  static ScriptTypedArray py_new7(PackedFloat64Array& from_);
  static ScriptTypedArray new8(PackedStringArray& from_);
  static ScriptTypedArray py_new8(PackedStringArray& from_);
  static ScriptTypedArray new9(PackedVector2Array& from_);
  static ScriptTypedArray py_new9(PackedVector2Array& from_);
  static ScriptTypedArray new10(PackedVector3Array& from_);
  static ScriptTypedArray py_new10(PackedVector3Array& from_);
  static ScriptTypedArray new11(PackedColorArray& from_);
  static ScriptTypedArray py_new11(PackedColorArray& from_);

  static ScriptTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_ScriptTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_ScriptTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_ScriptTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_ScriptTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_ScriptTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_ScriptTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  StringNameTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~StringNameTypedArray();

  static StringNameTypedArray constructor();

  StringNameTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  StringNameTypedArray (const StringNameTypedArray& copy_val);
  StringNameTypedArray& operator= (const StringNameTypedArray& copy_val);
  static StringNameTypedArray new0();
  static StringNameTypedArray py_new0();
  static StringNameTypedArray new1(Array& from_);
  static StringNameTypedArray py_new1(Array& from_);
  static StringNameTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static StringNameTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static StringNameTypedArray new3(PackedByteArray& from_);
  static StringNameTypedArray py_new3(PackedByteArray& from_);
  static StringNameTypedArray new4(PackedInt32Array& from_);
  static StringNameTypedArray py_new4(PackedInt32Array& from_);
  static StringNameTypedArray new5(PackedInt64Array& from_);
  static StringNameTypedArray py_new5(PackedInt64Array& from_);
  static StringNameTypedArray new6(PackedFloat32Array& from_);
  static StringNameTypedArray py_new6(PackedFloat32Array& from_);
  static StringNameTypedArray new7(PackedFloat64Array& from_);
  static StringNameTypedArray py_new7(PackedFloat64Array& from_);
  static StringNameTypedArray new8(PackedStringArray& from_);
  static StringNameTypedArray py_new8(PackedStringArray& from_);
  static StringNameTypedArray new9(PackedVector2Array& from_);
  static StringNameTypedArray py_new9(PackedVector2Array& from_);
  static StringNameTypedArray new10(PackedVector3Array& from_);
  static StringNameTypedArray py_new10(PackedVector3Array& from_);
  static StringNameTypedArray new11(PackedColorArray& from_);
  static StringNameTypedArray py_new11(PackedColorArray& from_);

  static StringNameTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_StringNameTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_StringNameTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_StringNameTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_StringNameTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_StringNameTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_StringNameTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  DictionaryTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~DictionaryTypedArray();

  static DictionaryTypedArray constructor();

  DictionaryTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  DictionaryTypedArray (const DictionaryTypedArray& copy_val);
  DictionaryTypedArray& operator= (const DictionaryTypedArray& copy_val);
  static DictionaryTypedArray new0();
  static DictionaryTypedArray py_new0();
  static DictionaryTypedArray new1(Array& from_);
  static DictionaryTypedArray py_new1(Array& from_);
  static DictionaryTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static DictionaryTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static DictionaryTypedArray new3(PackedByteArray& from_);
  static DictionaryTypedArray py_new3(PackedByteArray& from_);
  static DictionaryTypedArray new4(PackedInt32Array& from_);
  static DictionaryTypedArray py_new4(PackedInt32Array& from_);
  static DictionaryTypedArray new5(PackedInt64Array& from_);
  static DictionaryTypedArray py_new5(PackedInt64Array& from_);
  static DictionaryTypedArray new6(PackedFloat32Array& from_);
  static DictionaryTypedArray py_new6(PackedFloat32Array& from_);
  static DictionaryTypedArray new7(PackedFloat64Array& from_);
  static DictionaryTypedArray py_new7(PackedFloat64Array& from_);
  static DictionaryTypedArray new8(PackedStringArray& from_);
  static DictionaryTypedArray py_new8(PackedStringArray& from_);
  static DictionaryTypedArray new9(PackedVector2Array& from_);
  static DictionaryTypedArray py_new9(PackedVector2Array& from_);
  static DictionaryTypedArray new10(PackedVector3Array& from_);
  static DictionaryTypedArray py_new10(PackedVector3Array& from_);
  static DictionaryTypedArray new11(PackedColorArray& from_);
  static DictionaryTypedArray py_new11(PackedColorArray& from_);

  static DictionaryTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_DictionaryTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_DictionaryTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_DictionaryTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_DictionaryTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_DictionaryTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_DictionaryTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  GLTFSkeletonTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~GLTFSkeletonTypedArray();

  static GLTFSkeletonTypedArray constructor();

  GLTFSkeletonTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  GLTFSkeletonTypedArray (const GLTFSkeletonTypedArray& copy_val);
  GLTFSkeletonTypedArray& operator= (const GLTFSkeletonTypedArray& copy_val);
  static GLTFSkeletonTypedArray new0();
  static GLTFSkeletonTypedArray py_new0();
  static GLTFSkeletonTypedArray new1(Array& from_);
  static GLTFSkeletonTypedArray py_new1(Array& from_);
  static GLTFSkeletonTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFSkeletonTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFSkeletonTypedArray new3(PackedByteArray& from_);
  static GLTFSkeletonTypedArray py_new3(PackedByteArray& from_);
  static GLTFSkeletonTypedArray new4(PackedInt32Array& from_);
  static GLTFSkeletonTypedArray py_new4(PackedInt32Array& from_);
  static GLTFSkeletonTypedArray new5(PackedInt64Array& from_);
  static GLTFSkeletonTypedArray py_new5(PackedInt64Array& from_);
  static GLTFSkeletonTypedArray new6(PackedFloat32Array& from_);
  static GLTFSkeletonTypedArray py_new6(PackedFloat32Array& from_);
  static GLTFSkeletonTypedArray new7(PackedFloat64Array& from_);
  static GLTFSkeletonTypedArray py_new7(PackedFloat64Array& from_);
  static GLTFSkeletonTypedArray new8(PackedStringArray& from_);
  static GLTFSkeletonTypedArray py_new8(PackedStringArray& from_);
  static GLTFSkeletonTypedArray new9(PackedVector2Array& from_);
  static GLTFSkeletonTypedArray py_new9(PackedVector2Array& from_);
  static GLTFSkeletonTypedArray new10(PackedVector3Array& from_);
  static GLTFSkeletonTypedArray py_new10(PackedVector3Array& from_);
  static GLTFSkeletonTypedArray new11(PackedColorArray& from_);
  static GLTFSkeletonTypedArray py_new11(PackedColorArray& from_);

  static GLTFSkeletonTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_GLTFSkeletonTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_GLTFSkeletonTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_GLTFSkeletonTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_GLTFSkeletonTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_GLTFSkeletonTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_GLTFSkeletonTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  GLTFTextureTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~GLTFTextureTypedArray();

  static GLTFTextureTypedArray constructor();

  GLTFTextureTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  GLTFTextureTypedArray (const GLTFTextureTypedArray& copy_val);
  GLTFTextureTypedArray& operator= (const GLTFTextureTypedArray& copy_val);
  static GLTFTextureTypedArray new0();
  static GLTFTextureTypedArray py_new0();
  static GLTFTextureTypedArray new1(Array& from_);
  static GLTFTextureTypedArray py_new1(Array& from_);
  static GLTFTextureTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFTextureTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static GLTFTextureTypedArray new3(PackedByteArray& from_);
  static GLTFTextureTypedArray py_new3(PackedByteArray& from_);
  static GLTFTextureTypedArray new4(PackedInt32Array& from_);
  static GLTFTextureTypedArray py_new4(PackedInt32Array& from_);
  static GLTFTextureTypedArray new5(PackedInt64Array& from_);
  static GLTFTextureTypedArray py_new5(PackedInt64Array& from_);
  static GLTFTextureTypedArray new6(PackedFloat32Array& from_);
  static GLTFTextureTypedArray py_new6(PackedFloat32Array& from_);
  static GLTFTextureTypedArray new7(PackedFloat64Array& from_);
  static GLTFTextureTypedArray py_new7(PackedFloat64Array& from_);
  static GLTFTextureTypedArray new8(PackedStringArray& from_);
  static GLTFTextureTypedArray py_new8(PackedStringArray& from_);
  static GLTFTextureTypedArray new9(PackedVector2Array& from_);
  static GLTFTextureTypedArray py_new9(PackedVector2Array& from_);
  static GLTFTextureTypedArray new10(PackedVector3Array& from_);
  static GLTFTextureTypedArray py_new10(PackedVector3Array& from_);
  static GLTFTextureTypedArray new11(PackedColorArray& from_);
  static GLTFTextureTypedArray py_new11(PackedColorArray& from_);

  static GLTFTextureTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_GLTFTextureTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_GLTFTextureTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_GLTFTextureTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_GLTFTextureTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_GLTFTextureTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_GLTFTextureTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  Texture2DTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~Texture2DTypedArray();

  static Texture2DTypedArray constructor();

  Texture2DTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  Texture2DTypedArray (const Texture2DTypedArray& copy_val);
  Texture2DTypedArray& operator= (const Texture2DTypedArray& copy_val);
  static Texture2DTypedArray new0();
  static Texture2DTypedArray py_new0();
  static Texture2DTypedArray new1(Array& from_);
  static Texture2DTypedArray py_new1(Array& from_);
  static Texture2DTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Texture2DTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static Texture2DTypedArray new3(PackedByteArray& from_);
  static Texture2DTypedArray py_new3(PackedByteArray& from_);
  static Texture2DTypedArray new4(PackedInt32Array& from_);
  static Texture2DTypedArray py_new4(PackedInt32Array& from_);
  static Texture2DTypedArray new5(PackedInt64Array& from_);
  static Texture2DTypedArray py_new5(PackedInt64Array& from_);
  static Texture2DTypedArray new6(PackedFloat32Array& from_);
  static Texture2DTypedArray py_new6(PackedFloat32Array& from_);
  static Texture2DTypedArray new7(PackedFloat64Array& from_);
  static Texture2DTypedArray py_new7(PackedFloat64Array& from_);
  static Texture2DTypedArray new8(PackedStringArray& from_);
  static Texture2DTypedArray py_new8(PackedStringArray& from_);
  static Texture2DTypedArray new9(PackedVector2Array& from_);
  static Texture2DTypedArray py_new9(PackedVector2Array& from_);
  static Texture2DTypedArray new10(PackedVector3Array& from_);
  static Texture2DTypedArray py_new10(PackedVector3Array& from_);
  static Texture2DTypedArray new11(PackedColorArray& from_);
  static Texture2DTypedArray py_new11(PackedColorArray& from_);

  static Texture2DTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_Texture2DTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_Texture2DTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_Texture2DTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_Texture2DTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_Texture2DTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_Texture2DTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  RIDTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~RIDTypedArray();

  static RIDTypedArray constructor();

  RIDTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  RIDTypedArray (const RIDTypedArray& copy_val);
  RIDTypedArray& operator= (const RIDTypedArray& copy_val);
  static RIDTypedArray new0();
  static RIDTypedArray py_new0();
  static RIDTypedArray new1(Array& from_);
  static RIDTypedArray py_new1(Array& from_);
  static RIDTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RIDTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static RIDTypedArray new3(PackedByteArray& from_);
  static RIDTypedArray py_new3(PackedByteArray& from_);
  static RIDTypedArray new4(PackedInt32Array& from_);
  static RIDTypedArray py_new4(PackedInt32Array& from_);
  static RIDTypedArray new5(PackedInt64Array& from_);
  static RIDTypedArray py_new5(PackedInt64Array& from_);
  static RIDTypedArray new6(PackedFloat32Array& from_);
  static RIDTypedArray py_new6(PackedFloat32Array& from_);
  static RIDTypedArray new7(PackedFloat64Array& from_);
  static RIDTypedArray py_new7(PackedFloat64Array& from_);
  static RIDTypedArray new8(PackedStringArray& from_);
  static RIDTypedArray py_new8(PackedStringArray& from_);
  static RIDTypedArray new9(PackedVector2Array& from_);
  static RIDTypedArray py_new9(PackedVector2Array& from_);
  static RIDTypedArray new10(PackedVector3Array& from_);
  static RIDTypedArray py_new10(PackedVector3Array& from_);
  static RIDTypedArray new11(PackedColorArray& from_);
  static RIDTypedArray py_new11(PackedColorArray& from_);

  static RIDTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_RIDTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_RIDTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_RIDTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_RIDTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_RIDTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_RIDTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};

class LIBRARY_API  CameraFeedTypedArray:public VariantTypeWrapper{
   public:
void   _py_destroy();
  ~CameraFeedTypedArray();

  static CameraFeedTypedArray constructor();

  CameraFeedTypedArray (){godot_owner = nullptr; shouldBeDeleted=false;};
  CameraFeedTypedArray (const CameraFeedTypedArray& copy_val);
  CameraFeedTypedArray& operator= (const CameraFeedTypedArray& copy_val);
  static CameraFeedTypedArray new0();
  static CameraFeedTypedArray py_new0();
  static CameraFeedTypedArray new1(Array& from_);
  static CameraFeedTypedArray py_new1(Array& from_);
  static CameraFeedTypedArray new2(Array& base, long long type, StringName& class_name, Variant& script);
  static CameraFeedTypedArray py_new2(Array& base, long long type, StringName& class_name, Variant& script);
  static CameraFeedTypedArray new3(PackedByteArray& from_);
  static CameraFeedTypedArray py_new3(PackedByteArray& from_);
  static CameraFeedTypedArray new4(PackedInt32Array& from_);
  static CameraFeedTypedArray py_new4(PackedInt32Array& from_);
  static CameraFeedTypedArray new5(PackedInt64Array& from_);
  static CameraFeedTypedArray py_new5(PackedInt64Array& from_);
  static CameraFeedTypedArray new6(PackedFloat32Array& from_);
  static CameraFeedTypedArray py_new6(PackedFloat32Array& from_);
  static CameraFeedTypedArray new7(PackedFloat64Array& from_);
  static CameraFeedTypedArray py_new7(PackedFloat64Array& from_);
  static CameraFeedTypedArray new8(PackedStringArray& from_);
  static CameraFeedTypedArray py_new8(PackedStringArray& from_);
  static CameraFeedTypedArray new9(PackedVector2Array& from_);
  static CameraFeedTypedArray py_new9(PackedVector2Array& from_);
  static CameraFeedTypedArray new10(PackedVector3Array& from_);
  static CameraFeedTypedArray py_new10(PackedVector3Array& from_);
  static CameraFeedTypedArray new11(PackedColorArray& from_);
  static CameraFeedTypedArray py_new11(PackedColorArray& from_);

  static CameraFeedTypedArray new_static(GDExtensionObjectPtr owner);
  void set_gdowner_CameraFeedTypedArray(GDExtensionObjectPtr owner);

  Variant operator [](int index);


   long long size();
     long long py_size();


   bool is_empty();
     bool py_is_empty();


   void clear();
     void py_clear();


   long long hash();
     long long py_hash();


   void assign( Array& array);
     void py_assign( Array& array);


   void push_back( Variant& value);
     void py_push_back( Variant& value);


   void push_front( Variant& value);
     void py_push_front( Variant& value);


   void append( Variant& value);
     void py_append( Variant& value);


   void append_array( Array& array);
     void py_append_array( Array& array);


   long long resize( long long size);
     long long py_resize( long long size);


   long long insert( long long position, Variant& value);
     long long py_insert( long long position, Variant& value);


   void remove_at( long long position);
     void py_remove_at( long long position);


   void fill( Variant& value);
     void py_fill( Variant& value);


   void erase( Variant& value);
     void py_erase( Variant& value);


   Variant front();
     PyObject* py_front();


   Variant back();
     PyObject* py_back();


   Variant pick_random();
     PyObject* py_pick_random();


   long long find( Variant& what, long long from_);
     long long py_find( Variant& what, long long from_);


   long long rfind( Variant& what, long long from_);
     long long py_rfind( Variant& what, long long from_);


   long long count( Variant& value);
     long long py_count( Variant& value);


   bool has( Variant& value);
     bool py_has( Variant& value);


   Variant pop_back();
     PyObject* py_pop_back();


   Variant pop_front();
     PyObject* py_pop_front();


   Variant pop_at( long long position);
     PyObject* py_pop_at( long long position);


   void sort();
     void py_sort();


   void sort_custom( Callable& func);
     void py_sort_custom( Callable& func);


   void shuffle();
     void py_shuffle();


   long long bsearch( Variant& value, bool before);
     long long py_bsearch( Variant& value, bool before);


   long long bsearch_custom( Variant& value, Callable& func, bool before);
     long long py_bsearch_custom( Variant& value, Callable& func, bool before);


   void reverse();
     void py_reverse();

   Array* buffer_CameraFeedTypedArray_duplicate;
   Array duplicate( bool deep);
     Array py_duplicate( bool deep);

   Array* buffer_CameraFeedTypedArray_slice;
   Array slice( long long begin, long long end, long long step, bool deep);
     Array py_slice( long long begin, long long end, long long step, bool deep);

   Array* buffer_CameraFeedTypedArray_filter;
   Array filter( Callable& method);
     Array py_filter( Callable& method);

   Array* buffer_CameraFeedTypedArray_map;
   Array map( Callable& method);
     Array py_map( Callable& method);


   Variant reduce( Callable& method, Variant& accum);
     PyObject* py_reduce( Callable& method, Variant& accum);


   bool any( Callable& method);
     bool py_any( Callable& method);


   bool all( Callable& method);
     bool py_all( Callable& method);


   Variant max();
     PyObject* py_max();


   Variant min();
     PyObject* py_min();


   bool is_typed();
     bool py_is_typed();


   bool is_same_typed( Array& array);
     bool py_is_same_typed( Array& array);


   long long get_typed_builtin();
     long long py_get_typed_builtin();

   StringName* buffer_CameraFeedTypedArray_get_typed_class_name;
   StringName get_typed_class_name();
     StringName py_get_typed_class_name();


   Variant get_typed_script();
     PyObject* py_get_typed_script();


   void make_read_only();
     void py_make_read_only();


   bool is_read_only();
     bool py_is_read_only();

  bool operator == (Variant& other);
  bool py_operator_equals (Variant& other);
  bool operator == (Array& other);
  bool py_operator_equals (Array& other);
  bool operator != (Variant& other);
  bool py_operator_unequals (Variant& other);
  bool operator != (Array& other);
  bool py_operator_unequals (Array& other);
  bool operator < (Array& other);
  bool py_operator_lower_than (Array& other);
  bool operator <= (Array& other);
  bool py_operator_lower_equals (Array& other);
  bool operator > (Array& other);
  bool py_operator_greater_than (Array& other);
  bool operator >= (Array& other);
  bool py_operator_greater_euqals (Array& other);
  Array operator + (Array& other);
  Array py_operator_add (Array& other);


};}
#endif