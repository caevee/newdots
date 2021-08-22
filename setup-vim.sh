#!/bin/sh

sudo apt install git vim -y

FILE=~/.vimrc
if [ -f "$FILE" ]; then
    echo "Back up your .vimrc first"
else 
	wget -O $FILE https://raw.githubusercontent.com/caevee/newdots/main/.vimrc
fi

FILE2=~/.vim/bundle/Vundle.vim
if [ -f "$FILE2" ]; then
	echo "Vundle already installed"
else 
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

