
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
cimport classes.Object
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_expression_execute
cdef godot_method_bind *bind_expression_get_error_text
cdef godot_method_bind *bind_expression_has_execute_failed
cdef godot_method_bind *bind_expression_parse
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_expression_execute = api_core.godot_method_bind_get_method('Expression', 'execute')
  bind_expression_get_error_text = api_core.godot_method_bind_get_method('Expression', 'get_error_text')
  bind_expression_has_execute_failed = api_core.godot_method_bind_get_method('Expression', 'has_execute_failed')
  bind_expression_parse = api_core.godot_method_bind_get_method('Expression', 'parse')

############################Generated class###################################
cdef class Expression(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Expression")())
##################################Generated Methods#########################################
  def  execute(self,  Array inputs,  classes.Object.Object base_instance,  bool show_error):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[3]

    args[0] = &inputs._native
    args[1] = base_instance.godot_owner
    args[2] = &show_error
    api_core.godot_method_bind_ptrcall(bind_expression_execute,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_error_text(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_expression_get_error_text,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  has_execute_failed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_expression_has_execute_failed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  parse(self,  String expression,  PoolStringArray input_names):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &expression._native
    args[1] = &input_names._native
    api_core.godot_method_bind_ptrcall(bind_expression_parse,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

