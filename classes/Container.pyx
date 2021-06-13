
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
cimport classes.Control
cimport classes.Control 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_container__child_minsize_changed
cdef godot_method_bind *bind_container__sort_children
cdef godot_method_bind *bind_container_fit_child_in_rect
cdef godot_method_bind *bind_container_queue_sort
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_container__child_minsize_changed = api_core.godot_method_bind_get_method('Container', '_child_minsize_changed')
  bind_container__sort_children = api_core.godot_method_bind_get_method('Container', '_sort_children')
  bind_container_fit_child_in_rect = api_core.godot_method_bind_get_method('Container', 'fit_child_in_rect')
  bind_container_queue_sort = api_core.godot_method_bind_get_method('Container', 'queue_sort')

############################Generated class###################################
cdef class Container(classes.Control.Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Container")())
##################################Generated Methods#########################################
  def  _child_minsize_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_container__child_minsize_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _sort_children(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_container__sort_children,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  fit_child_in_rect(self,  classes.Control.Control child,  Rect2 rect):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = child.godot_owner
    args[1] = &rect._native
    api_core.godot_method_bind_ptrcall(bind_container_fit_child_in_rect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  queue_sort(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_container_queue_sort,self.godot_owner,NULL,NULL)
    hello('hallo2')
