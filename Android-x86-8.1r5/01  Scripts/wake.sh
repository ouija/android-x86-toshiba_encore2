#!/system/bin/sh

# Sleep fix (suspend-to-ram) script (c) 2020 by @ouija - for Toshiba WT8-B/WT10-A
log -p v -t "Wake script (c) 2020 by @ouija" "Script loaded!"

# Timeout value while asleep before trigging suspend-to-ram (s2idle) mode
TIMEOUT=30

while true
do
    # get device wakefulness state
    WAKE_STATE=$(dumpsys power | grep -m1 'mWakefulness' | cut -d = -f 2)

    # get current power state
    PWR_STATE=$(cat /sys/power/state)

    if [ "$WAKE_STATE" == "Asleep" ]; then
        # actions when device is asleep
        log -p v -t "Wake script (c) 2020 by @ouija" "Device asleep, monitoring until device is awake.."
	if [ ! -f /etc/scripts/.suspend ]; then
                touch /etc/scripts/.suspend
                #svc wifi disable
        fi
    elif [ "$WAKE_STATE" == "Awake" ] && [ -f /etc/scripts/.suspend ]; then
        # actions when device is resumed from suspend
        log -p v -t "Wake script (c) 2020 by @ouija" "Device awake after suspend, running scripts on resume.."
        rm /etc/scripts/.suspend
        #svc wifi enable
        # re-init headphones or speakers on resume
        HEADPH_CONNECTED=$(dumpsys activity broadcasts | grep microphone | tail -n 1 | grep -m1 'state=1')
    	if [ ! -z "$HEADPH_CONNECTED" ]; then
	    alsa_amixer -c0 cset name='Headphone Switch' on
	    alsa_amixer -c0 cset name='Speaker Switch' off
    	else
	    alsa_amixer -c0 cset name='Speaker Switch' on
	    alsa_amixer -c0 cset name='Headphone Switch' off
	fi
    fi
    # check sleep state every second
    sleep 1
done

