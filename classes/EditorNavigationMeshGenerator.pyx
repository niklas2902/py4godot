
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
cimport classes.NavigationMesh
cimport classes.Node
cimport classes.NavigationMesh
cimport classes.Object 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editornavigationmeshgenerator_bake
cdef godot_method_bind *bind_editornavigationmeshgenerator_clear
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editornavigationmeshgenerator_bake = api_core.godot_method_bind_get_method('EditorNavigationMeshGenerator', 'bake')
  bind_editornavigationmeshgenerator_clear = api_core.godot_method_bind_get_method('EditorNavigationMeshGenerator', 'clear')

############################Generated class###################################
cdef class EditorNavigationMeshGenerator(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorNavigationMeshGenerator")())
##################################Generated Methods#########################################
  def  bake(self,  classes.NavigationMesh.NavigationMesh nav_mesh,  classes.Node.Node root_node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = nav_mesh.godot_owner
    args[1] = root_node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editornavigationmeshgenerator_bake,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self,  classes.NavigationMesh.NavigationMesh nav_mesh):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = nav_mesh.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editornavigationmeshgenerator_clear,self.godot_owner,args,NULL)
    hello('hallo2')
