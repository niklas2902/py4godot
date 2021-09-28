import os,subprocess, time

start = time.time()
res = subprocess.Popen("vcvarsall.bat x86_amd64 "
                 "& cl"
                 "& meson build_meson/windows --cross-file platforms/windows64.cross --buildtype=release --wipe"
                 "& ninja -C build_meson/windows", shell=True)

res.wait()
print("took:", time.time()- start)
#res = subprocess.call(r"""meson build_meson/windows --cross-file platforms/windows64.cross
#""", shell=True)
