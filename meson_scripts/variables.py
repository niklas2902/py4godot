import os
import json

def show_environment_variables():
    # Get all environment variables
    env_vars = dict(os.environ)

    # Print all environment variables
    print("All Environment Variables:")
    print(json.dumps(env_vars, indent=2))

    # Specifically check for cache-related variables
    cache_vars = {k: v for k, v in env_vars.items() if 'CACHE' in k}
    if cache_vars:
        print("\nCache-related Environment Variables:")
        print(json.dumps(cache_vars, indent=2))
    else:
        print("\nNo cache-related environment variables found.")

    # Check for GitHub Actions specific variables
    github_vars = {k: v for k, v in env_vars.items() if k.startswith('GITHUB_')}
    if github_vars:
        print("\nGitHub Actions Specific Variables:")
        print(json.dumps(github_vars, indent=2))
    else:
        print("\nNo GitHub Actions specific variables found.")

if __name__ == "__main__":
    show_environment_variables()
