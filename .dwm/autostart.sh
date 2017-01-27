#!/bin/bash

check_process(){
    #PROCESS_NUM => get the process number regarding the given thread name
    PROCESS_NUM=$(ps -ef | grep "$1" | grep -v "grep" | wc -l)
    if [ $PROCESS_NUM -eq 0 ];
    then
       $1 &
    fi
}

i3-msg workspace 'term'
xflux -z 45036
( /home/jonathan/.screenlayout/default.sh) &
xsetroot -solid black
(/home/jonathan/bin/auto-rotate-wallpaper) &
xset -dpms; xset s off &
(sleep 1s && check_process compton) &
(sleep 1s && /usr/bin/xscreensaver -no-splash) &

(sleep 3s && check_process volumeicon) &
(sleep 4s && check_process nm-applet) &


## Set keyboard settings - 250 ms delay and 25 cps (characters per second) repeat rate.
## Adjust the values according to your preferances.
xset r rate 250 25 &

## Turn on/off system beep
xset b off &
# Autostart the Dropbox deamon
(sleep 10s && dropbox) &
rm ~/.config/weather
(sleep 45s && ~/bin/weather.py > ~/.config/weather) &
d=$(sort $HOME/.cache/zsh/dirs | uniq )
rm "$HOME/.cache/zsh/dirs"
echo "$d" > $HOME/.cache/zsh/dirs
emacs --daemon=supermacs

z=$(cat $HOME/.tmux.d/digests | tail -n $(ls -1 $HOME/.tmux.d/ | wc -l) )
rm "$HOME/.tmux.d/digests"
echo "$z" > $HOME/.tmux.d/digests
exit
