from py4godot.utils.core_holder cimport get_core
from py4godot.core.string.String cimport String
from py4godot.core.array.Array cimport Array
from py4godot.core.vector2.Vector2 cimport Vector2
from py4godot.core.vector3.Vector3 cimport Vector3
from py4godot.core.color.Color cimport Color
from py4godot.core.pool_array.pool_array_binding cimport *
from py4godot.enums.enums cimport godot_error

api_core = get_core()

cdef class PoolByteArray:
    def __init__(self):
        self.update_event = UpdateEvent()
        api_core.godot_pool_byte_array_new(&self._native)

    @staticmethod
    def new_copy(PoolByteArray src):
      cdef PoolByteArray array = PoolByteArray.__new__(PoolByteArray)
      api_core.godot_pool_byte_array_new_copy(&array._native, &src._native)
      array.update_event = UpdateEvent()
      return array

    @staticmethod
    def new_with_array(Array a):
      cdef PoolByteArray array = PoolByteArray.__new__(PoolByteArray)
      api_core.godot_pool_byte_array_new_with_array(&array._native, &a._native)
      array.update_event = UpdateEvent()
      return array

    def append(self,  uint8_t p_data):
      api_core.godot_pool_byte_array_append(&self._native, p_data)

    def append_array(self,  PoolByteArray p_array):
      api_core.godot_pool_byte_array_append_array(&self._native, &(p_array._native))

    def insert(self,  godot_int p_idx,  uint8_t p_data):
      return api_core.godot_pool_byte_array_insert(&self._native, p_idx, p_data)

    def invert(self):
      api_core.godot_pool_byte_array_invert(&self._native)

    def push_back(self,  uint8_t p_data):
      api_core.godot_pool_byte_array_push_back(&self._native, p_data)

    def remove(self,  godot_int p_idx):
      api_core.godot_pool_byte_array_remove(&self._native, p_idx)

    def resize(self,  godot_int p_size):
      api_core.godot_pool_byte_array_resize(&self._native, p_size)

    def read(self):
      api_core.godot_pool_byte_array_read(&self._native)

    def write(self):
      api_core.godot_pool_byte_array_write(&self._native)

    def set(self,  godot_int p_idx,  uint8_t p_data):
      api_core.godot_pool_byte_array_set(&self._native, p_idx, p_data)

    def get(self,  godot_int p_idx):
      return api_core.godot_pool_byte_array_get(&self._native, p_idx)

    def size(self):
      return api_core.godot_pool_byte_array_size(&self._native)

    def __getitem__(self, godot_int index):
        return self.get(index)

    def __setitem__(self, godot_int index,  uint8_t value):
        self.set(index, value)

    def destroy(self):
      api_core.godot_pool_byte_array_destroy(&self._native)

cdef class PoolRealArray:
    def __init__(self):
        self.update_event = UpdateEvent()
        api_core.godot_pool_real_array_new(&self._native)

    @staticmethod
    def new_copy(PoolRealArray src):
      cdef PoolRealArray array = PoolRealArray.__new__(PoolRealArray)
      api_core.godot_pool_real_array_new_copy(&array._native, &src._native)
      array.update_event = UpdateEvent()
      return array

    @staticmethod
    def new_with_array(Array a):
      cdef PoolRealArray array = PoolRealArray.__new__(PoolRealArray)
      api_core.godot_pool_real_array_new_with_array(&array._native, &a._native)
      array.update_event = UpdateEvent()
      return array

    def append(self, godot_real p_data):
      api_core.godot_pool_real_array_append(&self._native, p_data)

    def append_array(self, PoolRealArray p_array):
      api_core.godot_pool_real_array_append_array(&self._native, &p_array._native)

    def insert(self, godot_int p_idx, godot_real p_data):
      cdef godot_error error = api_core.godot_pool_real_array_insert(&self._native, p_idx, p_data)
      if(error != godot_error.GODOT_OK):
        raise RuntimeError(f"Could not insert into PoolArray. Returned error code {error}")

    def invert(self):
      api_core.godot_pool_real_array_invert(&self._native)

    def push_back(self, godot_real p_data):
      api_core.godot_pool_real_array_push_back(&self._native, p_data)

    def remove(self, godot_int p_idx):
      api_core.godot_pool_real_array_remove(&self._native, p_idx)

    def resize(self, godot_int p_size):
      api_core.godot_pool_real_array_resize(&self._native, p_size)

    def read(self):
      api_core.godot_pool_real_array_read(&self._native)

    def write(self):
      api_core.godot_pool_real_array_write(&self._native)

    def set(self, godot_int p_idx, godot_real p_data):
      api_core.godot_pool_real_array_set(&self._native, p_idx, p_data)

    def get(self, godot_int p_idx):
      return api_core.godot_pool_real_array_get(&self._native, p_idx)

    def size(self):
      return api_core.godot_pool_real_array_size(&self._native)

    def __getitem__(self, godot_int index):
        return self.get(index)

    def __setitem__(self, godot_int index,  godot_real value):
        self.set(index, value)

    def destroy(self):
      api_core.godot_pool_real_array_destroy(&self._native)

