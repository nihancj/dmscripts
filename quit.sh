#! /bin/sh

choice=${1:-$(printf '%s\n' " Logout" " Shutdown" " Restart" " Sleep" " Hibernate"| dmenu -i -n -p 'Exit? ')}

printf $choice
# What to do when
if [ "$choice" = " Logout" ];then
		# dwm-msg run_command quit
		loginctl kill-session self
elif [ "$choice" = " Shutdown" ]; then
		loginctl poweroff
elif [ "$choice" = " Restart" ];then
		loginctl reboot
elif [ "$choice" = " Sleep" ];then
		doas loginctl suspend
elif [ "$choice" = " Hibernate" ];then
		loginctl hibernate
else
    exit 1
fi
