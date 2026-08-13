xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
echo 6000 | sudo tee /sys/class/backlight/intel_backlight/brightness

# picom --backend xrender &
pulseaudio --start &
feh --bg-scale Wallpapers/wallpaper.png &

eval $(dbus-launch --sh-syntax --exit-with-session)

while true; do
    xsetroot -name "$(date +"%a %b %d %H:%M")"
    sleep 1
done &

exec /usr/local/bin/dwm
