import struct
import platform

def get_platform():
    """Determining the current platform"""
    return platform.system().lower()+("64" if struct.calcsize("P")*8 == 64 else "")
