from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_crypto_generate_random_bytes
cdef godot_method_bind *bind_crypto_generate_rsa
cdef godot_method_bind *bind_crypto_generate_self_signed_certificate
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_crypto_generate_random_bytes = api_core.godot_method_bind_get_method('Crypto', 'generate_random_bytes')
  bind_crypto_generate_rsa = api_core.godot_method_bind_get_method('Crypto', 'generate_rsa')
  bind_crypto_generate_self_signed_certificate = api_core.godot_method_bind_get_method('Crypto', 'generate_self_signed_certificate')

############################Generated class###################################
cdef class Crypto(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Crypto")())
##################################Generated Methods#########################################
  def  generate_random_bytes(self, size):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolByteArray ret
    api_core.godot_method_bind_ptrcall(bind_crypto_generate_random_bytes,self.godot_owner,[NULL,],&ret)
  def  generate_rsa(self, size):
    cdef godot_object *_owner = self.godot_owner
    cdef CryptoKey ret
    api_core.godot_method_bind_ptrcall(bind_crypto_generate_rsa,self.godot_owner,[NULL,],&ret)
  def  generate_self_signed_certificate(self, keyissuer_namenot_beforenot_after):
    cdef godot_object *_owner = self.godot_owner
    cdef X509Certificate ret
    api_core.godot_method_bind_ptrcall(bind_crypto_generate_self_signed_certificate,self.godot_owner,[NULL,],&ret)
