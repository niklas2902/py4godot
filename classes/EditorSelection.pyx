
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
cimport classes.Node
cimport classes.Node
cimport classes.Node
cimport classes.Object 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorselection__emit_change
cdef godot_method_bind *bind_editorselection__node_removed
cdef godot_method_bind *bind_editorselection_add_node
cdef godot_method_bind *bind_editorselection_clear
cdef godot_method_bind *bind_editorselection_get_selected_nodes
cdef godot_method_bind *bind_editorselection_get_transformable_selected_nodes
cdef godot_method_bind *bind_editorselection_remove_node
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorselection__emit_change = api_core.godot_method_bind_get_method('EditorSelection', '_emit_change')
  bind_editorselection__node_removed = api_core.godot_method_bind_get_method('EditorSelection', '_node_removed')
  bind_editorselection_add_node = api_core.godot_method_bind_get_method('EditorSelection', 'add_node')
  bind_editorselection_clear = api_core.godot_method_bind_get_method('EditorSelection', 'clear')
  bind_editorselection_get_selected_nodes = api_core.godot_method_bind_get_method('EditorSelection', 'get_selected_nodes')
  bind_editorselection_get_transformable_selected_nodes = api_core.godot_method_bind_get_method('EditorSelection', 'get_transformable_selected_nodes')
  bind_editorselection_remove_node = api_core.godot_method_bind_get_method('EditorSelection', 'remove_node')

############################Generated class###################################
cdef class EditorSelection(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorSelection")())
##################################Generated Methods#########################################
  def  _emit_change(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorselection__emit_change,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _node_removed(self,  classes.Node.Node arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorselection__node_removed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_node(self,  classes.Node.Node node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorselection_add_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorselection_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_selected_nodes(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorselection_get_selected_nodes,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_transformable_selected_nodes(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorselection_get_transformable_selected_nodes,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  remove_node(self,  classes.Node.Node node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorselection_remove_node,self.godot_owner,args,NULL)
    hello('hallo2')
