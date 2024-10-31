from py4godot.hints.BaseHint import BaseHint


class RangeHint(BaseHint):
    def __init__(self, start:int|float, end:int|float, step_size:int|float=1, ignore_upper_limit:bool=False, ignore_lower_limit:bool = False, hide_slider:bool=False)->None:pass