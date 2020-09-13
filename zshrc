# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# env stuff
eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(goenv init -)"
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export GOPATH=$HOME/go

# android-sdk
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"

# fastlane
export PATH=$HOME/.fastlane/bin:$PATH

# gitignore
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# flutter
# export PATH="$PATH:`pwd`/flutter/bin"

export GPG_TTY=$(tty)

# openssl
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

#openJDK
export PATH="/usr/local/opt/openjdk/bin:$PATH"

#macos-trash
alias rm=trash

# reload auto complete
autoload -U compinit
compinit -i