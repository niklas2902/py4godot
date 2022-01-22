cdef class UpdateEvent:
    def __init__(self):
        self.func_list = []

    def register_method(self, method):
        self.func_list.append(method)
    def unregister_method(self, method):
        self.func_list.remove(method)
    def notify(self):
        for function in self.func_list:
            function()
