import struct
import platform

def get_platform():
    """Return 'windows64' for Windows x86_64, 'windowsarm64' for Windows ARM64"""
    system = platform.system().lower()
    arch = platform.machine().lower()

    if system == "windows":
        if arch in ("aarch64", "arm64"):
            return "windowsarm64"
        elif struct.calcsize("P") * 8 == 64:
            return "windows64"

    # Fallback for other systems if needed
    return f"{system}{struct.calcsize('P') * 8}"

