#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -f ~/.bash_alias ]] && . ~/.bash_alias

alias grep='grep --color=auto'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Dammit Java...
export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'

# Private binaries
export PATH=${PATH}:${HOME}/bin

# Golang
export GOPATH=${HOME}/go
export GOBIN=${GOPATH}/bin
export PATH=${PATH}:${GOBIN}

# Flutter + Android Studio
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable
export PATH=${PATH}:${HOME}/git/flutter/bin
export PATH=${PATH}:${HOME}/Android/Sdk/cmdline-tools/latest/bin
export PATH=${PATH}:${HOME}/Android/Sdk/platform-tools/
export PATH=${PATH}:${HOME}/Android/Sdk/emulator/

# Pyenv Vars
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
