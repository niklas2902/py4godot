import glob
"""This file is for finding all the c files that were generated by cythonize and we want to compile with meson/ninja"""


if __name__=="__main__":
    l = glob.glob("**/*.c", recursive=True)


    for entry in l:
        if(not entry.startswith("build_meson") and not entry.startswith("python_files") and not entry.startswith("build")\
                and not entry.startswith("venv") and not entry.startswith('tests')):
            print(entry.lstrip("../").rstrip(".c"))