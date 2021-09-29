import glob

l = glob.glob("**/*.c", recursive=True)


for entry in l:
    if(not entry.startswith("build_meson")):
        print(entry.lstrip("../").rstrip(".c"))