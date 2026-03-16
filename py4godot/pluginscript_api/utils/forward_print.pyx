# distutils: language=c++
import sys
from py4godot.functions import print as gdprint
from py4godot.functions import printerr as gdprinterr
import sys

welcome_text="""
#################################################
              _  _                  _       _
             | || |                | |     | |
  _ __  _   _| || |_ __ _  ___   __| | ___ | |_
 | '_ \| | | |__   _/ _` |/ _ \ / _` |/ _ \| __|
 | |_) | |_| |  | || (_| | (_) | (_| | (_) | |_
 | .__/ \__, |  |_| \__, |\___/ \__,_|\___/ \__|
 | |     __/ |       __/ |
 |_|    |___/       |___/
 ################################################
 """

class CustomPrint:
    def write(self, text):
        # Add your custom logic here
        # In this example, we forward the text to another function
        self.custom_print(text)

    # Now, when you use print, it will write to your_custom_function
    def custom_print(self, text):
        # Add your custom logic here
        gdprint(text.strip())

    def flush(self):
        # Flush method to ensure compatibility with sys.stdout
        pass



class CustomPrintError:
    def write(self, text):
        # Add your custom logic here
        # In this example, we forward the text to another function
        self.custom_print(text)

    # Now, when you use print, it will write to your_custom_function
    def custom_print(self, text):
        # Add your custom logic here
        gdprinterr(text.strip())

    def flush(self):
        # Flush method to ensure compatibility with sys.stdout
        pass


cdef api void forward_print():

    # Save the original sys.stdout
    original_stdout = sys.stdout

    # Create an instance of the CustomPrint class
    custom_print = CustomPrint()

    # Redirect sys.stdout to the custom object
    sys.stdout = custom_print

    sys.stderr = CustomPrintError()
    print(welcome_text)