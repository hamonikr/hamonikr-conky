#!/bin/bash
####################################################################
# Filename:      conkytoggle.sh
# Purpose:       toggle conky on/off from fluxbox menu
# Authors:       Kerry and anticapitalista, secipolla for antiX
# Authors:       modified for mx linux version 17 by dolphin oracle
# Authors:       modified by Kevin Kim (2020-2024)
####################################################################

main()
{
if pidof conky | grep [0-9] > /dev/null
 then
  killall conky 
  autostart_off
 else
    test=$(grep -q "conky -c" "$HOME"/.conky/conky-startup.sh && echo $?)
    if [ "$test" = "0" ]; then
         launch_conky
         autostart_on
    else
        if [ -x "$(command -v conky-manager)" ]; then
            conky-manager &
        elif [ -x "$(command -v conky-manager2)" ]; then
            conky-manager2 &
        else
            echo "Neither conky-manager nor conky-manager2 is available"
        fi
    fi
fi
}

launch_conky()
{    

CONKY_TEMP=$(mktemp --tmpdir=${XDG_RUNTIME_DIR:-/tmp} conky-startup.sh.XXXXXXXXXXXX)

sed -e 's/^[[:space:]]*sleep.*/sleep 1s/' "$HOME"/.conky/conky-startup.sh > $CONKY_TEMP

sh $CONKY_TEMP

rm $CONKY_TEMP

}

autostart_off()
{
    
if [ -e "$HOME"/.config/autostart/conky.desktop ]; then 
    sed -i -r s/Hidden=.*/Hidden=true/ "$HOME"/.config/autostart/conky.desktop
fi

}

autostart_on()
{
    
if [ -e $HOME/.config/autostart/conky.desktop ]; then 
    sed -i -r s/Hidden=.*/Hidden=false/ $HOME/.config/autostart/conky.desktop
fi

}

main
exit 0
