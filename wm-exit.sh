#! /bin/bash

action=$(yad --width 290 --entry --title "Exit" --window-icon "system-shutdown" \
    --center \
    --button="gtk-close:1" \
    --button="_Switch User:2" --button="gtk-ok:0" \
    --text "  Choose action:" \
    --entry-text \
    "Logout" "Reboot" "Hibernate" "Suspend" "Power Off")
ret=$?

[[ $ret -eq 1 ]] && exit 0

if [[ $ret -eq 2 ]]; then
    gdmflexiserver &
    exit 0
fi

case $action in
    Logout*) 
        case $(wmctrl -m | grep Name) in
            *IceWM*) cmd="icewm-logout" ;;
            *Openbox*) cmd="openbox --exit" ;;
            *FVWM*) cmd="FvwmCommand Quit" ;;
            *Metacity*) cmd="gnome-save-session --kill" ;; 
            *) exit 1 ;;
        esac
        ;;
    Reboot*) cmd="dbus-send --system --print-reply --dest=\"org.freedesktop.ConsoleKit\" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Restart" ;;
    Hibernate*) cmd="dbus-send --system --print-reply --dest=\"org.freedesktop.UPower\" /org/freedesktop/UPower org.freedesktop.UPower.Hibernate" ;;
    Suspend*) cmd="dbus-send --system --print-reply --dest=\"org.freedesktop.UPower\" /org/freedesktop/UPower org.freedesktop.UPower.Suspend" ;;
    Power*) cmd="dbus-send --system --print-reply --dest=\"org.freedesktop.ConsoleKit\" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Stop" ;;
    *) exit 1 ;;        
esac

eval exec $cmd
