#!/bin/bash

# Where the script is run
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

# Directory to backup old dotfiles
backupdir="$HOME/dotfiles"$(date +%Y%m%d%H%M%S)
mkdir -p $backupdir

# list of files/folders to symlink in homedir
files=".aliases .bash_profile .bash_prompt .bashrc .curlrc .editorconfig .exports .functions .gitattributes .gitconfig .gitignore .screenrc .wgetrc .zshrc bin"

# Pull latest changes
git pull origin master

# Backup old files, just in case, and symlink the new!
function doIt() {
    for file in $files; do
        mv "$HOME/$file" $backupdir
        ln -s $DIR/$file "$HOME/$file"
    done
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;
