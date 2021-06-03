
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Object
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_funcref_call_func
cdef godot_method_bind *bind_funcref_call_funcv
cdef godot_method_bind *bind_funcref_is_valid
cdef godot_method_bind *bind_funcref_set_function
cdef godot_method_bind *bind_funcref_set_instance
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_funcref_call_func = api_core.godot_method_bind_get_method('FuncRef', 'call_func')
  bind_funcref_call_funcv = api_core.godot_method_bind_get_method('FuncRef', 'call_funcv')
  bind_funcref_is_valid = api_core.godot_method_bind_get_method('FuncRef', 'is_valid')
  bind_funcref_set_function = api_core.godot_method_bind_get_method('FuncRef', 'set_function')
  bind_funcref_set_instance = api_core.godot_method_bind_get_method('FuncRef', 'set_instance')

############################Generated class###################################
cdef class FuncRef(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("FuncRef")())
##################################Generated Methods#########################################
  def  call_func(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_funcref_call_func,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  call_funcv(self,  Array arg_array):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &arg_array._native
    api_core.godot_method_bind_ptrcall(bind_funcref_call_funcv,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  is_valid(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_funcref_is_valid,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_function(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_funcref_set_function,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_instance(self,  classes.Object.Object instance):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = instance.godot_owner
    api_core.godot_method_bind_ptrcall(bind_funcref_set_instance,self.godot_owner,args,NULL)
    hello('hallo2')
