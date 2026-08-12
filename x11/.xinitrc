xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1

while true; do
    xsetroot -name "$(date +"%a %b %d %H:%M")"
    sleep 1
done &

exec /usr/local/bin/dwm
