from py4godot.classes import gdclass
from py4godot.classes.Node import Node

@gdclass
class signal_script(Node):

    def __init__(self):
        super().__init__()
        self.handled = False
        self.lambda_ = None
        self.delete_on_emit=False

    def handler(self, *args):
        self.handled = True

    def lambda_handler(self, *args):
        self.lambda_(*args)
        if self.delete_on_emit:
            self.queue_free()

    def free_signal(self, * args):
        self.queue_free()