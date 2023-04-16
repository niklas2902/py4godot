cdef class BaseHint(object):
    def __init__(self):
        self.hint = 0
        self.hint_string = ""
    def get_hint(self):
        return self.hint

    def set_hint(self,value):
        self.hint = value

    def get_string(self):
        return self.hint_string