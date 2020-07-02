#!/bin/bash

backup_file()
{
	if [ -f $1 -a ! -h $1 ]; then
		echo "Backing up %1 to ${1}_old"
		mv $1 ${1}_old
	fi

}

set -e

repo=$(pwd)

pushd ~

backup_file .zshrc
ln -sf ${repo}/.zshrc .zshrc

backup_file .vimrc
ln -sf ${repo}/.vimrc .vimrc

backup_file .tmux.conf
ln -sf ${repo}/.tmux.conf .tmux.conf

mkdir -p .vim

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

backup_file .editorconfig
ln -sf ${repo}/.editorconfig .editorconfig

backup_file .config/powerline/config.json
mkdir -p ~/.config/powerline/config.json
ln -sf ${repo}/powerline-config.json ~/.config/powerline/config.json

vim +PluginInstall +qall

popd
