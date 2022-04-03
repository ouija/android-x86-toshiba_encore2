#!/system/bin/sh

# Sleep fix (suspend-to-ram) script (c) 2020 by @ouija - for Toshiba WT8-B/WT10-A
log -p v -t "Sleep script (c) 2020 by @ouija" "Script loaded!"

# Timeout value while asleep before trigging suspend-to-ram (s2idle) mode
TIMEOUT=30

while true
do
    # get device wakefulness state
    WAKE_STATE=$(dumpsys power | grep -m1 'mWakefulness' | cut -d = -f 2)

    # get current power state
    PWR_STATE=$(cat /sys/power/state)

    # check download activity
    #UPLOAD=$(dumpsys netstats | grep -m1 'tb=' | cut -d = -f 5 | cut -d " " -f 1)
    #DOWNLOAD=$(dumpsys netstats | grep -m1 'rb=' | cut -d = -f 3 | cut -d " " -f 1)
    UL="$(ifconfig wlan0|grep "TX bytes"|cut -d ":" -f 3)"
    DL="$(ifconfig wlan0|grep "RX bytes"|cut -d ":" -f 2|cut -d " " -f 1)"
    UPLOAD="$(($UL + 500000))"
    DOWNLOAD="$(($DL + 500000))"


    if [ "$WAKE_STATE" == "Asleep" ]; then
        # actions when device is asleep
        log -p v -t "Sleep script (c) 2020 by @ouija" "Device asleep, monitoring network activity for $TIMEOUT sec before entering s2idle mode.."
        # wait timeout before doing anything
        sleep $(($TIMEOUT - 1))
        if  [ "$PWR_STATE" == "freeze mem" ] && [ "$DOWNLOAD" -gt "$(ifconfig wlan0|grep "RX bytes"|cut -d ":" -f 2|cut -d " " -f 1)" ] && [ "$UPLOAD" -gt "$(ifconfig wlan0|grep "TX bytes"|cut -d ":" -f 3)" ]; then
            # verify device wakefulness state as asleep
            WAKE_STATE_VERIFY=$(dumpsys power | grep -m1 'mWakefulness' | cut -d = -f 2)
            # verify current power state as default
            PWR_STATE_VERIFY=$(cat /sys/power/state)
            if [ "$WAKE_STATE_VERIFY" == "Asleep" ] && [ "$PWR_STATE_VERIFY" == "freeze mem" ]; then
                log -p v -t "Sleep script (c) 2020 by @ouija" "No network activity -> Entering s2idle (suspend-to-ram) mode.."
                touch /etc/scripts/.suspend
                #svc wifi disable
        	# all systems go, suspend-to-ram!
                echo mem > /sys/power/state
            fi
        else
            log -p v -t "Sleep script (c) 2020 by @ouija" "Network activity detected -> preventing s2idle mode.."
        fi
    elif [ "$WAKE_STATE" == "Awake" ] && [ -f /etc/scripts/.suspend ]; then
        # actions when device is resumed from suspend
        log -p v -t "Sleep script (c) 2020 by @ouija" "Device awake after suspend, running scripts on resume.."
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

