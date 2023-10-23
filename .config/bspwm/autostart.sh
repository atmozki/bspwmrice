#!/usr/bin/env bash

## General ------------------------------------------------------------------------#

## Bspwm config directory
BSPDIR="$HOME/.config/bspwm"

## Sxhkd config directory
SXHDIR="$HOME/.config/sxhkd"

## Export bspwm/bin dir to PATH
export PATH="${PATH}:$HOME/.config/bspwm/bin"

## Run java applications without issues
export _JAVA_AWT_WM_NONREPARENTING=1

## Configurations ------------------------------------------------------------------#

## Manager Workspaces

# Xrandr config (Set resolution)

if [[ $(xrandr --query | grep 'primary') ]]; then
   xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --off
fi

# Autostart-----------------------------------------------------------------------#

# Kill if already running
killall -9 sxhkd dunst polybar conky

# polkit agent
if [[ ! `pidof polkit-gnome` ]]; then
	/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
fi

# Lauch keybindings daemon
sxhkd -c "$SXHDIR"/sxhkdrc &

# Start network applet
nm-applet &

# Fix cursor
xsetroot -cursor_name left_ptr

# Polybar autostart
$HOME/.config/polybar/launch.sh

# Picom autostart
picom -b &

# Start conky
conky -c $HOME/.config/conky/config

# Start Doom Emacs
emacs --daemon &

# Start mpd
# exec mpd &

# Other applications
# nitrogen --restore &
# run caffeine &
# run dropbox &
# run discord &


## Wallpapers ---------------------------------------------------------------#

## Get the wallpaper
feh --bg-fill --randomize ~/Pictures/Walls/Desktop/
