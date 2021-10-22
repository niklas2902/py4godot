import glob

l = glob.glob("**/*.c", recursive=True)


for entry in l:
    if(not entry.startswith("build_meson") and not entry.startswith("python_files") and not entry.startswith("build")):
        print(entry.lstrip("../").rstrip(".c"))