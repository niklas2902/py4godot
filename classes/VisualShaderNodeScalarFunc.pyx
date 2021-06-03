
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
cimport classes.VisualShaderNode 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodescalarfunc_get_function
cdef godot_method_bind *bind_visualshadernodescalarfunc_set_function
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodescalarfunc_get_function = api_core.godot_method_bind_get_method('VisualShaderNodeScalarFunc', 'get_function')
  bind_visualshadernodescalarfunc_set_function = api_core.godot_method_bind_get_method('VisualShaderNodeScalarFunc', 'set_function')

############################Generated class###################################
cdef class VisualShaderNodeScalarFunc(classes.VisualShaderNode.VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeScalarFunc")())
##################################Generated Properties#########################################
  @property
  def function(self): 
    return self.get_function()
  @function.setter 
  def function(self,value): 
    self.set_function(value)

##################################Generated Methods#########################################
  def  get_function(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Function* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodescalarfunc_get_function,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_function(self,  int func):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &func
    api_core.godot_method_bind_ptrcall(bind_visualshadernodescalarfunc_set_function,self.godot_owner,args,NULL)
    hello('hallo2')
