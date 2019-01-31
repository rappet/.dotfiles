# .dotfiles

My dotfiles.

To install them just clone the repo and symlink the wanted dotfiles.

```
cd
$ git clone https://git.rappet.de/rappet/.dotfiles.git
ln -s ~/.vimrc ~/.dotfiles/.vimrc
ln -s ~/.tmux.conf ~/.dotfiles/.tmux.conf
ln -s ~/.zshrc ~/.dotfiles/.zshrc
ln -s ~/.config/i3/config ~/.dotfiles/i3-config
```

If you use the vim dotfiles, you sould install Vundle, run `:PluginInstall`
in vim and compile YouCompleteMe using `~/.vim/bundle/YouCompleteMe/install.py`.
