from py4godot.classes import gdclass
from py4godot.classes.Node import Node

@gdclass
class signal_script(Node):

    def __init__(self):
        super().__init__()
        self.handled = False
        self.lambda_ = None

    def handler(self, *args):
        self.handled = True

    def lambda_handler(self, *args):
        self.lambda_(*args)

    def free_signal(self, * args):
        self.queue_free()