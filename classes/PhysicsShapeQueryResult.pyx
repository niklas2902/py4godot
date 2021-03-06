from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physicsshapequeryresult_get_result_count
cdef godot_method_bind *bind_physicsshapequeryresult_get_result_object
cdef godot_method_bind *bind_physicsshapequeryresult_get_result_object_id
cdef godot_method_bind *bind_physicsshapequeryresult_get_result_object_shape
cdef godot_method_bind *bind_physicsshapequeryresult_get_result_rid
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physicsshapequeryresult_get_result_count = api_core.godot_method_bind_get_method('PhysicsShapeQueryResult', 'get_result_count')
  bind_physicsshapequeryresult_get_result_object = api_core.godot_method_bind_get_method('PhysicsShapeQueryResult', 'get_result_object')
  bind_physicsshapequeryresult_get_result_object_id = api_core.godot_method_bind_get_method('PhysicsShapeQueryResult', 'get_result_object_id')
  bind_physicsshapequeryresult_get_result_object_shape = api_core.godot_method_bind_get_method('PhysicsShapeQueryResult', 'get_result_object_shape')
  bind_physicsshapequeryresult_get_result_rid = api_core.godot_method_bind_get_method('PhysicsShapeQueryResult', 'get_result_rid')

############################Generated class###################################
cdef class PhysicsShapeQueryResult(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PhysicsShapeQueryResult")())
##################################Generated Methods#########################################
  def  get_result_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryresult_get_result_count,self.godot_owner,[NULL,],&ret)
  def  get_result_object(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryresult_get_result_object,self.godot_owner,[NULL,],&ret)
  def  get_result_object_id(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryresult_get_result_object_id,self.godot_owner,[NULL,],&ret)
  def  get_result_object_shape(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryresult_get_result_object_shape,self.godot_owner,[NULL,],&ret)
  def  get_result_rid(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryresult_get_result_rid,self.godot_owner,[NULL,],&ret)
