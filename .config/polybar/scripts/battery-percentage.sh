#!/bin/bash
BATTERY_LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)
BATTERY_STATE=$(cat /sys/class/power_supply/BAT0/status)
#BATTERY_LEVEL=$1
#if [ $BATTERY_STATE == "Charging" ]; then
if [ "$BATTERY_STATE" == "Charging" ]; then
	FINAL="${BATTERY_LEVEL}% [$BATTERY_STATE]"
else
	FINAL="${BATTERY_LEVEL}%"
fi

#if [ $BATTERY_STATE == "Discharging" ]; then
#	if [ $BATTERY_LEVEL = 95 ]; then
#		zenity --info --text "<span background=\"red\" color=\"white\"> Charging low </span>"	
#	fi
#fi

#echo "BAT - $FINAL"

#ramp-capacity-0 = 
#ramp-capacity-1 = 
#ramp-capacity-2 = 
#ramp-capacity-3 = 
#ramp-capacity-4 = 
#animation-charging-0 = 
#animation-charging-1 = 
#animation-charging-2 = 
#animation-charging-3 = 
#animation-charging-4 = 
#animation-charging-framerate = 600


if [ $BATTERY_LEVEL -le 25 ]; then
	BATTERY_ICON=''
elif [[ $BATTERY_LEVEL -gt 25 ]] && [[ $BATTERY_LEVEL -le 45 ]]; then
		BATTERY_ICON=''
elif [[ $BATTERY_LEVEL -gt 45 ]] && [[ $BATTERY_LEVEL -le 60 ]]; then
		BATTERY_ICON=''
elif [[ $BATTERY_LEVEL -gt 60 ]] && [[ $BATTERY_LEVEL -le 85 ]]; then
		BATTERY_ICON=''
elif [[ $BATTERY_LEVEL -gt 85 ]] && [[ $BATTERY_LEVEL -le 100 ]]; then
		BATTERY_ICON=''
else
	BATTERY_ICON=''
fi


echo "$BATTERY_ICON  $FINAL" 
