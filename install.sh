#!/bin/bash

# Get full path of the script directory
dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# Link the dotfiles
files="gitignore_global vimrc"
dirs="emacs.d lein"

for f in $files; do
    if [ -e ~/."$f" ]
    then
        echo "~/.$f exists"
    else 
        ln -sv "$dir/$f" ~/."$f"
    fi
done
for d in $dirs; do
    if [ -e ~/."$d" ]
    then
        echo "~/.$d exists"
    else 
        ln -sv "$dir/$d/" ~/."$d"
    fi
done

