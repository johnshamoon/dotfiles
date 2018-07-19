if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -l --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

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
alias screenshot='gnome-screenshot -ac'

alias please='sudo'

alias untar='tar -xzvf'

# android
alias root='adb root &&  adb wait-for-any-device'
alias verity='adb disable-verity && adb reboot && adb wait-for-any-device && adb root &&  adb wait-for-any-device && adb remount'
alias remount='adb reboot && adb wait-for-any-device && adb root && adb wait-for-any-device && adb remount'

# software
alias android-studio='/usr/local/android-studio/bin/studio.sh&'
alias intellij='/opt/intellij-ce-stable/bin/idea.sh&'

# functions
mkcd() {
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}

restartService() {
  adb shell am force-stop "$1"
  adb shell am start "$1""$2"
}
