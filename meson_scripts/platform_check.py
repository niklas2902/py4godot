import platform
import struct

def get_platform():
    """
    Return:
      - 'linuxarm64' for Linux ARM64
      - 'linux64' for Linux x86_64
      - 'windows64' for Windows 64-bit
      - 'windowsarm64' for Windows ARM64 (if applicable)
    """
    system = platform.system().lower()
    arch = platform.machine().lower()

    print(f"system: {system}, arch: {arch}")
    if system == "linux":
        if arch in ("aarch64", "arm64"):
            return "linuxarm64"
        elif struct.calcsize("P") * 8 == 64:
            return "linux64"
    elif system == "windows":
        if arch in ("aarch64", "arm64"):
            return "windowsarm64"
        elif struct.calcsize("P") * 8 == 64:
            return "windows64"
    
    # Fallback for other systems
    return f"{system}{struct.calcsize('P') * 8}"
