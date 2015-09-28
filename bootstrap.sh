#!/usr/bin/env bash

# Directory to backup old dotfiles
backupdir=~/dotfiles$(date +%Y%m%d%H%M%S)
mkdir $backupdir

# list of files/folders to symlink in homedir
files=" .aliases .bash_profile .bash_prompt .bashrc .curlrc .editorconfig .exports .functions .git .gitattributes .gitconfig .gitignore .hgignore .inputrc .screenrc .wgetrc .zshrc bin/"

git pull origin master;

function doIt() {
	for file in $files; do
	    mv ~/$file $backupdir
	    ln -s $file ~/$file
	done
	source ~/.bash_profile;
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
