#!/bin/bash

while true; do

	# Fetch the current time date
	TIME=$(date '+%I:%M %p') 
	DATE=$(date '+%B %d, %Y')

	# Fetchrthe battery percentage
	BATTERY_PERCENT=$(cat /sys/class/power_supply/BAT0/capacity)

	# Update the dwm status bar
	xsetroot -name "Battery: ${BATTERY_PERCENT}% | ${DATE} | ${TIME}"

	# Wait before updating again
	sleep 30
done

