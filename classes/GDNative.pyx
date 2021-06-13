
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.GDNativeLibrary
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_gdnative_call_native
cdef godot_method_bind *bind_gdnative_get_library
cdef godot_method_bind *bind_gdnative_initialize
cdef godot_method_bind *bind_gdnative_set_library
cdef godot_method_bind *bind_gdnative_terminate
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_gdnative_call_native = api_core.godot_method_bind_get_method('GDNative', 'call_native')
  bind_gdnative_get_library = api_core.godot_method_bind_get_method('GDNative', 'get_library')
  bind_gdnative_initialize = api_core.godot_method_bind_get_method('GDNative', 'initialize')
  bind_gdnative_set_library = api_core.godot_method_bind_get_method('GDNative', 'set_library')
  bind_gdnative_terminate = api_core.godot_method_bind_get_method('GDNative', 'terminate')

############################Generated class###################################
cdef class GDNative(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GDNative")())
##################################Generated Properties#########################################
  @property
  def library(self): 
    return self.get_library()
  @library.setter 
  def library(self,value): 
    self.set_library(value)

##################################Generated Methods#########################################
  def  call_native(self,  String calling_type,  String procedure_name,  Array arguments):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[3]

    args[0] = &calling_type._native
    args[1] = &procedure_name._native
    args[2] = &arguments._native
    api_core.godot_method_bind_ptrcall(bind_gdnative_call_native,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_library(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gdnative_get_library,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  initialize(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gdnative_initialize,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_library(self,  classes.GDNativeLibrary.GDNativeLibrary library):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = library.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gdnative_set_library,self.godot_owner,args,NULL)
    hello('hallo2')
  def  terminate(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gdnative_terminate,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

