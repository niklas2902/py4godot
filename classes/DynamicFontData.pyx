
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_dynamicfontdata_get_font_path
cdef godot_method_bind *bind_dynamicfontdata_get_hinting
cdef godot_method_bind *bind_dynamicfontdata_is_antialiased
cdef godot_method_bind *bind_dynamicfontdata_set_antialiased
cdef godot_method_bind *bind_dynamicfontdata_set_font_path
cdef godot_method_bind *bind_dynamicfontdata_set_hinting
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_dynamicfontdata_get_font_path = api_core.godot_method_bind_get_method('DynamicFontData', 'get_font_path')
  bind_dynamicfontdata_get_hinting = api_core.godot_method_bind_get_method('DynamicFontData', 'get_hinting')
  bind_dynamicfontdata_is_antialiased = api_core.godot_method_bind_get_method('DynamicFontData', 'is_antialiased')
  bind_dynamicfontdata_set_antialiased = api_core.godot_method_bind_get_method('DynamicFontData', 'set_antialiased')
  bind_dynamicfontdata_set_font_path = api_core.godot_method_bind_get_method('DynamicFontData', 'set_font_path')
  bind_dynamicfontdata_set_hinting = api_core.godot_method_bind_get_method('DynamicFontData', 'set_hinting')

############################Generated class###################################
cdef class DynamicFontData(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("DynamicFontData")())
##################################Generated Properties#########################################
  @property
  def antialiased(self): 
    return self.get_antialiased()
  @antialiased.setter 
  def antialiased(self,value): 
    self.set_antialiased(value)
  @property
  def font_path(self): 
    return self.get_font_path()
  @font_path.setter 
  def font_path(self,value): 
    self.set_font_path(value)
  @property
  def hinting(self): 
    return self.get_hinting()
  @hinting.setter 
  def hinting(self,value): 
    self.set_hinting(value)

##################################Generated Methods#########################################
  def  get_font_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dynamicfontdata_get_font_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_hinting(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Hinting* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dynamicfontdata_get_hinting,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_antialiased(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_dynamicfontdata_is_antialiased,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_antialiased(self,  bool antialiased):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &antialiased
    api_core.godot_method_bind_ptrcall(bind_dynamicfontdata_set_antialiased,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_font_path(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_dynamicfontdata_set_font_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hinting(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_dynamicfontdata_set_hinting,self.godot_owner,args,NULL)
    hello('hallo2')
