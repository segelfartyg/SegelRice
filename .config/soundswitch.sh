#!/bin/bash

sink1="alsa_output.usb-RODE_Microphones_RODE_NT-USB-00.analog-stereo"
sink2="alsa_output.usb-Focusrite_Scarlett_2i2_USB-00.HiFi__Line1__sink"

# Get current default sink
current=$(pactl get-default-sink)

# Toggle to the other sink
if [ "$current" = "$sink1" ]; then
    pactl set-default-sink "$sink2"
else
    pactl set-default-sink "$sink1"
fi
# chmod +x ~/.config/hypr/toggle-audio.sh