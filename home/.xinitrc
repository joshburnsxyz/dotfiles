workstation_layout.sh &
nitrogen --restore &

while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
do
    sleep 1
done &

exec dwm
