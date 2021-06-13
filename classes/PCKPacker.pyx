
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
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_pckpacker_add_file
cdef godot_method_bind *bind_pckpacker_flush
cdef godot_method_bind *bind_pckpacker_pck_start
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_pckpacker_add_file = api_core.godot_method_bind_get_method('PCKPacker', 'add_file')
  bind_pckpacker_flush = api_core.godot_method_bind_get_method('PCKPacker', 'flush')
  bind_pckpacker_pck_start = api_core.godot_method_bind_get_method('PCKPacker', 'pck_start')

############################Generated class###################################
cdef class PCKPacker(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PCKPacker")())
##################################Generated Methods#########################################
  def  add_file(self,  String pck_path,  String source_path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &pck_path._native
    args[1] = &source_path._native
    api_core.godot_method_bind_ptrcall(bind_pckpacker_add_file,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  flush(self,  bool verbose):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &verbose
    api_core.godot_method_bind_ptrcall(bind_pckpacker_flush,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  pck_start(self,  String pck_name,  int alignment):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &pck_name._native
    args[1] = &alignment
    api_core.godot_method_bind_ptrcall(bind_pckpacker_pck_start,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

