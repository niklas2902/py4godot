
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
cimport classes.VisualScriptNode 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptdeconstruct__get_elem_cache
cdef godot_method_bind *bind_visualscriptdeconstruct__set_elem_cache
cdef godot_method_bind *bind_visualscriptdeconstruct_get_deconstruct_type
cdef godot_method_bind *bind_visualscriptdeconstruct_set_deconstruct_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptdeconstruct__get_elem_cache = api_core.godot_method_bind_get_method('VisualScriptDeconstruct', '_get_elem_cache')
  bind_visualscriptdeconstruct__set_elem_cache = api_core.godot_method_bind_get_method('VisualScriptDeconstruct', '_set_elem_cache')
  bind_visualscriptdeconstruct_get_deconstruct_type = api_core.godot_method_bind_get_method('VisualScriptDeconstruct', 'get_deconstruct_type')
  bind_visualscriptdeconstruct_set_deconstruct_type = api_core.godot_method_bind_get_method('VisualScriptDeconstruct', 'set_deconstruct_type')

############################Generated class###################################
cdef class VisualScriptDeconstruct(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptDeconstruct")())
##################################Generated Properties#########################################
  @property
  def elem_cache(self): 
    return self.get_elem_cache()
  @elem_cache.setter 
  def elem_cache(self,value): 
    self.set_elem_cache(value)
  @property
  def type(self): 
    return self.get_type()
  @type.setter 
  def type(self,value): 
    self.set_type(value)

##################################Generated Methods#########################################
  def  _get_elem_cache(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptdeconstruct__get_elem_cache,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _set_elem_cache(self,  Array _cache):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &_cache._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptdeconstruct__set_elem_cache,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_deconstruct_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Type* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptdeconstruct_get_deconstruct_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_deconstruct_type(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_visualscriptdeconstruct_set_deconstruct_type,self.godot_owner,args,NULL)
    hello('hallo2')
