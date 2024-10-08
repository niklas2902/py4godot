# distutils: language=c++
cdef class RangeHint(BaseHint):
    def __init__(self, object start, object end, object step_size, bint ignore_upper_limit = False, bint ignore_lower_limit = False, bint hide_slider = False):
        or_greater = "or_greater" if ignore_upper_limit else ""
        or_less = "or_less" if ignore_lower_limit else ""
        hide_slider_text = "hide_slider" if hide_slider else ""
        super().__init__(1, f"{start},{end},{step_size},{or_greater},{or_less},{hide_slider_text}")