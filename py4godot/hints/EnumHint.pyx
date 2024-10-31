# distutils: language=c++
cdef class EnumHint(BaseHint):
    def __init__(self, list options, bint suggestions = True):
        result = ""
        for option in options:
            result += str(option) + ","
        if len(options) > 0:
            result = result[:-1]
        super().__init__(2 + suggestions, result)