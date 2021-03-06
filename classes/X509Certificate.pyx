from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_x509certificate_load
cdef godot_method_bind *bind_x509certificate_save
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_x509certificate_load = api_core.godot_method_bind_get_method('X509Certificate', 'load')
  bind_x509certificate_save = api_core.godot_method_bind_get_method('X509Certificate', 'save')

############################Generated class###################################
cdef class X509Certificate(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("X509Certificate")())
##################################Generated Methods#########################################
  def  load(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_x509certificate_load,self.godot_owner,[NULL,],&ret)
  def  save(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_x509certificate_save,self.godot_owner,[NULL,],&ret)
