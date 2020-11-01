# [Android-x86](https://www.android-x86.org) on the [Toshiba Encore 2 WT8-B](https://www.toshiba.ca/productdetailpage.aspx?id=2147499291)

Android-x86_64 [v8.1-r5] running on a Toshiba Encore 2 [WT8-B] tablet.

Based off [Kernel 4.19.50](https://osdn.net/projects/android-x86/scm/git/kernel/tree/kernel-4.19/)


To build from source, follow the instructions at [Android-x86.org](https://www.android-x86.org/source.html)


## Build Instructions

* Patched 4.19.50 kernel with [all patches](./00%20%20Kernel%204.19).
* Edited [kernel config file](./00%20%20Kernel%204.19/android-x86_64_defconfig) (/kernel/arch/x86/configs/android-x86_64_defconfig) and updated the following to enable LPSS backlight control (along with patches):
```
CONFIG_PWM_LPSS=y
CONFIG_PWM_LPSS_PCI=y
CONFIG_PWM_LPSS_PLATFORM=y
```
* Added `AUTO_LOAD=old` boot arg to GRUB (android.cfg) to resolve issues with kernel modules failing to init [sometimes] at boot _(resolves issues with touchscreen and power button)_
* Added `acpi=force reboot=acpi acpi_osi='!Windows 2013' acpi_osi='!Windows 2012' acpi_osi='Linux'` boot args to GRUB -> `android.cfg` to improve sleep resume and restart issues.
* Added `sdhci.debug_quirks=0x10000` boot arg to GRUB -> `android.cfg` to resolve SD card read-only issue.
* Updated `/system/etc/init.sh` startup script and added `WT8-B` to `init_hal_sensors` function to properly initalize accelerometers_(screen rotation and gyroscope)_
* Updated `/system/etc/init.sh` startup script and added `WT8-B` to `do_bootcomplete` function to properly intialize soundcard and enable headphone switching _(input jack detection)_
* Enabled `navtivebridge` support by default and included `houdini` in the pre-built image, and fixed url link issue with `/system/bin/enable_nativebridge` script.
* Updated `build.prop` with optimizations for better GPU and system performance.
* Unsquashed system.img in pre-build image to enable read/write capabilities.
* Removed the dialer, calibration, music, file manager, taskbar and developer tools apps from pre-built image
* Added ES File Exploer to pre-built image
* Added `nano` to pre-built image but note you need to set the TERMINFO environment variable by running `export TERM=linux;export TERMINFO=/etc/terminfo` in the terminel before use.


## Installation Instructions

* [Download pre-built image here](https://mega.nz/file/2HpAXZyJ#ckgEAs4O2mJXZ9VQRornvem-yUvz_dIdvGW9RYBrDpc).
* Use [Rufus](https://rufus.ie/) to create USB drive installer.
* Use OTG adapter to connect USB drive and keyboard to device and press `F12` at bios and select USB drive to boot from.
* Select `Live` to test Android directly from USB, or choose `Auto-Install` to install Android to the internal storage (`mmcblk1`).
* If installing, choose the internal storage device (`mmcblk1`) and click `OK` and allow for installation to finish and then select `reboot`.
* Note you should login to a Google account and update all pre-installed applications to ensure proper functionality after fresh install.
* Enjoy your WT8-B running Android!


## Known Bugs and Issues

* Cameras not working (no kernel support).
* Bluetooth is partially working but not reliably discovering or connecting to all devices.
* Bluetooth may sometimes crash as sleep/resume.
* Formatting SD card with Android isn't working _(cannot be used for internal app storage - format with PC for use as portable storage)_
* There are still some unresolved issues regarding wake from sleep, this may due to a known `CSTATE BUG` with Intel CherryTrail devices.
* Sleep issue seem to occur more frequently when OTG (usb keyboard/drive) is connected.
* If still having issues resuming from suspend/sleep, you can try using `intel_idle.max_state=1`, `intel_idle.max_cstate=1` and `i915.enable_execlists=0` boot args in GRUB (`android.cfg`)
* Wifi [RTL8723BS] is prone to disconnects; If you enable Android Developer options, then disable "Mobile data always active" option under Networking, this might help, but YMMV.
* For Netflix support, use version [4.16 build 15172])(https://netflixhelp.s3.amazonaws.com/netflix-4.16-15172-release.apk) _(do not update after installing)_


## Notes

* The kernel used in this build was created from `8.1r2` source;  I will likely rebuild from the `8.1r5` source in the near future and post an updated pre-build image.
* Special thanks to @cwhuang and @youling257 for thier support.
* See [this topic](https://groups.google.com/forum/#!topic/android-x86/qyCvK176UXA) on the [Android-x86 Google Group](https://groups.google.com/forum/#!forum/android-x86) for more information and for further assistance if necessary.
