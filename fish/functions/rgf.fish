function rgf
  # Check if any arguments are provided
  if test (count $argv) -lt 1
    echo "Usage: rgf [path/options for rg --files] <pattern_for_filenames>" >&2
    return 1
  end

  # The last argument is the pattern to search for in the filenames
  set -l pattern $argv[-1]

  # The arguments before the last one are passed to 'rg --files'
  # $argv[1..-2] will be empty if there's only one argument, which is fine.
  set -l rg_files_args $argv[1..-2]

  # rg --files $rg_files_args lists files based on the initial arguments.
  # Each element of the list $rg_files_args is passed as a separate argument.
  # The output (list of file paths) is piped to another rg instance,
  # which filters these paths based on the $pattern.
  rg --files $rg_files_args | rg "$pattern"
end
