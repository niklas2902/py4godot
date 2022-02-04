def print_meson(platform):
    try:
        with open (f"build_meson/{platform}/meson-logs/testlog.txt") as file:
            print(file.read())
    except Exception as e:
        print(f"Exception occurred:{e.with_traceback()}")