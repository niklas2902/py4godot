# distutils: language=c++
cdef class FlagHint(BaseHint):
    def __init__(self, *flags):
        result = ""
        for flag in flags:
            result += str(flag) + ","
        if len(flags) > 0:
            result = result[:-1]
        super().__init__(6, result)