cdef class PoolIntArray:
    def __init__(self):
        self.update_event = UpdateEvent()
        api_core.godot_pool_int_array_new(&self._native)

    @staticmethod
    def new_copy(PoolIntArray src):
      cdef PoolIntArray array = PoolIntArray.__new__(PoolIntArray)
      api_core.godot_pool_int_array_new_copy(&array._native, &src._native)
      array.update_event = UpdateEvent()
      return array

    @staticmethod
    def new_with_array(Array a):
      cdef PoolIntArray array = PoolIntArray.__new__(PoolIntArray)
      api_core.godot_pool_int_array_new_with_array(&array._native, &a._native)
      array.update_event = UpdateEvent()
      return array

    def append(self, godot_int p_data):
      api_core.godot_pool_int_array_append(&self._native, p_data)

    def append_array(self, PoolIntArray p_array):
      api_core.godot_pool_int_array_append_array(&self._native, &p_array._native)

    def insert(self, godot_int p_idx, godot_int p_data):
      cdef godot_error error = api_core.godot_pool_int_array_insert(&self._native, p_idx, p_data)
      if(error != godot_error.GODOT_OK):
        raise RuntimeError(f"Could not insert into PoolArray. Returned error code {error}")

    def invert(self):
      api_core.godot_pool_int_array_invert(&self._native)

    def push_back(self, godot_int p_data):
      api_core.godot_pool_int_array_push_back(&self._native, p_data)

    def remove(self, godot_int p_idx):
      api_core.godot_pool_int_array_remove(&self._native, p_idx)

    def resize(self, godot_int p_size):
      api_core.godot_pool_int_array_resize(&self._native, p_size)

    def read(self):
      api_core.godot_pool_int_array_read(&self._native)

    def write(self):
      api_core.godot_pool_int_array_write(&self._native)

    def set(self, godot_int p_idx, godot_int p_data):
      api_core.godot_pool_int_array_set(&self._native, p_idx, p_data)

    def get(self, godot_int p_idx):
      return api_core.godot_pool_int_array_get(&self._native, p_idx)

    def size(self):
      return api_core.godot_pool_int_array_size(&self._native)

    def __getitem__(self, godot_int index):
        return self.get(index)

    def __setitem__(self, godot_int index,  godot_int value):
        self.set(index, value)

    def destroy(self):
      api_core.godot_pool_int_array_destroy(&self._native)


