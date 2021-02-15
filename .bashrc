#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export XDG_CONFIG_HOME=$HOME/.config 
    
# Source files from $XDG_CONFIG_HOME/shell
[ -f "$XDG_CONFIG_HOME/shell/promptrc" ] && source "$XDG_CONFIG_HOME/shell/promptrc" # Bash prompt
[ -f "$XDG_CONFIG_HOME/shell/aliasrc" ] && source "$XDG_CONFIG_HOME/shell/aliasrc" # Aliases
[ -f "$XDG_CONFIG_HOME/shell/variablesrc" ] && source "$XDG_CONFIG_HOME/shell/variablesrc" # Environmental variables

bind '"\C-l": clear-screen'
set -o vi # Vim mode for bash
shopt -s autocd # Auto cd when a directory name is typed
HISTFILE=$XDG_CONFIG_HOME/shell/bash_history

LFCD="$XDG_CONFIG_HOME/lf/lfcd.sh" #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi
