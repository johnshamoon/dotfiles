if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH $PATH ~/.local/bin

set FISH_CONFIG_PATH ~/.config/fish
set FISH_PRIVATE_CONFIG $FISH_CONFIG_PATH/private

source $FISH_CONFIG_PATH/abbrs.fish
source $FISH_CONFIG_PATH/completions/cd.fish

if test -d $FISH_PRIVATE_CONFIG
  for f in $FISH_PRIVATE_CONFIG/*.fish
    source $f
  end
end
