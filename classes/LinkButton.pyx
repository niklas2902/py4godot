
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
cimport classes.BaseButton 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_linkbutton_get_text
cdef godot_method_bind *bind_linkbutton_get_underline_mode
cdef godot_method_bind *bind_linkbutton_set_text
cdef godot_method_bind *bind_linkbutton_set_underline_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_linkbutton_get_text = api_core.godot_method_bind_get_method('LinkButton', 'get_text')
  bind_linkbutton_get_underline_mode = api_core.godot_method_bind_get_method('LinkButton', 'get_underline_mode')
  bind_linkbutton_set_text = api_core.godot_method_bind_get_method('LinkButton', 'set_text')
  bind_linkbutton_set_underline_mode = api_core.godot_method_bind_get_method('LinkButton', 'set_underline_mode')

############################Generated class###################################
cdef class LinkButton(classes.BaseButton.BaseButton):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("LinkButton")())
##################################Generated Properties#########################################
  @property
  def text(self): 
    return self.get_text()
  @text.setter 
  def text(self,value): 
    self.set_text(value)
  @property
  def underline(self): 
    return self.get_underline()
  @underline.setter 
  def underline(self,value): 
    self.set_underline(value)

##################################Generated Methods#########################################
  def  get_text(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_linkbutton_get_text,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_underline_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef UnderlineMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_linkbutton_get_underline_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_text(self,  String text):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &text._native
    api_core.godot_method_bind_ptrcall(bind_linkbutton_set_text,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_underline_mode(self,  int underline_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &underline_mode
    api_core.godot_method_bind_ptrcall(bind_linkbutton_set_underline_mode,self.godot_owner,args,NULL)
    hello('hallo2')
