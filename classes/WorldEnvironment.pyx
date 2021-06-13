
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
cimport classes.Environment
cimport classes.Node 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_worldenvironment_get_environment
cdef godot_method_bind *bind_worldenvironment_set_environment
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_worldenvironment_get_environment = api_core.godot_method_bind_get_method('WorldEnvironment', 'get_environment')
  bind_worldenvironment_set_environment = api_core.godot_method_bind_get_method('WorldEnvironment', 'set_environment')

############################Generated class###################################
cdef class WorldEnvironment(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WorldEnvironment")())
##################################Generated Properties#########################################
  @property
  def environment(self): 
    return self.get_environment()
  @environment.setter 
  def environment(self,value): 
    self.set_environment(value)

##################################Generated Methods#########################################
  def  get_environment(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_worldenvironment_get_environment,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_environment(self,  classes.Environment.Environment env):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = env.godot_owner
    api_core.godot_method_bind_ptrcall(bind_worldenvironment_set_environment,self.godot_owner,args,NULL)
    hello('hallo2')
