import wget

url = 'https://github.com/indygreg/python-build-standalone/releases/download/20211017/cpython-3.9.7-x86_64-pc-windows-msvc-shared-pgo-20211017T1616.tar.zst'
wget.download(url, 'python_files/cpython-3.9.7-x86_64-pc-windows.tar.zst')

url = 'https://github.com/indygreg/python-build-standalone/releases/download/20211017/cpython-3.9.7-i686-pc-windows-msvc-shared-pgo-20211017T1616.tar.zst'
wget.download(url, 'python_files/cpython-3.9.7-i686-pc-windows.tar.zst')

url = 'https://github.com/indygreg/python-build-standalone/releases/download/20211017/cpython-3.9.7-x86_64-unknown-linux-gnu-pgo-20211017T1616.tar.zst'
wget.download(url, 'python_files/cpython-3.9.7-x86_64-unknown-linux.tar.zst')

url = 'https://github.com/indygreg/python-build-standalone/releases/download/20211017/cpython-3.9.7-i686-unknown-linux-gnu-pgo-20211017T1616.tar.zst'
wget.download(url, 'python_files/cpython-3.9.7-i686-unknown-linux.tar.zst')