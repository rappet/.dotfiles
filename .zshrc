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

powerline-daemon -q
. /home/rappet/.local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

. ~/.dotfiles/z/z.sh

autoload -U +X bashcompinit && bashcompinit

complete -o nospace -C /home/rappet/.local/bin/mc mc
complete -o nospace -C /usr/local/bin/terraform terraform

. ~/.dotfiles/exports.sh
