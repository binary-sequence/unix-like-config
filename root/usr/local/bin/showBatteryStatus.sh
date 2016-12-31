#!/bin/bash

batteryFile='/org/freedesktop/UPower/devices/battery_BAT1'

if [ ! -f /sys/class/power_supply/BAT1/uevent ]; then
  echo "n/d"
  exit 1
fi

state=`upower -i $batteryFile | grep "state" | sed 's/ //g; s/charging/c/; s/discharging/d/' | cut -d: -f2`
percentage=`upower -i $batteryFile | grep "percentage" | sed 's/ //g' | cut -d: -f2`
timeTo=`upower -i $batteryFile | grep "time to" | sed 's/ //g; s/,[0-9]*//; s/minutes/min/' | cut -d: -f2`

echo "$state:$timeTo:$percentage"
