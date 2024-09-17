import argparse
import meson_scripts.cythonize_files.cythonize_files as full_cythonize
import meson_scripts.cythonize_files.dev_cythonize_files as dev_cythonize
import meson_scripts.cythonize_files.cache_hit_cythonize as cache_cythonize
if __name__ == "__main__":
    my_parser = argparse.ArgumentParser(fromfile_prefix_chars='@')
    my_parser.add_argument('-mode', default="release",
                           help='Sepcify whether you want to turn all files to c++ files (release) or only a smaller portion (dev).'
                                'This impacts mainly the speed')
    # Execute parse_args()
    args = my_parser.parse_args()

    if args.mode == "release":
        full_cythonize.main()
    elif args.mode == "dev":
        dev_cythonize.main()
    elif args.mode == "cache":
        cache_cythonize.main()