#
# ~/.bash_profile
#

[[ -f ~/.config/bash/bashrc ]] && . ~/.config/bash/bashrc

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx $XINITRC
fi
