# Path to oh-my-zsh installation
export ZSH=/Users/losted/.oh-my-zsh

# ZSH Theme
ZSH_THEME="robbyrussell"

# ZSH Plugins
plugins=(git colored-man colorize github jira vagrant virtualenv python brew osx zsh-syntax-highlighting bower composer grunt heroku history laravel5 nmap node npm phing rsync zsh-autosuggestions)

# Load aliases
source ~/.aliases

# Load functions
source ~/.functions

# Homebrew
export PATH=/usr/local/sbin:$PATH

# Use sublime as the default text editor
export EDITOR='subl'

# Online Help for ZSH
unalias run-help && autoload run-help
HELPDIR=/usr/local/share/zsh/help

# Required to enable ZSH completion
fpath=(/usr/local/share/zsh-completions $fpath)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/losted/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/losted/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/losted/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/losted/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="/usr/local/Cellar/openvpn/2.4.6/sbin/openvpn:$PATH"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


# LibFFI
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export CPPFLAGS="-I/usr/local/opt/libffi/include"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
