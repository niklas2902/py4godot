# distutils: language=c++
cdef class BaseHint(object):
    def __init__(self, int hint = 0, str hint_string = ""):
        self.hint = hint
        self.hint_string = hint_string
    def get_hint(self):
        return self.hint

    def set_hint(self,value):
        self.hint = value

    def get_string(self):
        return self.hint_string