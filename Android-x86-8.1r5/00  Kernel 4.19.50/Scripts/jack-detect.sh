#!/system/bin/sh

# sleep to allow for init
sleep 3

# Dirty fix for HDMI audio [not needed with hdmi.sh]
#mv /dev/snd/pcmC0D0p /dev/snd/pcmC0D0p_tmp
#mv /dev/snd/pcmC0D2p /dev/snd/pcmC0D0p


# Detect if headphones connected on boot and change state if so
HEADPH_CONNECTED=$(dumpsys audio | grep -m1 'setWiredDeviceConnectionState( type:4 state:DEVICE_STATE_AVAILABLE')

if [ ! -z "$HEADPH_CONNECTED" ]; then
        currentState=$(alsa_amixer -c0 sget 'Speaker' | grep -m1 'Front Left: Playback' | cut -d [ -f 4 | cut -d ] -f 1)
        if [ "$currentState" == "on" ]; then
                alsa_amixer -c0 cset name='Speaker Switch' off
        fi
fi


# get headset input device
DEVICE=$(getevent -Sv | grep -B 5 -m1 'bytcr-rt5640 Headset' | grep -m1 'add device' | cut -d : -f 2)

if [ ! -z "$DEVICE" ]; then
        sleep 1
        while true
        do

        # 0005 - headphone jack event -> 0000 is unplugged, 0004 is plugged
        JACK_DET_N=$(getevent -s 0005 $DEVICE)

        if [ $JACK_DET_N -eq 0000 ]; then
                currentState=$(alsa_amixer -c0 sget 'Speaker' | grep -m1 'Front Left: Playback' | cut -d [ -f 4 | cut -d ] -f 1)
                if [ "$currentState" == "off" ]; then                        
                        alsa_amixer -c0 cset name='Speaker Switch' on                        
                fi
        else
                currentState=$(alsa_amixer -c0 sget 'Speaker' | grep -m1 'Front Left: Playback' | cut -d [ -f 4 | cut -d ] -f 1)
                if [ "$currentState" == "on" ]; then
                        alsa_amixer -c0 cset name='Speaker Switch' off
                fi
        fi

        sleep 2

        done
fi
