#!/bin/bash

case "$(printf 'Shutdown\nReboot\nLock\nLogout' | dmenu -i -p 'Choose' -fn JetBrainsMonoNerdFont -nb '#101010' -nf '#d4d4d4' -sb '#808080' -sf '#000000' )" in

    'Shutdown') sudo poweroff ;;
    'Reboot') sudo reboot ;;
    'Lock') slock ;;
    'Logout') i3-msg exit ;;
    *) exit 1 ;;
esac
