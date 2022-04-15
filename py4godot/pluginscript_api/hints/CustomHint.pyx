class SliderHint():
    def __init__(self, enum_hint, hint_string):
        self.enum_hint = enum_hint
        self.hint_string = hint_string
    def __str__(self):
        return self.hint_string