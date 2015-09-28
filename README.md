# losted’s dotfiles

## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`) The bootstrap script will pull in the latest version and copy some files to your home folder.

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

When setting up a new Mac, run the setup script to install, custom os configuration, apps and fonts. The games are not included by default.

```bash
osx/setup.sh
```

### Or install special part

```bash
osx/config.sh
osx/apps.sh
osx/fonts.sh
osx/games.sh
```

### Or specific app

```bash
osx/apps/sublimetext3.sh
osx/apps/transmit.sh
```

### Todo

* Make ALT+TAB switch to next window
* Setup the favorites in the finder with Projects and Screenshots
* Import license/projets and other sensitive data
* Make download a folder opening in list mode and add the Application folder back to the dock and make it pretty too 
