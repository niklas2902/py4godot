
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
cimport classes.Container 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_boxcontainer_add_spacer
cdef godot_method_bind *bind_boxcontainer_get_alignment
cdef godot_method_bind *bind_boxcontainer_set_alignment
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_boxcontainer_add_spacer = api_core.godot_method_bind_get_method('BoxContainer', 'add_spacer')
  bind_boxcontainer_get_alignment = api_core.godot_method_bind_get_method('BoxContainer', 'get_alignment')
  bind_boxcontainer_set_alignment = api_core.godot_method_bind_get_method('BoxContainer', 'set_alignment')

############################Generated class###################################
cdef class BoxContainer(classes.Container.Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("BoxContainer")())
##################################Generated Properties#########################################
  @property
  def alignment(self): 
    return self.get_alignment()
  @alignment.setter 
  def alignment(self,value): 
    self.set_alignment(value)

##################################Generated Methods#########################################
  def  add_spacer(self,  bool begin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &begin
    api_core.godot_method_bind_ptrcall(bind_boxcontainer_add_spacer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_alignment(self):
    cdef godot_object *_owner = self.godot_owner

    cdef BoxContainer_AlignMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_boxcontainer_get_alignment,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_alignment(self,  int alignment):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &alignment
    api_core.godot_method_bind_ptrcall(bind_boxcontainer_set_alignment,self.godot_owner,args,NULL)
    hello('hallo2')
