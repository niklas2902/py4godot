
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
cimport classes.Range 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_progressbar_is_percent_visible
cdef godot_method_bind *bind_progressbar_set_percent_visible
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_progressbar_is_percent_visible = api_core.godot_method_bind_get_method('ProgressBar', 'is_percent_visible')
  bind_progressbar_set_percent_visible = api_core.godot_method_bind_get_method('ProgressBar', 'set_percent_visible')

############################Generated class###################################
cdef class ProgressBar(classes.Range.Range):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ProgressBar")())
##################################Generated Properties#########################################
  @property
  def percent_visible(self): 
    return self.get_percent_visible()
  @percent_visible.setter 
  def percent_visible(self,value): 
    self.set_percent_visible(value)

##################################Generated Methods#########################################
  def  is_percent_visible(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_progressbar_is_percent_visible,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_percent_visible(self,  bool visible):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &visible
    api_core.godot_method_bind_ptrcall(bind_progressbar_set_percent_visible,self.godot_owner,args,NULL)
    hello('hallo2')
