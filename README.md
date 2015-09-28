# losted’s dotfiles

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`, with `~/dotfiles` as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/losted/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source bootstrap.sh
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/losted/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh,LICENSE-MIT.txt}
```

To update later on, just run that command again.

### Setup a new mac

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
osx/setup.sh
```

### Or install special parts

```bash
osx/config.sh
osx/apps.sh
osx/fonts.sh
osx/games.sh
```

### Todo

* Make ALT+TAB switch to next window
* Setup the favorites in the finder with Projects and Screenshots
* Import license/projets and other sensitive data
* Make download a folder opening in list mode and add the Application folder back to the dock and make it pretty too 
