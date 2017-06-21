#!/bin/bash

function xscale {
  
    case $1 in
        els)
            xrandr --output HDMI-1 --auto --scale 1.5x1.5 --panning 3840x2160+3840+0 --right-of eDP-1
            xrandr --output eDP-1 --auto --scale 0.7x0.7
            feh --recursive --randomize --bg-scale ~/.config/variety/Downloaded/*
            ;;
        ihs)
            xrandr --output DP-1 --auto --left-of eDP-1
            feh --recursive --randomize --bg-scale /mnt/e/ashic/Pictures/backgrounds/best/*
            ;;
        lap)
            xrandr --output eDP-1 --auto --scale 1x1
            ;;
        home)
            xrandr --output DP-1 --left-of eDP-1 --auto
            ;;
        *)
            echo $"Usage: $0 [profile]"
            exit 1
    esac

}
