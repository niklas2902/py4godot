import os
import glob

def add_distutils_comment(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()

    if not content.startswith('# distutils: language=c++'):
        with open(file_path, 'w', encoding='utf-8') as file:
            file.write('# distutils: language=c++\n' + content)
        print(f"Added comment to {file_path}")
    else:
        print(f"Comment already exists in {file_path}")

def main():
    # Get all .pxd and .pyx files in the current directory and all subdirectories
    cython_files = []
    for ext in ['*.pxd', '*.pyx']:
        cython_files.extend(glob.glob(f'**/{ext}', recursive=True))

    for file_path in cython_files:
        add_distutils_comment(file_path)

if __name__ == "__main__":
    main()