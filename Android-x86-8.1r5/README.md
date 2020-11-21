# [Android-x86](https://www.android-x86.org) on the Toshiba Encore 2 [[WT8-B](https://www.toshiba.ca/productdetailpage.aspx?id=2147499291)/[WT10-A](https://support.dynabook.com/support/staticContentDetail?contentId=4012954)]

Android-x86_64 [v8.1r5] running on a Toshiba Encore 2 [WT8-B/WT10-A] tablet.

Please consider [donating](https://paypal.me/djouija) to support this project. Thanks!

----------------------------------------------------------------------------------

## Installation Instructions

* [Download latest pre-built image here](https://androidfilehost.com/?fid=10763459528675586329) &nbsp; | &nbsp; [View all builds](https://www.androidfilehost.com/?w=files&flid=319636)
* Use [Rufus](https://rufus.ie/) to create USB drive installer.
* Ensure device is running the latest BIOS version!
* Use OTG adapter to connect USB drive and keyboard to device and press `F12` at bios logo and choose `<Enter Setup>` then disable `Secure Boot` and select `Save and Exit`.
* Press `F12` again and select the `USB` option to boot from USB device.
* Select `Live` to test Android directly from USB, or choose `Auto-Install` to install Android-x86 to the internal storage (`mmcblk1`).
* If installing, choose the internal storage device (`mmcblk1`) and click `Yes` and allow for installation to finish and then select `reboot`.
* Note you should login to a Google account and update all pre-installed applications to ensure proper functionality after fresh install.
* Enjoy your WT8-B/WT10-A running Android-x86!


## Recent Bugfixes and Improvements

* [2020-11-18](https://androidfilehost.com/?fid=10763459528675586329):
	* **Updated to Kernel 5.8.0** for better Baytrail/Cherrytrail device support.
		* This improves [s2idle issues](https://lkml.org/lkml/2020/3/29/372) introduced in kernel 5.2 or greater.
		* This kernel also provides proper `PWM_LPSS` support _(no patches needed to enable backlight)_
	* Recompiled youling257 `rtl8723bs` driver with k5.8 support.
	* Removed hibernation support from kernel *(unsupported by device)* and updated Auto-Installer to no longer create additional swap partition.
	* Re-added `setprop power.nonboot-cpu-off 0` via `/etc/init.sh` script to help improve resume/suspend issues.
	* Improved `/etc/scripts/sleep.sh` script for better s2idle support.
	* Preliminary testing shows that device is more stable with improved battery life.

* [2020-11-13](https://androidfilehost.com/?fid=10763459528675583620):
	* Improved power consumption / standby mode by enabling proper *suspend-to-ram* functionality!
		* Added `/etc/scripts/sleep.sh` script to trigger suspend-to-ram (s2idle) after 1min of sleeping w/o network activity.
	* Improved boot time by removing `AUTOLOAD=old` boot arg and using [newer autoloading](https://groups.google.com/g/android-x86/c/5WG0tfojGhU) method
		* Updated `0-auto-detect` script in `initrd.img` to modprobe `gpio_keys` and `hid_multitouch` which sometimes failed to autoload properly.
	* Re-applied some kernel patches for improved device support:
		* Applied `drm-i915-Disable-preemption-and-sleeping-while-using-the-punit-sideband` patch [(more info)](https://www.phoronix.com/forums/forum/software/mobile-linux/1096936-intel-baytrail-cherrytrail-systems-can-now-correctly-hibernate-again-under-linux#post1096999)
		* Applied `1-2-extcon-intel-cht-wc-Make-charger-detection-co-existed-with-OTG-host-mode` and `2-2-extcon-intel-cht-wc-Enable-external-charger` [(more info)](https://lore.kernel.org/patchwork/cover/1040426/)

* 2020-11-06:
	* Recompiled latest r5 kernel (4.19.122) from source and applied minimal patches.
	* Improved Wi-Fi support and random disconnects via alternate `rtl8723bs` driver.
	* Updated auto-installer script to create swap partition needed for hibernation.
	* Resquashed system.img -> system.sfs and extracting via auto-installer.
	* Updated GRUB loader with prettier theme.

* [2020-11-03](https://androidfilehost.com/?fid=10763459528675579498): 
	* **Added support for Toshiba WT10-A**
	* Fixed "audio pop" issue with touch events when using headphones via `/etc/scripts/pop-fix.sh` script
	* Fixed headphone switching on boot _(audio will automatically output to headphones if connected on startup)_ 
	* Fixed levels for external headset microphone
	* Improved `nano` terminal support
	* Improved scrolling of device


## Kernel Build Instructions

To build from source, follow the instructions at [Android-x86.org](https://www.android-x86.org/source.html)

* Download latest repo for Android-x86 8.1r5:
	```
	mkdir android-x86-8.1r5
	cd android-x86-8.1r5
	repo init --depth=1 -u http://scm.osdn.net/gitroot/android-x86/manifest -b oreo-x86 -m android-x86-8.1-r5.xml
	repo sync -c -j4 --no-tags --no-clone-bundle
	```
* Use latest [5.8.0 kernel](https://github.com/maurossi/linux)
	```
	rm -rf kernel; mkdir kernel; cd kernel
	git clone -b kernel-5.8_si_next --single-branch --depth=1 https://github.com/maurossi/linux.git .
	```
* Replace `external/kernel-drivers` with 5.8 versions:
	```
	rm -rf ../external/kernel-drivers; mkdir ../external/kernel-drivers; cd ../external/kernel-drivers
	git clone -b kernel-5.8 --single-branch --depth=1 https://github.com/maurossi/kernel-drivers .
	```
* Replace staging driver for `rtl8723bs` with [youling257 driver](https://github.com/youling257/rockchip_wlan):
	* Clone the latest branch of youling257's driver via `git clone https://github.com/youling257/rockchip_wlan.git`
	* Move the `rtl8723bs` folder to `./kernel/driver/net/wireless/realtek/`
	* Add references for this to the `./kernel/driver/net/wireless/realtek/Makefile` and `./kernel/driver/net/wireless/realtek/Kconfig` files:
		* In **Kconfig** add `source "drivers/net/wireless/realtek/rtl8723bs/Kconfig"`
		* In **Makefile** add `obj-$(CONFIG_RTL8723BS) += rtl8723bs/`
	* Modify `./kernel/driver/net/wireless/realtek/rtl8723bs/Makefile` to avoid issues with include paths during source compile:
	* Delete/replace **line 24**:  `EXTRA_CFLAGS += -I$(src)/include`  with the following three new lines:
	    ```
	    EXTRA_CFLAGS += -I/android-x86/kernel/drivers/net/wireless/realtek/rtl8723bs/include
	    EXTRA_CFLAGS += -I/android-x86/kernel/drivers/net/wireless/realtek/rtl8723bs/hal/phydm
	    EXTRA_CFLAGS += -I/android-x86/kernel/drivers/net/wireless/realtek/rtl8723bs/platform
	    ```
	* Modify the values above after `EXTRA_CFLAGS += -I/` with the full path to your Android-x86 source files!
	* Then replace **line 156** *(now line 158 after completing the above edit)* from this: 
	    `export TopDIR ?= $(shell pwd)`
	* To instead be:
	    `export TopDIR ?= /android-x86/kernel/drivers/net/wireless/realtek/rtl8723bs/`
	* And again modify this line above with the full path to your Android-x86 source files!
	* Remove inclusion of the original driver by deleting the references to `rtl8723bs` from `Kconfig` and `Makefile` files in `kernel/driver/staging` folder
	* And now you can build away:
		```
		. build/envsetup.sh; lunch android_x86_64-userdebug
		make kernel -j8
		```

## Additional Build Details

* Replaced staging `rtl8723bs` driver with [youling257's version](https://github.com/youling257/rockchip_wlan) for improved wirless connectivity.
* Added `acpi=force reboot=acpi acpi_osi='!Windows 2013' acpi_osi='!Windows 2012' acpi_osi='Linux'` boot args to GRUB -> `android.cfg` to improve ACPI support.
* Added `acpi_backlight=vendor` boot args to GRUB (`android.cfg`) to resolve black screen when resume from sleep.
* Added `intel_idle.max_cstate=1` boot args to GRUB (`android.cfg`) to improve deep sleep issues with IGFX and Baytrail/Cherrytrail c-state bug.
* Added `sdhci.debug_quirks=0x10000` boot arg to GRUB (`android.cfg`) to resolve SD card read-only issue.
* Added `nospectre_v2` to remove `Spectre v2 vulnerability` nag message from kernel output on boot
* Updated `0-auto-detect` script in `initrd.img` to modprobe `gpio_keys` and `hid_multitouch` which sometimes [fail to autoload](https://groups.google.com/g/android-x86/c/5WG0tfojGhU) properly.
* Updated `/system/etc/init.sh` startup script and added `WT8-B/WT10-A` to `init_hal_sensors` function to properly initialize accelerometers _(screen rotation and gyroscope)_.
* Updated `/system/etc/init.sh` startup script and added `WT8-B/WT10-A` to `do_bootcomplete` function to run custom scripts _(enable headphone switching, suspend-to-ram, audio pop fix, etc)_.
* Enabled `navtivebridge` support by default and included `houdini` in the pre-built image, and fixed url link issue with `/system/bin/enable_nativebridge` script.
* Updated `build.prop` with optimizations for better GPU and system performance.
* Removed `taskbar`, `calibration` and `developer tools` apps from pre-built image.
* Updates Android-x86 GRUB loader with prettier theme.
* Added `ES File Explorer` to pre-built image.
* Added `nano` to pre-built image.


## Known Bugs and Issues

* Cameras do not work _(no kernel support)_
	_Note k5.8 has ressurected the [atomisp driver](https://www.phoronix.com/scan.php?page=news_item&px=Linux-5.8-Media-Updates) and camera support **may** be possible in the near future!_
	_Tested a build w/atomisp enabled but camera sensors are failing to power up, still debugging)_
* Internal microphone not working _(bug/kernel issue with bytcrrt5640, testing quirks to try and resolve)_.
* Bluetooth is partially working but not reliably discovering or connecting to all devices.
* Formatting SD card with Android isn't working _(cannot be used for internal app storage - format with PC for use as portable storage)_.
* Add `AUTO_LOAD=old` boot arg to GRUB (`android.cfg`) if you experience issues with touchscreen and power button not working.
* Baytrail/Cherrytrail devices suffer from a c-state bug with linux, which can cause issues with freezing or resuming from standby, but this latest build is fairly stable.
* If having issues resuming from suspend/sleep, you can try using `intel_idle.max_cstate=1` and `i915.enable_execlists=0` boot args in GRUB (`android.cfg`), YMMV.	
* For Netflix support, use version [4.16 build 15172](https://netflixhelp.s3.amazonaws.com/netflix-4.16-15172-release.apk)


## Notes

* Special thanks to [@cwhuang](https://github.com/cwhuang) and [@youling257](https://github.com/youling257) for their support.
* Honourable mention to *Mr. James P. Kelly*, who gave me this tablet he obtained on a five-finger discount after a delayed flight. &nbsp; _#RIP_
* See [this topic](https://groups.google.com/forum/#!topic/android-x86/qyCvK176UXA) on the [Android-x86 Google Group](https://groups.google.com/forum/#!forum/android-x86) for more information and further assistance if necessary.