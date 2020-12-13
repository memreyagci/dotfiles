#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

git_data() {
    if [ -d .git ]
    then
        git status 2> /dev/null | grep "working tree clean" &> /dev/null
        if [ $? -ne 0 ]; then STATUS="!"; else STATUS=""; fi
        echo -n " (`git branch 2>/dev/null | grep '^*' | colrm 1 2`$STATUS)"
    fi
}
                                                

#PS1='[\u@\h \W]\$ '
#PS1='\[\e[01;36m\][ \u@\h\[\e[01m\] \[\e[01;32m\]\w \[\e[01;36m\]]\[\e[00m\]$ '
PS1='\[\e[01;33m\][ \e[01;36m\]\u@\h\[\e[01m\] \[\e[01;32m\]\w\[\e[01;34m\]$(git_data) \e[01;33m\]]\[\e[00m\]$ '

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

export EDITOR=vim
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
