class SliderHint():
    def __init__(self, start, end ,steps = 1, type = "slider"):
        self.start = start
        self.end = end
        self.steps = steps
        self.type = type
    def __str__(self):
        return f"{self.start},{self.end},{self.steps}{self.type}"