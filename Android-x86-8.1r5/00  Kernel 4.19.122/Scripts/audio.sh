#!/system/bin/sh

# Audio init script (c) 2020 by ouija - for Toshiba WT8-B/W10-A (bytcrrt5640)


# sleep to allow for init
sleep 3


# Dirty fix for HDMI audio [not needed with hdmi.sh]
#mv /dev/snd/pcmC0D0p /dev/snd/pcmC0D0p_tmp
#mv /dev/snd/pcmC0D2p /dev/snd/pcmC0D0p

# Init headphone mic (IN2) - internal mic not working
sh /etc/scripts/toshiba/bytrt5640/mic2.txt 
# Boost mic level
alsa_amixer -c0 cset name='ADC Boost Gain' 3


# Detect if headphones connected on boot and change state if so
HEADPH_CONNECTED=$(dumpsys activity broadcasts | grep microphone | tail -n 1 | grep -m1 'state=1')
# Alternate method
#HEADPH_CONNECTED=$(dumpsys audio | grep -m1 'setWiredDeviceConnectionState( type:4 state:DEVICE_STATE_AVAILABLE')

if [ ! -z "$HEADPH_CONNECTED" ]; then
        ALSA_STATE=$(alsa_amixer -c0 sget 'Speaker' | grep -m1 'Front Left: Playback' | cut -d [ -f 4 | cut -d ] -f 1)
        if [ "$ALSA_STATE" == "on" ]; then
                alsa_amixer -c0 cset name='Speaker Switch' off
		alsa_amixer -c0 cset name='Headphone Switch' on
        fi
fi


# Get headset input device
DEVICE=$(getevent -Sv | grep -B 5 -m1 'bytcr-rt5640 Headset' | grep -m1 'add device' | cut -d : -f 2)

if [ ! -z "$DEVICE" ]; then
        sleep 1
        while true
        do

        # 0005 - headphone jack event -> 0000 is unplugged, 0004 is plugged
        JACK_DET_N=$(getevent -s 0005 $DEVICE)

        if [ $JACK_DET_N -eq 0000 ]; then
                ALSA_STATE=$(alsa_amixer -c0 sget 'Speaker' | grep -m1 'Front Left: Playback' | cut -d [ -f 4 | cut -d ] -f 1)
                if [ "$ALSA_STATE" == "off" ]; then
                        alsa_amixer -c0 cset name='Speaker Switch' on
			alsa_amixer -c0 cset name='Headphone Switch' off
                fi
        else
                ALSA_STATE=$(alsa_amixer -c0 sget 'Speaker' | grep -m1 'Front Left: Playback' | cut -d [ -f 4 | cut -d ] -f 1)
                if [ "$ALSA_STATE" == "on" ]; then
                        alsa_amixer -c0 cset name='Speaker Switch' off
			alsa_amixer -c0 cset name='Headphone Switch' on
                fi
        fi

        sleep 1
        done
fi
