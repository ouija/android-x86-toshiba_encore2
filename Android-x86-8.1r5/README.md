# [Android-x86](https://www.android-x86.org) on the Toshiba Encore 2 [[WT8-B](https://www.toshiba.ca/productdetailpage.aspx?id=2147499291)/[WT10-A](https://support.dynabook.com/support/staticContentDetail?contentId=4012954)]

Android-x86_64 [v8.1r5] running on a Toshiba Encore 2 [WT8-B/WT10-A] tablet.

----------------------------------------------------------------------------------

## Installation Instructions

* [Download lastest pre-built image here](https://androidfilehost.com/?fid=10763459528675583620) &nbsp; | &nbsp; [View All Builds](https://www.androidfilehost.com/?w=files&flid=319636)
* Use [Rufus](https://rufus.ie/) to create USB drive installer.
* Use OTG adapter to connect USB drive and keyboard to device and press `F12` at bios and select USB drive to boot from.
* Select `Live` to test Android directly from USB, or choose `Auto-Install` to install Android-x86 to the internal storage (`mmcblk1`).
* If installing, choose the internal storage device (`mmcblk1`) and click `Yes` and allow for installation to finish and then select `reboot`.
* **Using `Auto Install` method is <ins>recommended</ins> to properly enable suspend-to-ram and create the required swap patition!**
* Note you should login to a Google account and update all pre-installed applications to ensure proper functionality after fresh install.
* Enjoy your WT8-B/WT10-A running Android-x86!


## Build Instructions

To build from source, follow the instructions at [Android-x86.org](https://www.android-x86.org/source.html)

* Patched 4.19.122 kernel with [all patches](./00%20%20Kernel%204.19.122/Patches).
* Edited [kernel config file](./00%20%20Kernel%204.19/android-x86_64_defconfig) (`./kernel/arch/x86/configs/android-x86_64_defconfig`) to enable backlight/brightness control and hibernation:
```
CONFIG_PWM_LPSS=y
CONFIG_PWM_LPSS_PCI=y
CONFIG_PWM_LPSS_PLATFORM=y
CONFIG_HIBERNATION=y
```
* Replaced default `rtl8723bs` driver with [youling257's version](https://github.com/youling257/rockchip_wlan) and compiled from source as per [these instructions](https://groups.google.com/g/android-x86/c/iwSFhlLyW7A/m/kSxTf-rBAwAJ).
* Added `acpi_backlight=vendor` boot args to GRUB (`android.cfg`) to resolve issues with s2idle mode _(fixes no display when resume from sleep)_.
* Added `sdhci.debug_quirks=0x10000` boot arg to GRUB (`android.cfg`) to resolve SD card read-only issue.
* Updated `0-auto-detect` script in `initrd.img` to modprobe `gpio_keys` and `hid_multitouch` which sometimes [fail to autoload](https://groups.google.com/g/android-x86/c/5WG0tfojGhU) properly.
* Updated `/system/etc/init.sh` startup script and added `WT8-B/WT10-A` to `init_hal_sensors` function to properly initalize accelerometers _(screen rotation and gyroscope)_.
* Updated `/system/etc/init.sh` startup script and added `WT8-B/WT10-A` to `do_bootcomplete` function to run custom scripts _(enable headphone switching, suspend-to-ram, etc)_.
* Enabled `navtivebridge` support by default and included `houdini` in the pre-built image, and fixed url link issue with `/system/bin/enable_nativebridge` script.
* Updated `build.prop` with optimizations for better GPU and system performance.
* Removed `taskbar`, `calibration` and `developer tools` apps from pre-built image.
* Updates Android-x86 GRUB loader with prettier theme.
* Added `ES File Exploer` to pre-built image.
* Added `nano` to pre-built image.


## Recent Bugfixes and Improvments

* [11-13-2020](https://androidfilehost.com/?fid=10763459528675583620):
	* Improved power consumption / standby mode by enabling proper *suspend-to-ram* functionality!
		* Added `/etc/scripts/sleep.sh` script to trigger suspend-to-ram after 1min of sleeping w/o network activity.
		* Note: Device/BIOS doesn't support S3 *(mem_sleep->deep)* and [resume from hibernation](https://www.kernel.org/doc/Documentation/power/interface.txt), but does support suspend-to-ram/s2idle.
	* Improved boot time by removing `AUTOLOAD=old` boot arg and using [newer autoloading](https://groups.google.com/g/android-x86/c/5WG0tfojGhU) method
		* Updated `0-auto-detect` script in `initrd.img` to modprobe `gpio_keys` and `hid_multitouch` which sometimes fail to autoload properly.
	* Re-applied some kernel patches for improved device support:
		* Applied `drm-i915-Disable-preemption-and-sleeping-while-using-the-punit-sideband` patch [(more info)](https://www.phoronix.com/forums/forum/software/mobile-linux/1096936-intel-baytrail-cherrytrail-systems-can-now-correctly-hibernate-again-under-linux#post1096999)
		* Applied `1-2-extcon-intel-cht-wc-Make-charger-detection-co-existed-with-OTG-host-mode` and `2-2-extcon-intel-cht-wc-Enable-external-charger` [(more info)](https://lore.kernel.org/patchwork/cover/1040426/)
	* Slapped my name all over this bitch! :)

* 11-06-2020:
	* Recompiled latest r5 kernel (4.19.122) from source and applied minmal patches.
	* Improved WiFi support and random disconnects via alternate `rtl8723bs` driver.
	* ~~Enabled hiberation mode _(should hopefully improve power conservation when sleeping)_~~
	* Issues w/resuming from deep sleep _might_ be resolved! _(more testing required)_
	* ~~Updated auto-installer script to create swap parition needed for hibernation.~~
	* Resquashed system.img -> system.sfs and extracting via auto-installer.
	* Updated GRUB loader with prettier theme.
* [11-03-2020](https://androidfilehost.com/?fid=10763459528675579498): 
	* **Added support for Toshiba WT10-A**
	* Fixed 'audio pop' issue with touch events when using headphones
	* Fixed levels for external headset microphone
	* Improved `nano` terminal support
* 11-01-2020:
	* Improved scrolling of device
* 10-31-2020:
	* Fixed headphone switching on boot _(audio will automatically output to headphones if connected on startup)_ 


## Known Bugs and Issues

* Cameras not working _(no kernel support)_.
* Internal microphone not working _(bug/kernel issue with bytcrrt5640)_.
* Bluetooth is partially working but not reliably discovering or connecting to all devices.
* Formatting SD card with Android isn't working _(cannot be used for internal app storage - format with PC for use as portable storage)_.
* Add `AUTO_LOAD=old` boot arg to GRUB (`android.cfg`) if you experience issues with touchscreen and power button not working.
* Note: Device/BIOS doesn't support S3 *(mem_sleep->deep)* and [resume from hibernation](https://www.kernel.org/doc/Documentation/power/interface.txt), but does support suspend-to-ram/s2idle.
	* Using `Auto Install` method is <ins>recommended</ins> to properly enable suspend-to-ram and create the required swap patition!
* There _may_ still some unresolved issues regarding wake from sleep, this may due to a known `CSTATE BUG` with Intel Baytrail/Cherrytrail devices:
	* If still having issues resuming from suspend/sleep, you can try using `intel_idle.max_state=1`, `intel_idle.max_cstate=1` and `i915.enable_execlists=0` boot args in GRUB (`android.cfg`).
	* Using `setprop power.nonboot-cpu-off 0` via `/etc/init.sh` script may also resolve sleep/resume issues.
* For Netflix support, use version [4.16 build 15172](https://netflixhelp.s3.amazonaws.com/netflix-4.16-15172-release.apk)


## Notes

* Special thanks to [@cwhuang](https://github.com/cwhuang) and [@youling257](https://github.com/youling257) for thier support.
* Honerable mention to *Mr. James P. Kelly*, who gave me this tablet he obtained on a five finger discount after a delayed flight. &nbsp; _#RIP_
* See [this topic](https://groups.google.com/forum/#!topic/android-x86/qyCvK176UXA) on the [Android-x86 Google Group](https://groups.google.com/forum/#!forum/android-x86) for more information and further assistance if necessary.
