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

popd
