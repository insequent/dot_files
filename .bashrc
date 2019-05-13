#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -f ~/.bash_alias ]] && . ~/.bash_alias

alias grep='grep --color=auto'
alias l='ls -CF'
alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '

# Dammit Java...
export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'

# general scripts
export PATH=$PATH:$HOME/bin/

# Android/Flutter paths
export PATH=$PATH:/src/flutter-sdk/bin:/src/android-sdk/tools/bin
export ANDROID_HOME=/src/android-sdk/

# golang vars
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin/

# pyenv vars
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# yarn (for coc)
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
