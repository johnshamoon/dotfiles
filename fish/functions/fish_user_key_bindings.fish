function fish_user_key_bindings
  fish_vi_key_bindings
  # ctrl-a (twice because of tmux)
  bind -M insert \ca 'beginning-of-line'

  # ctrl-e
  bind -M insert \ce 'end-of-line'

  # ctrl-r
  bind -M insert \cr 'history-pager'
  bind -M default \cr 'commandline -f history-pager; set fish_bind_mode insert; commandline -f repaint-mode'
end
