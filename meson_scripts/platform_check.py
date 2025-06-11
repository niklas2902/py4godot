import struct
import platform

def get_platform():
    """Return 'linuxarm64' for Linux ARM64, 'linux64' for Linux x86_64"""
    system = platform.system().lower()
    arch = platform.machine().lower()

    if system == "linux":
        if arch in ("aarch64", "arm64"):
            return "linuxarm64"
        elif struct.calcsize("P") * 8 == 64:
            return "linux64"

    if system == "windows":
        if arch in ("aarch64", "arm64"):
            return "windowsarm64"
        elif struct.calcsize("P") * 8 == 64:
            return "windows64"

    # Fallback for other systems if needed
    return f"{system}{struct.calcsize('P') * 8}"
