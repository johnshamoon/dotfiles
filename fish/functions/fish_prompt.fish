# Don't shorten the path
# set -gx fish_prompt_pwd_dir_length 0
set -gx fish_prompt_pwd_dir_length 1
set -gx fish_prompt_pwd_full_dirs 3

function fish_prompt --description 'Write out the prompt'
    set -l normal (set_color normal)
    # set -q fish_color_status
    set -l suffix ' $'
    set -l color_cwd cyan
    set -l prompt_hostname_color green
    set -l prompt_time (math -s 0 "$CMD_DURATION / 1000")
    set -l prompt_time_color magenta

    echo -n -s \
      (set_color --bold $prompt_time_color) '[' $prompt_time 's] ' \
      (set_color --bold $prompt_hostname_color) (prompt_hostname)':' \
      (set_color --bold $color_cwd) (prompt_pwd) \
      $normal " "$prompt_status $suffix " "
end
