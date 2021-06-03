
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
cimport classes.Mesh
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_multimesh__get_color_array
cdef godot_method_bind *bind_multimesh__get_custom_data_array
cdef godot_method_bind *bind_multimesh__get_transform_2d_array
cdef godot_method_bind *bind_multimesh__get_transform_array
cdef godot_method_bind *bind_multimesh__set_color_array
cdef godot_method_bind *bind_multimesh__set_custom_data_array
cdef godot_method_bind *bind_multimesh__set_transform_2d_array
cdef godot_method_bind *bind_multimesh__set_transform_array
cdef godot_method_bind *bind_multimesh_get_aabb
cdef godot_method_bind *bind_multimesh_get_color_format
cdef godot_method_bind *bind_multimesh_get_custom_data_format
cdef godot_method_bind *bind_multimesh_get_instance_color
cdef godot_method_bind *bind_multimesh_get_instance_count
cdef godot_method_bind *bind_multimesh_get_instance_custom_data
cdef godot_method_bind *bind_multimesh_get_instance_transform
cdef godot_method_bind *bind_multimesh_get_instance_transform_2d
cdef godot_method_bind *bind_multimesh_get_mesh
cdef godot_method_bind *bind_multimesh_get_transform_format
cdef godot_method_bind *bind_multimesh_get_visible_instance_count
cdef godot_method_bind *bind_multimesh_set_as_bulk_array
cdef godot_method_bind *bind_multimesh_set_color_format
cdef godot_method_bind *bind_multimesh_set_custom_data_format
cdef godot_method_bind *bind_multimesh_set_instance_color
cdef godot_method_bind *bind_multimesh_set_instance_count
cdef godot_method_bind *bind_multimesh_set_instance_custom_data
cdef godot_method_bind *bind_multimesh_set_instance_transform
cdef godot_method_bind *bind_multimesh_set_instance_transform_2d
cdef godot_method_bind *bind_multimesh_set_mesh
cdef godot_method_bind *bind_multimesh_set_transform_format
cdef godot_method_bind *bind_multimesh_set_visible_instance_count
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_multimesh__get_color_array = api_core.godot_method_bind_get_method('MultiMesh', '_get_color_array')
  bind_multimesh__get_custom_data_array = api_core.godot_method_bind_get_method('MultiMesh', '_get_custom_data_array')
  bind_multimesh__get_transform_2d_array = api_core.godot_method_bind_get_method('MultiMesh', '_get_transform_2d_array')
  bind_multimesh__get_transform_array = api_core.godot_method_bind_get_method('MultiMesh', '_get_transform_array')
  bind_multimesh__set_color_array = api_core.godot_method_bind_get_method('MultiMesh', '_set_color_array')
  bind_multimesh__set_custom_data_array = api_core.godot_method_bind_get_method('MultiMesh', '_set_custom_data_array')
  bind_multimesh__set_transform_2d_array = api_core.godot_method_bind_get_method('MultiMesh', '_set_transform_2d_array')
  bind_multimesh__set_transform_array = api_core.godot_method_bind_get_method('MultiMesh', '_set_transform_array')
  bind_multimesh_get_aabb = api_core.godot_method_bind_get_method('MultiMesh', 'get_aabb')
  bind_multimesh_get_color_format = api_core.godot_method_bind_get_method('MultiMesh', 'get_color_format')
  bind_multimesh_get_custom_data_format = api_core.godot_method_bind_get_method('MultiMesh', 'get_custom_data_format')
  bind_multimesh_get_instance_color = api_core.godot_method_bind_get_method('MultiMesh', 'get_instance_color')
  bind_multimesh_get_instance_count = api_core.godot_method_bind_get_method('MultiMesh', 'get_instance_count')
  bind_multimesh_get_instance_custom_data = api_core.godot_method_bind_get_method('MultiMesh', 'get_instance_custom_data')
  bind_multimesh_get_instance_transform = api_core.godot_method_bind_get_method('MultiMesh', 'get_instance_transform')
  bind_multimesh_get_instance_transform_2d = api_core.godot_method_bind_get_method('MultiMesh', 'get_instance_transform_2d')
  bind_multimesh_get_mesh = api_core.godot_method_bind_get_method('MultiMesh', 'get_mesh')
  bind_multimesh_get_transform_format = api_core.godot_method_bind_get_method('MultiMesh', 'get_transform_format')
  bind_multimesh_get_visible_instance_count = api_core.godot_method_bind_get_method('MultiMesh', 'get_visible_instance_count')
  bind_multimesh_set_as_bulk_array = api_core.godot_method_bind_get_method('MultiMesh', 'set_as_bulk_array')
  bind_multimesh_set_color_format = api_core.godot_method_bind_get_method('MultiMesh', 'set_color_format')
  bind_multimesh_set_custom_data_format = api_core.godot_method_bind_get_method('MultiMesh', 'set_custom_data_format')
  bind_multimesh_set_instance_color = api_core.godot_method_bind_get_method('MultiMesh', 'set_instance_color')
  bind_multimesh_set_instance_count = api_core.godot_method_bind_get_method('MultiMesh', 'set_instance_count')
  bind_multimesh_set_instance_custom_data = api_core.godot_method_bind_get_method('MultiMesh', 'set_instance_custom_data')
  bind_multimesh_set_instance_transform = api_core.godot_method_bind_get_method('MultiMesh', 'set_instance_transform')
  bind_multimesh_set_instance_transform_2d = api_core.godot_method_bind_get_method('MultiMesh', 'set_instance_transform_2d')
  bind_multimesh_set_mesh = api_core.godot_method_bind_get_method('MultiMesh', 'set_mesh')
  bind_multimesh_set_transform_format = api_core.godot_method_bind_get_method('MultiMesh', 'set_transform_format')
  bind_multimesh_set_visible_instance_count = api_core.godot_method_bind_get_method('MultiMesh', 'set_visible_instance_count')

