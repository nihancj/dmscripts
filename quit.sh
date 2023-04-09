#! /bin/sh

choice=$(printf '%s\n' " Logout" " Shutdown" " Restart" " Suspend" | dmenu -i -n -p 'Exit? ')

# What to do when
if [ "$choice" = " Logout" ];then
        loginctl kill-session self
elif [ "$choice" = " Shutdown" ]; then
        loginctl poweroff
elif [ "$choice" = " Restart" ];then
        loginctl reboot
elif [ "$choice" = " Sleep" ];then
        loginctl suspend
else
    exit 1
fi
