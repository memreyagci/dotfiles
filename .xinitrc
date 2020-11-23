udiskie&
flameshot&
xcompmgr&
setxkbmap -layout us,gb,tr,ar
setxkbmap -option 'grp:alt_shift_toggle'
dunst -config $HOME/.config/dunst/dunstrc &
exec check-hostname
exec xrdb $HOME/.Xresources
