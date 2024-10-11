if __name__ == '__main__':
    try:
        import pip
    except ImportError:
        print("pip is not installed yet. Installing pip...")
        import addons.py4godot.get_pip as get_pip
        get_pip.main()