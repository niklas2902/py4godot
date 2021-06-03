
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
cdef godot_method_bind *bind_visualscriptcomment_get_description
cdef godot_method_bind *bind_visualscriptcomment_get_size
cdef godot_method_bind *bind_visualscriptcomment_get_title
cdef godot_method_bind *bind_visualscriptcomment_set_description
cdef godot_method_bind *bind_visualscriptcomment_set_size
cdef godot_method_bind *bind_visualscriptcomment_set_title
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptcomment_get_description = api_core.godot_method_bind_get_method('VisualScriptComment', 'get_description')
  bind_visualscriptcomment_get_size = api_core.godot_method_bind_get_method('VisualScriptComment', 'get_size')
  bind_visualscriptcomment_get_title = api_core.godot_method_bind_get_method('VisualScriptComment', 'get_title')
  bind_visualscriptcomment_set_description = api_core.godot_method_bind_get_method('VisualScriptComment', 'set_description')
  bind_visualscriptcomment_set_size = api_core.godot_method_bind_get_method('VisualScriptComment', 'set_size')
  bind_visualscriptcomment_set_title = api_core.godot_method_bind_get_method('VisualScriptComment', 'set_title')

############################Generated class###################################
cdef class VisualScriptComment(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptComment")())
##################################Generated Properties#########################################
  @property
  def description(self): 
    return self.get_description()
  @description.setter 
  def description(self,value): 
    self.set_description(value)
  @property
  def size(self): 
    return self.get_size()
  @size.setter 
  def size(self,value): 
    self.set_size(value)
  @property
  def title(self): 
    return self.get_title()
  @title.setter 
  def title(self,value): 
    self.set_title(value)

##################################Generated Methods#########################################
  def  get_description(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptcomment_get_description,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptcomment_get_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_title(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptcomment_get_title,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  set_description(self,  String description):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &description._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptcomment_set_description,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_size(self,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptcomment_set_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_title(self,  String title):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &title._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptcomment_set_title,self.godot_owner,args,NULL)
    hello('hallo2')
