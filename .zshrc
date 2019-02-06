# The following lines were added by compinstall
zstyle :compinstall filename '/home/deploy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
# End of lines configured by zsh-newuser-install

#autoload -Uz promptinit
#promptinit
#prompt redhat

PATH=$PATH:~/.local/bin
PATH=$PATH:/usr/local/go/bin
GOPATH=~/prog/go
PATH=$PATH:$GOPATH/bin

export PATH GOPATH

powerline-daemon -q
. /home/rappet/.local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

. ~/prog/z/z.sh
