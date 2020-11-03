# [Android-x86](https://www.android-x86.org) on the Toshiba Encore 2 [[WT8-B](https://www.toshiba.ca/productdetailpage.aspx?id=2147499291)/[WT10-A](https://support.dynabook.com/support/staticContentDetail?contentId=4012954)]

Android-x86_64 [v8.1-r5] running on a Toshiba Encore 2 [WT8-B/WT10-A] tablet.

Based off [Kernel 4.19.50](https://osdn.net/projects/android-x86/scm/git/kernel/tree/kernel-4.19/)

----------------------------------------------------------------------------------

## Installation Instructions

* [Download pre-built image here](https://mega.nz/file/HbYm1RzK#-sUJgg1lecHGsf0fIx1NacyrgiFS6-SYw1w1zZxmsOw) &nbsp; | &nbsp; [Mirror](https://www.dropbox.com/s/05nt6anen4brypf/Android-x86-8.1r5-WT8-B.iso?dl=0)
* Use [Rufus](https://rufus.ie/) to create USB drive installer.
* Use OTG adapter to connect USB drive and keyboard to device and press `F12` at bios and select USB drive to boot from.
* Select `Live` to test Android directly from USB, or choose `Auto-Install` to install Android to the internal storage (`mmcblk1`).
* If installing, choose the internal storage device (`mmcblk1`) and click `OK` and allow for installation to finish and then select `reboot`.
* Note you should login to a Google account and update all pre-installed applications to ensure proper functionality after fresh install.
* **Enjoy your WT8-B running Android!**


## Build Instructions

To build from source, follow the instructions at [Android-x86.org](https://www.android-x86.org/source.html)

* Patched 4.19.50 kernel with [all patches](./00%20%20Kernel%204.19).
* Edited [kernel config file](./00%20%20Kernel%204.19/android-x86_64_defconfig) [`./kernel/arch/x86/configs/android-x86_64_defconfig`] and updated the following to enable LPSS backlight control:
```
CONFIG_PWM_LPSS=y
CONFIG_PWM_LPSS_PCI=y
CONFIG_PWM_LPSS_PLATFORM=y
```
* Added `AUTO_LOAD=old` boot arg to GRUB (android.cfg) to resolve issues with kernel modules failing to init at boot _(resolves issues with touchscreen and power button)_
* Added `acpi=force reboot=acpi acpi_osi='!Windows 2013' acpi_osi='!Windows 2012' acpi_osi='Linux'` boot args to GRUB (`android.cfg`) to improve sleep resume and restart issues.
* Added `sdhci.debug_quirks=0x10000` boot arg to GRUB (`android.cfg`) to resolve SD card read-only issue.
* Updated `/system/etc/init.sh` startup script and added `WT8-B` to `init_hal_sensors` function to properly initalize accelerometers _(screen rotation and gyroscope)_
* Updated `/system/etc/init.sh` startup script and added `WT8-B` to `do_bootcomplete` function to properly intialize soundcard and enable headphone switching _(input jack detection)_
* Enabled `navtivebridge` support by default and included `houdini` in the pre-built image, and fixed url link issue with `/system/bin/enable_nativebridge` script.
* Updated `build.prop` with optimizations for better GPU and system performance.
* Unsquashed `system.img` in pre-built image to enable read/write capabilities for system partition.
* Removed `taskbar`, `calibration` and `developer tools` apps from pre-built image.
* Added `ES File Exploer` to pre-built image.
* Added `nano` to pre-built image.


## Recent Bugfixes and Improvments

* 11-03-2020: 
	* **Added support for Toshiba WT10-A**
	* Fixed 'audio pop' issue with touch events when using headphones.
	* Fixed levels for HeadsetMic.
	* Improved `nano` terminal support
* 11-01-2020:
	* Improved scrolling of device
* 10-31-2020:
	* Fixed headphone switching on boot _(audio will automatically output to headphones if connected on startup)_ 


## Known Bugs and Issues

* Internal microphone not working _(bug/kernel issue with bytcrrt5640)_.
* Cameras not working _(no kernel support)_.
* Bluetooth is partially working but not reliably discovering or connecting to all devices.
* Formatting SD card with Android isn't working _(cannot be used for internal app storage - format with PC for use as portable storage)_.
* There are still some unresolved issues regarding wake from sleep, this may due to a known `CSTATE BUG` with Intel CherryTrail devices.
* Sleep issue seem to occur more frequently when OTG -> USB storage is connected.
* Enabling hibernation mode in kernel config _[might help](https://groups.google.com/g/android-x86/c/pMiCxvtZa5A/m/4A7J04V0EwAJ)_ r8723bs disconnect issues _(requires building from source)_
* If still having issues resuming from suspend/sleep, you can try using `intel_idle.max_state=1`, `intel_idle.max_cstate=1` and `i915.enable_execlists=0` boot args in GRUB (`android.cfg`).
* Wifi [r8723bs] is prone to disconnects _(enabling developer options and disabling "Mobile data always active" option under networking might help)_.
* For Netflix support, use version [4.16 build 15172](https://netflixhelp.s3.amazonaws.com/netflix-4.16-15172-release.apk) _(do not update after installing)_


## Notes

* The kernel used in this image was originally built from the `8.1r2` source.
* Special thanks to [@cwhuang](https://github.com/cwhuang) and [@youling257](https://github.com/youling257) for thier support.
* See [this topic](https://groups.google.com/forum/#!topic/android-x86/qyCvK176UXA) on the [Android-x86 Google Group](https://groups.google.com/forum/#!forum/android-x86) for more information and further assistance if necessary.
