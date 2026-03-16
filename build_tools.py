import os
import urllib

import wget


def download_get_pip(save_directory):
    filename = os.path.join(save_directory, 'get_pip.py')
    wget.download("https://bootstrap.pypa.io/get-pip.py", filename)