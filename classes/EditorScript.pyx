
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
cimport classes.Node
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorscript__run
cdef godot_method_bind *bind_editorscript_add_root_node
cdef godot_method_bind *bind_editorscript_get_editor_interface
cdef godot_method_bind *bind_editorscript_get_scene
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorscript__run = api_core.godot_method_bind_get_method('EditorScript', '_run')
  bind_editorscript_add_root_node = api_core.godot_method_bind_get_method('EditorScript', 'add_root_node')
  bind_editorscript_get_editor_interface = api_core.godot_method_bind_get_method('EditorScript', 'get_editor_interface')
  bind_editorscript_get_scene = api_core.godot_method_bind_get_method('EditorScript', 'get_scene')

############################Generated class###################################
cdef class EditorScript(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorScript")())
##################################Generated Methods#########################################
  def  _run(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorscript__run,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  add_root_node(self,  classes.Node.Node node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorscript_add_root_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_editor_interface(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorscript_get_editor_interface,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_scene(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorscript_get_scene,self.godot_owner,NULL,&ret)
    hello('hallo2')
