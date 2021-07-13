BATPATH=/sys/class/power_supply/BAT1
BAT_FULL=$BATPATH/energy_full
BAT_NOW=$BATPATH/energy_now
bf=$(cat $BAT_FULL)
bn=$(cat $BAT_NOW)

export XDG_RUNTIME_DIR=/run/user/$(id -u) 
export DISPLAY=:0
if [ $(( 100 * $bn / $bf )) -gt 97 ]
then
	    notify-send -a "Battery Status" -u low "Remove from Charging"
    fi


if [ $(( 100 * $bn / $bf )) -lt 10 ]
then
	    notify-send -a "Battery Status" -u critical "Laptop about to Die"
    fi
