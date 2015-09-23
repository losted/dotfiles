# Path to oh-my-zsh installation
export ZSH=/Users/losted/.oh-my-zsh

# ZSH Theme
ZSH_THEME="random"

# ZSH Plugins
plugins=(git colored-man colorize github jira vagrant virtualenv python brew osx zsh-syntax-highlighting bower composer grunt gulp heroku history laravel5 nmap node npm phing rsync sublime )

# Export our local bin PATH
export PATH="~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH"

# Use sublime as the default text editor
export EDITOR='subl'

# Online Help for ZSH
unalias run-help && autoload run-help
HELPDIR=/usr/local/share/zsh/help

# Required to enable ZSH completion
fpath=(/usr/local/share/zsh-completions $fpath)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh
