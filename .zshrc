# ZSH Theme
ZSH_THEME="random"

# ZSH Plugins
plugins=(git colored-man colorize github jira vagrant virtualenv python brew osx zsh-syntax-highlighting bower composer grunt gulp heroku history laravel5 nmap node npm phing rsync ssh-agent sublime )

# Export our local bin PATH
export PATH="/usr/local/bin:$PATH"

# Use sublime as the default text editor
export EDITOR='subl'

# Online Help for ZSH
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# Required to enable ZSH completion
fpath=(/usr/local/share/zsh-completions $fpath)
