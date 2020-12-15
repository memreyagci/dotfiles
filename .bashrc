#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash prompt variables
prompt_start='['
prompt_end=']'
username='\u'
hostname='\h'
cwd='\w'
prompt_symbol='\$'

# Prompt colors
col_1='\[\e[1;38;5;130m\]'
col_2='\[\e[1;38;5;181m\]'
col_3='\[\e[1;38;5;160m\]'
col_4='\[\e[1;38;5;46m\]'
yellow='\[\e[1;33m\]'
cyan='\[\e[1;36m\]'
green='\[\e[1;32m\]'
purple='\[\e[01;34m\]'
col_end='\[\e[0m\]'

git_data() {
    if [ -d .git ]
    then
        git status 2> /dev/null | grep "working tree clean" &> /dev/null
        if [ $? -ne 0 ]; then STATUS="!"; else STATUS=""; fi
        echo -n " (`git branch 2>/dev/null | grep '^*' | colrm 1 2`$STATUS)"
    fi
}

PS1="$col_3$prompt_start$col_end $col_1$username$col_end$col_2@$col_end$col_1$hostname$col_end $col_4$cwd$col_end$purple\$(git_data)$col_end $col_3$prompt_end$col_end$prompt_symbol "

set -o vi # Vim mode for bash
bind '"\C-l": clear-screen'

shopt -s autocd # Auto cd when a directory name is typed

# Aliases
alias ls='ls -l --group-directories-first --color=auto'
alias uu='udiskie-umount'
alias um='udiskie-mount'
alias dotfiles='/usr/bin/git --git-dir=$HOME/Documents/repos/dotfiles --work-tree=$HOME'
alias irssi='irssi --config=$HOME/.config/irssi/config'
alias newsboat='newsboat; pkill -RTMIN+11 dwmblocks'
alias wget='wget --hsts-file=$XDG_CACHE_HOME/wget-hsts'
alias ovim='nvim $(fzf -e)'

export EDITOR=nvim
export PATH=$HOME/.local/bin:$HOME/.local/bin/statusbar:$HOME/.local/bin/cronjobs:$PATH
export TERMINAL=st
export BROWSER=firefox
export BROWSER2=brave

export XDG_CONFIG_HOME=$HOME/.config

export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export IPYTHONDIR=$XDG_CONFIG_HOME/jupyter
export JUPYTER_CONFIG_DIR=$XDG_CONFIG_HOME/jupyter 
export LESSHISTFILE=-
export TERMINFO=$XDG_DATA_HOME/terminfo
export TERMINFO_DIRS=$XDG_DATA_HOME/terminfo:/usr/share/terminfo
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
