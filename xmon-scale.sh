#!/bin/bash

function xscale {
  
    case $1 in
        els)
            xrandr --output HDMI-1 --auto --scale 1.7x1.7 --output eDP-1 --auto --scale 0.7x0.7 --left-of HDMI-1
            ;;
        lap)
            xrandr --output eDP-1 --auto --scale 1x1
        *)
            echo $"Usage: $0 [profile]"
            exit 1
    esac

}