############################Generated class###################################
cdef class MultiMesh(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MultiMesh")())
##################################Generated Properties#########################################
  @property
  def color_array(self): 
    return self.get_color_array()
  @color_array.setter 
  def color_array(self,value): 
    self.set_color_array(value)
  @property
  def color_format(self): 
    return self.get_color_format()
  @color_format.setter 
  def color_format(self,value): 
    self.set_color_format(value)
  @property
  def custom_data_array(self): 
    return self.get_custom_data_array()
  @custom_data_array.setter 
  def custom_data_array(self,value): 
    self.set_custom_data_array(value)
  @property
  def custom_data_format(self): 
    return self.get_custom_data_format()
  @custom_data_format.setter 
  def custom_data_format(self,value): 
    self.set_custom_data_format(value)
  @property
  def instance_count(self): 
    return self.get_instance_count()
  @instance_count.setter 
  def instance_count(self,value): 
    self.set_instance_count(value)
  @property
  def mesh(self): 
    return self.get_mesh()
  @mesh.setter 
  def mesh(self,value): 
    self.set_mesh(value)
  @property
  def transform_2d_array(self): 
    return self.get_transform_2d_array()
  @transform_2d_array.setter 
  def transform_2d_array(self,value): 
    self.set_transform_2d_array(value)
  @property
  def transform_array(self): 
    return self.get_transform_array()
  @transform_array.setter 
  def transform_array(self,value): 
    self.set_transform_array(value)
  @property
  def transform_format(self): 
    return self.get_transform_format()
  @transform_format.setter 
  def transform_format(self,value): 
    self.set_transform_format(value)
  @property
  def visible_instance_count(self): 
    return self.get_visible_instance_count()
  @visible_instance_count.setter 
  def visible_instance_count(self,value): 
    self.set_visible_instance_count(value)

##################################Generated Methods#########################################
  def  _get_color_array(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimesh__get_color_array,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  _get_custom_data_array(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimesh__get_custom_data_array,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  _get_transform_2d_array(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimesh__get_transform_2d_array,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  _get_transform_array(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimesh__get_transform_array,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  _set_color_array(self,  PoolColorArray arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_multimesh__set_color_array,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_custom_data_array(self,  PoolColorArray arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_multimesh__set_custom_data_array,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_transform_2d_array(self,  PoolVector2Array arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_multimesh__set_transform_2d_array,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_transform_array(self,  PoolVector3Array arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_multimesh__set_transform_array,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_aabb(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_aabb* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimesh_get_aabb,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return AABB.new_static(dereference(ret))

  def  get_color_format(self):
    cdef godot_object *_owner = self.godot_owner

    cdef ColorFormat* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimesh_get_color_format,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_custom_data_format(self):
    cdef godot_object *_owner = self.godot_owner

    cdef CustomDataFormat* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimesh_get_custom_data_format,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_instance_color(self,  int instance):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &instance
    api_core.godot_method_bind_ptrcall(bind_multimesh_get_instance_color,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_instance_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimesh_get_instance_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_instance_custom_data(self,  int instance):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &instance
    api_core.godot_method_bind_ptrcall(bind_multimesh_get_instance_custom_data,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_instance_transform(self,  int instance):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    cdef void *args[1]

    args[0] = &instance
    api_core.godot_method_bind_ptrcall(bind_multimesh_get_instance_transform,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  get_instance_transform_2d(self,  int instance):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    cdef void *args[1]

    args[0] = &instance
    api_core.godot_method_bind_ptrcall(bind_multimesh_get_instance_transform_2d,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimesh_get_mesh,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_transform_format(self):
    cdef godot_object *_owner = self.godot_owner

    cdef TransformFormat* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimesh_get_transform_format,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_visible_instance_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimesh_get_visible_instance_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_as_bulk_array(self,  PoolRealArray array):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &array._native
    api_core.godot_method_bind_ptrcall(bind_multimesh_set_as_bulk_array,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_color_format(self,  int format):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &format
    api_core.godot_method_bind_ptrcall(bind_multimesh_set_color_format,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_custom_data_format(self,  int format):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &format
    api_core.godot_method_bind_ptrcall(bind_multimesh_set_custom_data_format,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_instance_color(self,  int instance,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &instance
    args[1] = &color._native
    api_core.godot_method_bind_ptrcall(bind_multimesh_set_instance_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_instance_count(self,  int count):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &count
    api_core.godot_method_bind_ptrcall(bind_multimesh_set_instance_count,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_instance_custom_data(self,  int instance,  Color custom_data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &instance
    args[1] = &custom_data._native
    api_core.godot_method_bind_ptrcall(bind_multimesh_set_instance_custom_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_instance_transform(self,  int instance,  Transform transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &instance
    args[1] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_multimesh_set_instance_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_instance_transform_2d(self,  int instance,  Transform2D transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &instance
    args[1] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_multimesh_set_instance_transform_2d,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mesh(self,  classes.Mesh.Mesh mesh):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = mesh.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multimesh_set_mesh,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_transform_format(self,  int format):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &format
    api_core.godot_method_bind_ptrcall(bind_multimesh_set_transform_format,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_visible_instance_count(self,  int count):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &count
    api_core.godot_method_bind_ptrcall(bind_multimesh_set_visible_instance_count,self.godot_owner,args,NULL)
    hello('hallo2')
