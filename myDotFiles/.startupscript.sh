#!/bin/bash

sudo rmmod pcspkr
echo 'Speaker Removed !!'

echo
echo 'Trackpad is now Speedyy !!'
xinput set-prop 12 168 4.600000, 0.000000, 0.000000, 0.000000, 4.600000, 0.000000, 0.000000, 0.000000, 1.000000

nm-applet &
