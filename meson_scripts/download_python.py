import pathlib
import wget
import zstandard
import tarfile
import os
from shutil import copytree, ignore_patterns

platform_dict = {"windows64": "x86_64-pc-windows-msvc-shared-pgo", "windows":"i686-pc-windows-msvc-shared-pgo",
                 "linux64":"x86_64-unknown-linux-gnu-pgo", "linux":"i686-unknown-linux-gnu-pgo"}
python_files_dir = "python_files"
copy_dir = "build/addons"

def download_file(key):
    python_folder = "cpython - 3.9.7 - "+key

    url = f'https://github.com/indygreg/python-build-standalone/releases/download/20211017/cpython-3.9.7-{platform_dict[key]}-20211017T1616.tar.zst'
    python_file = f'{python_files_dir}/cpython-3.9.7-{platform_dict[key]}.tar.zst'
    export_name = "cpython-3.9.7-"+key

    if(not os.path.isfile(python_file)):
        wget.download(url, python_file)
    if(not os.path.isfile(python_file.replace(".zst",""))):
        decompress_zstandard_to_folder(python_file)
    if(not os.path.isdir(python_folder)):
        extract_tar(python_file.replace(".zst",""),export_name)
    copy_to_build(export_name)


def decompress_zstandard_to_folder(input_file):
    input_file = pathlib.Path(input_file)
    with open(input_file, 'rb') as compressed:
        decomp = zstandard.ZstdDecompressor()
        output_path = pathlib.Path(python_files_dir) / input_file.stem
        with open(output_path, 'wb') as destination:
            decomp.copy_stream(compressed, destination)

def extract_tar(file, export_name):
    my_tar = tarfile.open(file)
    my_tar.extractall(python_files_dir+"/"+export_name)  # specify which folder to extract to
    my_tar.close()

def copy_to_build(export_folder):
    if (not os.path.isdir(copy_dir+"/"+export_folder)):
        copytree(python_files_dir+"/"+export_folder, copy_dir+"/"+export_folder, ignore=ignore_patterns("build"))