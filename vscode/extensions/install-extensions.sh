#!/bin/bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

FILENAME=$DOTFILES_DIR/extensions.txt

ALL_LINES=`cat $FILENAME`

for line in $ALL_LINES;
do
    code --install-extension $line
done
