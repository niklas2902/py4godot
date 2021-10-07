from core.color.Color cimport *

cdef api set_api_core_color(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core

cdef class Color:

    def __init__(self, godot_real red, godot_real green, godot_real blue, godot_real alpha = 255):
        api_core.godot_color_new_rgba(&self._native, red, green,blue, alpha)

    @staticmethod
    def new_rgba(godot_real red, godot_real green, godot_real blue, godot_real alpha):
        cdef Color c = Color.__new__(Color)
        api_core.godot_color_new_rgba(&c._native, red, green, blue, alpha)
        return c

    @staticmethod
    def new_rgb(godot_real red, godot_real green, godot_real blue):
        cdef Color c = Color.__new__(Color)
        api_core.godot_color_new_rgb(&c._native, red, green, blue)
        return c

    def get_red(self):
        return api_core.godot_color_get_r(&self._native)

    def set_red(self, godot_real red):
        api_core.godot_color_set_r(&self._native, red)

    def get_blue(self):
        return api_core.godot_color_get_b(&self._native)

    def set_blue(self, godot_real blue):
        api_core.godot_color_set_b(&self._native, blue)

    def get_green(self):
        return api_core.godot_color_get_g(&self._native)

    def set_green(self, godot_real green):
        api_core.godot_color_set_g(&self._native, green)

    def set_alpha(self, godot_real alpha):
        api_core.godot_color_set_a(&self._native, alpha)

    def get_alpha(self):
        return api_core.godot_color_get_a(&self._native)

    def get_h(self):
        return api_core.godot_color_get_h(&self._native)

    def get_s(self):
        return api_core.godot_color_get_s(&self._native)

    def get_v(self):
        return api_core.godot_color_get_v(&self._native)

    def __str__(self):
        return api_core.godot_color_as_string(&self._native)

    def to_rgba32(self):
        return api_core.godot_color_to_rgba32(&self._native)

    def to_argb32(self):
        return api_core.godot_color_to_argb32(&self._native)

    def gray(self):
        return api_core.godot_color_gray(&self._native)

    def inverted(self):
        return Color(api_core.godot_color_inverted(&self._native))

    def contrasted(self):
        return Color(api_core.godot_color_contrasted(&self._native))

    def linear_interpolate(self, Color b, godot_real t):
        return Color(api_core.godot_color_linear_interpolate(&self._native, &b._native, t))

    def blend(self, Color over):
        return Color(api_core.godot_color_blend(&self._native, &over._native))

    def to_html(self, godot_bool with_alpha):
        return api_core.godot_color_to_html(&self._native, with_alpha)

    def __eq__(self, Color other):
        return api_core.godot_color_operator_equal(&self._native, &other._native)

    def __lt__(self, Color other):
        return api_core.godot_color_operator_less(&self._native, &other._native)

