#!/bin/bash

# Get full path of the script directory
dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# Link the dotfiles
files="vimrc"
for f in $files; do
    ln -s "$dir/$f" ~/."$f"
done