cdef class PoolStringArray:
    def __init__(self):
        self.update_event = UpdateEvent()
        api_core.godot_pool_string_array_new(&self._native)

    @staticmethod
    def new_copy(PoolStringArray src):
      cdef PoolStringArray array = PoolStringArray.__new__(PoolStringArray)
      api_core.godot_pool_string_array_new_copy(&array._native, &src._native)
      array.update_event = UpdateEvent()
      return array

    @staticmethod
    def new_with_array(Array a):
      cdef PoolStringArray array = PoolStringArray.__new__(PoolStringArray)
      api_core.godot_pool_string_array_new_with_array(&array._native, &a._native)
      array.update_event = UpdateEvent()
      return array

    def append(self, str p_data):
      api_core.godot_pool_string_array_append(&self._native, &String(p_data)._native)

    def append_array(self, PoolStringArray p_array):
      api_core.godot_pool_string_array_append_array(&self._native, &p_array._native)

    def insert(self, godot_int p_idx, str p_data):
      cdef godot_error error = api_core.godot_pool_string_array_insert(&self._native, p_idx, &String(p_data)._native)
      if(error != godot_error.GODOT_OK):
        raise RuntimeError(f"Could not insert into PoolArray. Returned error code {error}")

    def invert(self):
      api_core.godot_pool_string_array_invert(&self._native)

    def push_back(self, str p_data):
      api_core.godot_pool_string_array_push_back(&self._native, &String(p_data)._native)

    def remove(self, godot_int p_idx):
      api_core.godot_pool_string_array_remove(&self._native, p_idx)

    def resize(self, godot_int p_size):
      api_core.godot_pool_string_array_resize(&self._native, p_size)

    def read(self):
      api_core.godot_pool_string_array_read(&self._native)

    def write(self):
      api_core.godot_pool_string_array_write(&self._native)

    def set(self, godot_int p_idx, str p_data):
      api_core.godot_pool_string_array_set(&self._native, p_idx, &String(p_data)._native)

    def get(self, godot_int p_idx):
      return str(String.new_static(api_core.godot_pool_string_array_get(&self._native, p_idx)))

    def size(self):
      return api_core.godot_pool_string_array_size(&self._native)

    def __getitem__(self, godot_int index):
        return self.get(index)

    def __setitem__(self, godot_int index,  str value):
        self.set(index, value)

    def destroy(self):
      api_core.godot_pool_string_array_destroy(&self._native)


cdef class PoolVector2Array:
    def __init__(self):
        self.update_event = UpdateEvent()
        api_core.godot_pool_vector2_array_new(&self._native)

    @staticmethod
    def new_copy(PoolVector2Array src):
      cdef PoolVector2Array array = PoolVector2Array.__new__(PoolVector2Array)
      api_core.godot_pool_vector2_array_new_copy(&array._native, &src._native)
      array.update_event = UpdateEvent()
      return array

    @staticmethod
    def new_with_array(Array a):
      cdef PoolVector2Array array = PoolVector2Array.__new__(PoolVector2Array)
      api_core.godot_pool_vector2_array_new_with_array(&array._native, &a._native)
      array.update_event = UpdateEvent()
      return array

    def append(self, Vector2 p_data):
      api_core.godot_pool_vector2_array_append(&self._native, &p_data._native)

    def append_array(self, PoolVector2Array p_array):
      api_core.godot_pool_vector2_array_append_array(&self._native, &p_array._native)

    def insert(self, godot_int p_idx, Vector2 p_data):
      cdef godot_error error = api_core.godot_pool_vector2_array_insert(&self._native, p_idx, &p_data._native)
      if(error != godot_error.GODOT_OK):
        raise RuntimeError(f"Could not insert into PoolArray. Returned error code {error}")

    def invert(self):
      api_core.godot_pool_vector2_array_invert(&self._native)

    def push_back(self, Vector2 p_data):
      api_core.godot_pool_vector2_array_push_back(&self._native, &p_data._native)

    def remove(self, godot_int p_idx):
      api_core.godot_pool_vector2_array_remove(&self._native, p_idx)

    def resize(self, godot_int p_size):
      api_core.godot_pool_vector2_array_resize(&self._native, p_size)

    def read(self):
      api_core.godot_pool_vector2_array_read(&self._native)

    def write(self):
      api_core.godot_pool_vector2_array_write(&self._native)

    def set(self, godot_int p_idx, Vector2 p_data):
      api_core.godot_pool_vector2_array_set(&self._native, p_idx, &p_data._native)

    def get(self, godot_int p_idx):
      return Vector2.new_static(api_core.godot_pool_vector2_array_get(&self._native, p_idx))

    def size(self):
      return api_core.godot_pool_vector2_array_size(&self._native)

    def __getitem__(self, godot_int index):
        return self.get(index)

    def __setitem__(self, godot_int index,  Vector2 value):
        self.set(index, value)

    def destroy(self):
      api_core.godot_pool_vector2_array_destroy(&self._native)

