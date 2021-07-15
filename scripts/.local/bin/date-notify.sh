#!/bin/sh
#
# Send dunst notification informing the current date and time
# continuously (supposed to be used with the timeout command and
# notification configuration so it displays for the desired amount of
# time).
#
# Found the basis for this code here:
# https://wiki.archlinux.org/title/Desktop_notifications#Replace_previous_notification

while true; do
    date=$(date '+%Y年%b%d日 (%a) ⏰ %H:%M:%S')
    dunstify "日付と時刻" "$date" -h string:x-canonical-private-synchronous:my-notification
    sleep 1
done
