import glob, os, re
from typing import List
os.chdir("../")

files: List[str] = glob.glob("py4godot/**/*.pyx") + ["py4godot/pluginscript_api/utils/annotations.pyx"]
for filename in files:
    if "print_tools" in filename or "classes" in filename:
        continue
    print(f"working on {filename}...")
    with open(filename, "r") as f:
        text = f.readlines()
    line_counter: int = 0
    result_text: str = ""
    function_name:str = ""
    for line in text:

        line_counter += 1
        name = os.path.basename(filename)
        if "cdef " in line or "def " in line and "(" in line and "cdef class" not in line:
            match = re.match("(cdef|def)\s+(api)?\s+.*?\s+(.*?)\(.*\):", line)
            if match:
                function_name = match.groups()[-1]

            pattern = r"print_error_detailed\('([^']+)', '([^']+)', (\d+),"
            replacement = f"print_error_detailed('{name}', '{function_name}', {line_counter},"
            line = re.sub(pattern, replacement, line, count=1)

        result_text += line

    with open(filename, "w") as f:
        f.write(result_text)