cdef class PoolVector3Array:
    def __init__(self):
        self.update_event = UpdateEvent()
        api_core.godot_pool_vector3_array_new(&self._native)

    @staticmethod
    def new_copy(PoolVector3Array src):
      cdef PoolVector3Array array = PoolVector3Array.__new__(PoolVector3Array)
      api_core.godot_pool_vector3_array_new_copy(&array._native, &src._native)
      array.update_event = UpdateEvent()
      return array

    @staticmethod
    def new_with_array(Array a):
      cdef PoolVector3Array array = PoolVector3Array.__new__(PoolVector3Array)
      api_core.godot_pool_vector3_array_new_with_array(&array._native, &a._native)
      array.update_event = UpdateEvent()
      return array

    def append(self, Vector3 p_data):
      api_core.godot_pool_vector3_array_append(&self._native, &p_data._native)

    def append_array(self, PoolVector3Array p_array):
      api_core.godot_pool_vector3_array_append_array(&self._native, &p_array._native)

    def insert(self, godot_int p_idx, Vector3 p_data):
      cdef godot_error error = api_core.godot_pool_vector3_array_insert(&self._native, p_idx, &p_data._native)
      if(error != godot_error.GODOT_OK):
        raise RuntimeError(f"Could not insert into PoolArray. Returned error code {error}")

    def invert(self):
      api_core.godot_pool_vector3_array_invert(&self._native)

    def push_back(self, Vector3 p_data):
      api_core.godot_pool_vector3_array_push_back(&self._native, &p_data._native)

    def remove(self, godot_int p_idx):
      api_core.godot_pool_vector3_array_remove(&self._native, p_idx)

    def resize(self, godot_int p_size):
      api_core.godot_pool_vector3_array_resize(&self._native, p_size)

    def read(self):
      api_core.godot_pool_vector3_array_read(&self._native)

    def write(self):
      api_core.godot_pool_vector3_array_write(&self._native)

    def set(self, godot_int p_idx, Vector3 p_data):
      api_core.godot_pool_vector3_array_set(&self._native, p_idx, &p_data._native)

    def get(self, godot_int p_idx):
      return Vector3.new_static(api_core.godot_pool_vector3_array_get(&self._native, p_idx))

    def size(self):
      return api_core.godot_pool_vector3_array_size(&self._native)

    def __getitem__(self, godot_int index):
        return self.get(index)

    def __setitem__(self, godot_int index,  Vector3 value):
        self.set(index, value)

    def destroy(self):
      api_core.godot_pool_vector3_array_destroy(&self._native)

cdef class PoolColorArray:
    def __init__(self):
        self.update_event = UpdateEvent()
        api_core.godot_pool_color_array_new(&self._native)

    @staticmethod
    def new_copy(PoolColorArray src):
      cdef PoolColorArray array = PoolColorArray.__new__(PoolColorArray)
      api_core.godot_pool_color_array_new_copy(&array._native, &src._native)
      array.update_event = UpdateEvent()
      return array

    @staticmethod
    def new_with_array(Array a):
      cdef PoolColorArray array = PoolColorArray.__new__(PoolColorArray)
      api_core.godot_pool_color_array_new_with_array(&array._native, &a._native)
      array.update_event = UpdateEvent()
      return array

    def append(self, Color p_data):
      api_core.godot_pool_color_array_append(&self._native, &p_data._native)

    def append_array(self, PoolColorArray p_array):
      api_core.godot_pool_color_array_append_array(&self._native, &p_array._native)

    def insert(self, godot_int p_idx, Color p_data):
      cdef godot_error error = api_core.godot_pool_color_array_insert(&self._native, p_idx, &p_data._native)
      if(error != godot_error.GODOT_OK):
        raise RuntimeError(f"Could not insert into PoolArray. Returned error code {error}")

    def invert(self):
      api_core.godot_pool_color_array_invert(&self._native)

    def push_back(self, Color p_data):
      api_core.godot_pool_color_array_push_back(&self._native, &p_data._native)

    def remove(self, godot_int p_idx):
      api_core.godot_pool_color_array_remove(&self._native, p_idx)

    def resize(self, godot_int p_size):
      api_core.godot_pool_color_array_resize(&self._native, p_size)

    def read(self):
      api_core.godot_pool_color_array_read(&self._native)

    def write(self):
      api_core.godot_pool_color_array_write(&self._native)

    def set(self, godot_int p_idx, Color p_data):
      api_core.godot_pool_color_array_set(&self._native, p_idx, &p_data._native)

    def get(self, godot_int p_idx):
      return Color.new_static(api_core.godot_pool_color_array_get(&self._native, p_idx))

    def size(self):
      return api_core.godot_pool_color_array_size(&self._native)

    def __getitem__(self, godot_int index):
        return self.get(index)

    def __setitem__(self, godot_int index,  Color value):
        self.set(index, value)

    def destroy(self):
      api_core.godot_pool_color_array_destroy(&self._native)
