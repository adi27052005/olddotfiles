#!/bin/bash


case "$(printf 'Polybar\nPicom\nAlacritty\ni3wm' | dmenu -i -p 'Choose' -fn JetBrainsMonoNerdFont -nb '#101010' -nf '#d4d4d4' -sb '#808080' -sf '#000000' )" in

    'Polybar') 
        case "$(printf 'Reload\nConfig' | dmenu -i -p 'Choose' -fn JetBrainsMonoNerdFont -nb '#101010' -nf '#d4d4d4' -sb '#808080' -sf '#000000')" in
        
        'Reload') 
            $HOME/.config/polybar/launch.sh ;;
        'Config')
            alacritty -e nvim $HOME/.config/polybar/config.ini ;;

        *) exit 1 ;;

        esac ;;

    'Picom')
        case "$(printf 'Config' | dmenu -i -p 'Choose' -fn JetBrainsMonoNerdFont -nb '#101010' -nf '#d4d4d4' -sb '#808080' -sf '#000000')" in
        
        'Config')
            alacritty -e nvim $HOME/.config/picom.conf ;;

        *) exit 1 ;;

        esac ;;

    'Alacritty')
        case "$(printf 'Open\nConfig' | dmenu -i -p 'Choose' -fn JetBrainsMonoNerdFont -nb '#101010' -nf '#d4d4d4' -sb '#808080' -sf '#000000')" in
        
        'Open')
            alacritty ;;

        'Config')
            alacritty -e nvim $HOME/.config/alacritty/alacritty.yml ;;

        *) exit 1 ;;

        esac ;;

    'i3wm')
        case "$(printf 'Config\nQuit' | dmenu -i -p 'Choose' -fn JetBrainsMonoNerdFont -nb '#101010' -nf '#d4d4d4' -sb '#808080' -sf '#000000')" in
        
        'Config')
            alacritty -e nvim $HOME/.config/i3/config ;;

        'Quit')
            i3-msg exit ;;

        *) exit 1 ;;

        esac ;;



    *) exit 1 ;;

esac
