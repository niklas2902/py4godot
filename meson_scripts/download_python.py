import pathlib
import shutil
import zipfile

import wget
import zstandard
import tarfile
import os
from shutil import copytree, ignore_patterns

platform_dict = {"windows64": "x86_64-pc-windows-msvc-install_only_stripped", "windows32": "i686-pc-windows-msvc-install_only_stripped",
                 "linux64": "x86_64-unknown-linux-gnu-install_only_stripped", "darwin64":"aarch64-apple-darwin-install_only_stripped",}
python_files_dir = "python_files"
copy_dir = "build/final"
python_ver = "cpython-3.12.4"

sitecustomize_py = """
import site
import os

site.addsitedir(os.getcwd()+'/addons/{platform}')
site.addsitedir(os.getcwd())
"""


def download_file(platform, allow_copy=False):
    """Function for downloading python versions for various platforms and extracting them to the build folder"""
    python_folder = f"{python_ver}-" + platform

    print("download:" + platform)

    if platform != "linux32" and platform != "linux64":
        url = f'https://github.com/indygreg/python-build-standalone/releases/download/20240726/{python_ver}+20240726-{platform_dict[platform]}.tar.gz'
        python_file = f'{python_files_dir}/{python_ver}-{platform_dict[platform]}.tar.gz'
    elif platform == "linux64":
        url = f'https://github.com/niklas2902/prebuild-python-linux64/releases/download/release-0.1/{python_ver}-linux64.zip'
        python_file = f'{python_files_dir}/{python_ver}-linux64.zip'
    else :
        url = f'https://github.com/niklas2902/prebuild-python-linux32/releases/download/release-0.1/{python_ver}-linux32.zip'
        python_file = f'{python_files_dir}/{python_ver}-linux32.zip'

    export_name = f"{python_ver}-" + platform

    if (not os.path.isfile(python_file)):  # checking whether file was already downloaded
        print(f"downloading {python_ver} from :\n {url}")
        if (not os.path.isdir(python_files_dir)):
            os.mkdir(python_files_dir)
        wget.download(url, python_file)  # download .tar.zst file
        print()
    if (not os.path.isfile(python_file.replace(".zst", ""))):  # extracting the .zst file if it doesn't exist
        print("extracting .zst file")
        decompress_zstandard_to_folder(python_file)
    if (not os.path.isdir(python_files_dir + "/" + export_name)):  # extracting the files from the tar folder
        print("extracting .tar file")
        extract_archive(python_file.replace(".zst", ""), export_name)

    if (allow_copy):
        create_sitecustomization(export_name, platform)
        delete_pip(platform, export_name)
        copy_to_build(export_name + "/", platform)


def decompress_zstandard_to_folder(input_file):
    """function for extraticing .zst files"""
    input_file = pathlib.Path(input_file)
    with open(input_file, 'rb') as compressed:
        decomp = zstandard.ZstdDecompressor()
        output_path = pathlib.Path(python_files_dir) / input_file.stem
        with open(output_path, 'wb') as destination:
            decomp.copy_stream(compressed, destination)


def extract_archive(file, export_name):
    """function for extracting .tar archieve"""
    if (not os.path.isdir(python_files_dir + "/" + export_name)):
        print("File:", file)
        if file.endswith("tar") or file.endswith("gz"):
            my_tar = tarfile.open(file)
            my_tar.extractall(python_files_dir + "/" + export_name)  # specify which folder to extract to
            my_tar.close()
        else:
            with zipfile.ZipFile(file, 'r') as zip_ref:
                zip_ref.extractall(python_files_dir + "/" + export_name)


def copy_to_build(export_folder, platform):
    """function for copying files to build folder"""
    if (not os.path.isdir(copy_dir + "/" + platform + "/" + export_folder)):
        copytree(python_files_dir + "/" + export_folder, copy_dir + "/" + platform + "/" + export_folder,
                 ignore=ignore_patterns("build"))  # build and lib are unnecessary

def delete_pip( platform, export_folder):
    """The builtin pip is broken. We install it manually later"""
    if "windows" in platform:
        print("deleting pip...")
        if os.path.isdir(f"python_files/{export_folder}/python/Lib/site-packages/pip"):
            shutil.rmtree(f"python_files/{export_folder}/python/Lib/site-packages/pip")
    elif "linux" in platform:
        print("deleting pip...")
        if os.path.isdir(f"python_files/{export_folder}/python/lib/python3.12/site-packages/pip"):
            shutil.rmtree(f"python_files/{export_folder}/python/lib/python3.12/site-packages/pip")


def create_sitecustomization(export_folder, platform):
    if "windows" in platform:
        with open(f"python_files/{export_folder}/python/Lib/site-packages/sitecustomize.py",
                  "w") as sitecustomize_file:
            sitecustomize_file.write(sitecustomize_py.replace("{platform}", platform))
    elif "linux" in platform:
        with open(f"python_files/{export_folder}/python/lib/python3.12/site-packages/sitecustomize.py",
                  "w") as sitecustomize_file:
            sitecustomize_file.write(sitecustomize_py.replace("{platform}", platform))
