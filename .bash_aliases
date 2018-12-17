if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -l --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias diff='diff --color'
alias ..='cd ..'
alias y='yes'
alias n='no'
alias sourcealiases='source ~/.bash_aliases'
alias aliases='vim ~/.bash_aliases'
alias sourcerc='source ~/.bashrc'
alias rc='vim ~/.bashrc'
alias please='sudo'
alias untar='tar -xzvf'

# functions
mkcd() {
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}
