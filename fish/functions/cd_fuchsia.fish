function cd_fuchsia
    set -l base_dir "/ssd/fuchsia/"
    set -l current_input (commandline -ct)

    # 1. Strip the '//' prefix from the input
    set -l partial_path (string sub -s 3 -- "$current_input")

    # 2. Prepend the base path to the partial path to get the full search path
    # Example: /ssd/fuchsia/src
    set -l full_search_path "$base_dir$partial_path"

    # 3. Use the built-in fish completion function to search the path.
    __fish_complete_directories "$full_search_path"
end
