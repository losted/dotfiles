#!/usr/bin/env bash

# Check for Homebrew installation
if test ! $(which brew)
then
  # Install homebrew
  osx/apps/homebrew.sh
fi

osx/games/leagueoflegends.sh
osx/games/steam.sh