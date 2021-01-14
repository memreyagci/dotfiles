#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash prompt
[ -f "$XDG_CONFIG_HOME/shell/promptrc" ] && source "$XDG_CONFIG_HOME/shell/promptrc"

set -o vi # Vim mode for bash
bind '"\C-l": clear-screen'

shopt -s autocd # Auto cd when a directory name is typed

# Aliases
[ -f "$XDG_CONFIG_HOME/shell/aliasrc" ] && source "$XDG_CONFIG_HOME/shell/aliasrc"

# Environmental variables
[ -f "$XDG_CONFIG_HOME/shell/variablesrc" ] && source "$XDG_CONFIG_HOME/shell/variablesrc"

LFCD="$XDG_CONFIG_HOME/lf/lfcd.sh" #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi
