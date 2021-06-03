
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
cimport classes.Control 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_referencerect_get_border_color
cdef godot_method_bind *bind_referencerect_get_editor_only
cdef godot_method_bind *bind_referencerect_set_border_color
cdef godot_method_bind *bind_referencerect_set_editor_only
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_referencerect_get_border_color = api_core.godot_method_bind_get_method('ReferenceRect', 'get_border_color')
  bind_referencerect_get_editor_only = api_core.godot_method_bind_get_method('ReferenceRect', 'get_editor_only')
  bind_referencerect_set_border_color = api_core.godot_method_bind_get_method('ReferenceRect', 'set_border_color')
  bind_referencerect_set_editor_only = api_core.godot_method_bind_get_method('ReferenceRect', 'set_editor_only')

############################Generated class###################################
cdef class ReferenceRect(classes.Control.Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ReferenceRect")())
##################################Generated Properties#########################################
  @property
  def border_color(self): 
    return self.get_border_color()
  @border_color.setter 
  def border_color(self,value): 
    self.set_border_color(value)
  @property
  def editor_only(self): 
    return self.get_editor_only()
  @editor_only.setter 
  def editor_only(self,value): 
    self.set_editor_only(value)

##################################Generated Methods#########################################
  def  get_border_color(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_referencerect_get_border_color,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_editor_only(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_referencerect_get_editor_only,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_border_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_referencerect_set_border_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_editor_only(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_referencerect_set_editor_only,self.godot_owner,args,NULL)
    hello('hallo2')
